#!/usr/bin/perl
use 5.008;
use strict;
use warnings;

use ExtUtils::MakeMaker;
use Config;
use Cwd qw(cwd);
use File::Spec;

# $Id: Makefile.PL,v 1.4 2005/04/02 12:23:20 slanning Exp $


our %build_reqs = (
  'perl-ExtUtils-Depends'   => '0.205',
  'perl-ExtUtils-PkgConfig' => '1.07',
  'perl-Glib'               => '1.06',
  'GtkMozEmbed'             => '1.7',    # XXX: mozilla-xpcom instead?
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


my $package = 'Mozilla::DOM';
(my $label = lc($package)) =~ s/:://g;
(my $path = "$package.pm") =~ s{::}{/}g;
(my $pmfile = $path) =~ s{.*/}{};

my %pkgcfg = ExtUtils::PkgConfig->find("mozilla-gtkmozembed >= $build_reqs{'GtkMozEmbed'}");

mkdir 'build', 0777;

our @xs_files = <xs/*.xs>;
our %pod_files = (
	$pmfile => "\$(INST_MAN3DIR)/$package.\$(MAN3EXT)",
	Glib::MakeHelper->do_pod_files (@xs_files),   # XXX: Glib dependency
);

# XXX: what does this do? (how to change for mozilla-xpcom)
ExtUtils::PkgConfig->write_version_macros (
  "build/${label}2perl-version.h",
  "mozilla-gtkmozembed" => "GTK_MOZ_EMBED",
);

# $incdir is for "nsIDOMKeyEvent.h", etc.
my $incdir = `pkg-config --variable=includedir mozilla-gtkmozembed`;
my $libdir = `pkg-config --variable=libdir mozilla-gtkmozembed`;
chomp($incdir, $libdir);

my $mozdom = ExtUtils::Depends->new($package);
# XXX: -I. is hacky but I couldn't figure out why mozilladom2perl.h
# isn't being found (in blib/arch/Mozilla/DOM/Install/).
$mozdom->set_inc($pkgcfg{cflags}, '-I.', '-I./build', "-I$incdir", "-I$incdir/dom");
$mozdom->set_libs($pkgcfg{libs});
$mozdom->add_xs(@xs_files);
$mozdom->add_pm($pmfile => "\$(INST_LIBDIR)/$pmfile");
$mozdom->add_typemaps(map {File::Spec->catfile(cwd(), $_)} ("$label.typemap"));

$mozdom->install("${label}2perl.h",   # "build/${label}2perl-autogen.h",
                 "build/${label}2perl-version.h", 'doctypes');
$mozdom->save_config('build/IFiles.pm');

WriteMakefile(
  NAME          => $package,
  VERSION_FROM  => $pmfile,
  ABSTRACT_FROM => $pmfile,
  XSPROTOARG    => '-noprototypes',
  MAN3PODS      => \%pod_files,
  LD            => "LD_RUN_PATH=$libdir $Config{ld}",    #  '$(CC)'
  CC            => 'g++',
  XSOPT         => '-C++',
  $mozdom->get_makefile_vars,
);

# XXX: this could probably be removed to get rid of Glib dependence;
# however, see NOTICE in `perldoc Glib::MakeHelper`.
sub MY::postamble {
  return Glib::MakeHelper->postamble_clean ()
       . Glib::MakeHelper->postamble_docs_full (
           DEPENDS => $mozdom,
           DOCTYPES => 'doctypes',
           COPYRIGHT_FROM => 'copyright.pod');
}
