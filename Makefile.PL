#!/usr/bin/perl
use 5.008;
use strict;
use warnings;

use ExtUtils::MakeMaker;
use Config;
use Cwd qw(cwd);
use File::Spec;

# $Id: Makefile.PL,v 1.9 2005/08/28 19:29:55 slanning Exp $

my $mozpkg = 'mozilla-xpcom';

our %build_reqs = (
    'perl-ExtUtils-Depends'   => '0.205',
    'perl-ExtUtils-PkgConfig' => '1.07',
    'perl-Glib'               => '1.06',
    $mozpkg                   => '1.7',
);

unless (eval "use ExtUtils::Depends '$build_reqs{'perl-ExtUtils-Depends'}';"
           . "use ExtUtils::PkgConfig '$build_reqs{'perl-ExtUtils-PkgConfig'}';"
           . "use Glib '$build_reqs{'perl-Glib'}';"
           . "use Glib::MakeHelper;"
           . "1") {
    warn "$@\n";
    WriteMakefile(
        PREREQ_FATAL => 1,
        PREREQ_PM    => {
            'Glib'                => $build_reqs{'perl-Glib'},
            'ExtUtils::Depends'   => $build_reqs{'perl-ExtUtils-Depends'},
            'ExtUtils::PkgConfig' => $build_reqs{'perl-ExtUtils-PkgConfig'},
        },
    );
    exit 1; # not reached
}

my %pkgcfg = ExtUtils::PkgConfig->find("$mozpkg >= " . $build_reqs{$mozpkg});


my %pkgs = (                                                         # name
    main  => { name => 'Mozilla::DOM' },
    # XXX: if I can figure out how to split DOM.xs apart..
#    event => { name => 'Mozilla::DOM::Event' },
#    browser => { name => 'Mozilla::DOM::WebBrowser' },
);
foreach my $pkg (keys %pkgs) {
    ($pkgs{$pkg}{label}  = lc($pkgs{$pkg}{name})) =~ s{::}{}g;       # label
    ($pkgs{$pkg}{path}   = $pkgs{$pkg}{name} . '.pm') =~ s{::}{/}g;  # path
    $pkgs{$pkg}{path} =~ s{.*?/}{};
    ($pkgs{$pkg}{pmfile} = $pkgs{$pkg}{path}) =~ s{.*/}{};           # pmfile
}
my $mainpkg = $pkgs{main};


mkdir 'build', 0777;

our @xs_files = <xs/*.xs>;
our %pod_files = (
    (map {$pkgs{$_}{pmfile} => "\$(INST_MAN3DIR)/$pkgs{$_}{name}.\$(MAN3EXT)"}
       keys %pkgs),
    Glib::MakeHelper->do_pod_files (@xs_files),   # XXX: Glib dependency
);

ExtUtils::PkgConfig->write_version_macros (
    "build/$mainpkg->{label}2perl-version.h",
    $mozpkg => 'MOZ_DOM',
);

# $incdir is for "nsIDOMKeyEvent.h", etc.
my $incdir = `pkg-config --variable=includedir $mozpkg`;
my $libdir = `pkg-config --variable=libdir $mozpkg`;
chomp($incdir, $libdir);

my $mozdom = ExtUtils::Depends->new($mainpkg->{name});
$mozdom->set_inc($pkgcfg{cflags}, '-I.', '-I./build',
                 "-I$incdir", "-I$incdir/dom", "-I$incdir/webbrwsr",
                 "-I$incdir/content", "-I$incdir/docshell");
$mozdom->set_libs($pkgcfg{libs});
$mozdom->add_xs(@xs_files);
$mozdom->add_pm(map {$pkgs{$_}{pmfile} => "\$(INST_LIBDIR)/$pkgs{$_}{path}"}
                  keys %pkgs);
$mozdom->add_typemaps(map {File::Spec->catfile(cwd(), $_)}
                        ($mainpkg->{label} . '.typemap'));

$mozdom->install("$mainpkg->{label}2perl.h",
                 # "build/$mainpkg->{label}2perl-autogen.h",
                 "build/$mainpkg->{label}2perl-version.h",
                 'doctypes');
$mozdom->save_config('build/IFiles.pm');

WriteMakefile(
    NAME          => $mainpkg->{name},
    VERSION_FROM  => $mainpkg->{pmfile},
    ABSTRACT_FROM => $mainpkg->{pmfile},
    XSPROTOARG    => '-noprototypes',
    MAN3PODS      => \%pod_files,
    LD            => "LD_RUN_PATH=$libdir $Config{ld}",    #  '$(CC)'
    CC            => 'g++',
    XSOPT         => '-C++',
    $mozdom->get_makefile_vars,
);

# XXX: this could probably be removed to get rid of Glib dependence;
# however, see NOTICE in `perldoc Glib::MakeHelper` on const_cccmd.
sub MY::postamble {
    return Glib::MakeHelper->postamble_clean ()
         . Glib::MakeHelper->postamble_docs_full (
               DEPENDS => $mozdom,
               DOCTYPES => 'doctypes',
               COPYRIGHT_FROM => 'copyright.pod'
           );
}
