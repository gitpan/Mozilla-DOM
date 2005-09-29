#!/usr/bin/perl
use 5.008;
use strict;
use warnings;

use ExtUtils::MakeMaker;
use Config;
use Cwd qw(cwd);
use File::Spec;

# $Id: Makefile.PL,v 1.13 2005/09/27 14:26:33 slanning Exp $

my $mozpkg = 'mozilla-xpcom';
my $ffpkg  = 'firefox-xpcom';
my $mffpkg = 'mozilla-firefox-xpcom';

our %build_reqs = (
    'perl-ExtUtils-Depends'   => '0.205',
    'perl-ExtUtils-PkgConfig' => '1.07',
    $mozpkg                   => '1.7',
    $ffpkg                    => '1.0',
    $mffpkg                   => '1.0',
);

unless (eval "use ExtUtils::Depends '$build_reqs{'perl-ExtUtils-Depends'}';"
           . "use ExtUtils::PkgConfig '$build_reqs{'perl-ExtUtils-PkgConfig'}';"
           . "1") {
    warn "$@\n";
    WriteMakefile(
        PREREQ_FATAL => 1,
        PREREQ_PM    => {
            'ExtUtils::Depends'   => $build_reqs{'perl-ExtUtils-Depends'},
            'ExtUtils::PkgConfig' => $build_reqs{'perl-ExtUtils-PkgConfig'},
        },
    );
    exit 1; # not reached
}

my %pkgcfg = ExtUtils::PkgConfig->find("$mozpkg >= " . $build_reqs{$mozpkg},
                                       "$ffpkg >= " . $build_reqs{$ffpkg},
                                       "$mffpkg >= " . $build_reqs{$mffpkg});

my ($pkg) = $pkgcfg{pkg} =~ /^(\S+-xpcom)/;

mkdir 'build', 0777;

ExtUtils::PkgConfig->write_version_macros (
    "build/mozilladom2perl-version.h",
    $pkg => 'MOZ_DOM',
);

# $incdir is for "nsIDOMKeyEvent.h", etc.
my $incdir = `pkg-config --variable=includedir $pkg`;
my $libdir = `pkg-config --variable=libdir $pkg`;
chomp($incdir, $libdir);

my $mozdom = ExtUtils::Depends->new('Mozilla::DOM');
# -I/usr/include/mozilla -I/usr/include/mozilla/xpcom
# -I/usr/include/mozilla/string -I/usr/include/mozilla/nspr
$mozdom->set_inc($pkgcfg{cflags}, '-I.', '-I./build',
                 "-I$incdir", "-I$incdir/dom", "-I$incdir/webbrwsr",
                 "-I$incdir/content", "-I$incdir/docshell");
# -L/usr/lib/mozilla -lxpcom -lplds4 -lplc4 -lnspr4 -ldl -lc -lpthread
$mozdom->set_libs($pkgcfg{libs});

$mozdom->add_xs(<xs/*.xs>);
# XXX: should move DOM.pm into lib/Mozilla/ then use PMLIBDIRS in WriteMakefile instead
$mozdom->add_pm(
    'DOM.pm' => '$(INST_LIBDIR)/DOM.pm',
    map {   # .pod and .pm files in lib/Mozilla/DOM/
        my $inst = $_;
        $inst =~ s{lib/Mozilla}{};
        $_ => "\$(INST_LIBDIR)$inst";
    } glob('lib/Mozilla/DOM/*.{pod,pm}'),
);
$mozdom->add_typemaps(map {File::Spec->catfile(cwd(), $_)} ('mozilladom.typemap'));

$mozdom->install('mozilladom2perl.h',
                 # 'build/mozilladom2perl-autogen.h',
                 'build/mozilladom2perl-version.h',
                 'doctypes');
$mozdom->save_config('build/IFiles.pm');

WriteMakefile(
    NAME          => 'Mozilla::DOM',
    VERSION_FROM  => 'DOM.pm',
    ABSTRACT_FROM => 'DOM.pm',
    XSPROTOARG    => '-noprototypes',
    MAN3PODS      => {},    # don't create man pages
    LD            => "LD_RUN_PATH=$libdir $Config{ld}",
    CC            => 'g++',
    XSOPT         => '-C++',
    dist => {
        # don't index examples directory on CPAN
        PREOP => 'echo -e "no_index:\n  dir:\n  - examples" >> ${DISTVNAME}/META.yml',
    },
    $mozdom->get_makefile_vars,
);


package MY;

# Copied from Glib::MakeHelper
# (see NOTICE in `perldoc Glib::MakeHelper` on const_cccmd)
sub const_cccmd {
        my $inherited = shift->SUPER::const_cccmd(@_);
        return '' unless $inherited;
        use Config;
        $inherited .= ($Config{cc} eq 'cl') ? ' /Fo$@' : ' -o $@';
        return $inherited;
}

# Copied from Glib::MakeMaker `postamble_clean'
sub postamble {
'
realclean ::
	-$(RM_RF) build blib_done perl-$(DISTNAME).spec
'
}
