package Mozilla::DOM;

# $Id: DOM.pm,v 1.3 2005/04/02 12:23:20 slanning Exp $

use 5.008;
use strict;
use warnings;

require DynaLoader;

our @ISA = qw(DynaLoader);

our $VERSION = '0.01';

sub dl_load_flags { $^O eq 'darwin' ? 0x00 : 0x01 }

__PACKAGE__->bootstrap($VERSION);

# -----------------------------------------------------------------------------

package Mozilla::DOM::Event;

# XXX: how do I make it where a program can export things,
# like with `use Mozilla::DOM::Event qw(:phases);'  ???
# With this, you have to use $event->BUBBLING_PHASE,
# where $event is a MouseEvent or KeyEvent in a signal handler.
# Also can I directly export the class constants from the C++ header?

use constant CAPTURING_PHASE => 1;
use constant AT_TARGET       => 2;
use constant BUBBLING_PHASE  => 3;

our @ISA = qw(Exporter);
our %EXPORT_TAGS = (
    phases => [qw(
        CAPTURING_PHASE
	AT_TARGET
	BUBBLING_PHASE
    )],
);
our @EXPORT_OK = map { @$_ } values(%EXPORT_TAGS);
$EXPORT_TAGS{all} = \@EXPORT_OK;

# -----------------------------------------------------------------------------

package Mozilla::DOM::UIEvent;

our @ISA = qw(Mozilla::DOM::Event);

# -----------------------------------------------------------------------------

package Mozilla::DOM::KeyEvent;

our @ISA = qw(Mozilla::DOM::UIEvent);

# -----------------------------------------------------------------------------

package Mozilla::DOM::MouseEvent;

our @ISA = qw(Mozilla::DOM::UIEvent);

# -----------------------------------------------------------------------------

package Mozilla::DOM;

1;

__END__

=head1 NAME

Mozilla::DOM - Perl interface to the Mozilla DOM interface

=head1 SYNOPSIS

  use Mozilla::DOM;  # XXX: ??

=head1 ABSTRACT

The current purpose of this module is to wrap DOM event methods
to be used with the L<Gtk2::MozEmbed|Gtk2::MozEmbed> module, which
allows you to use the GtkMozEmbed from Perl. GtkMozEmbed in turn
allows you to use Mozilla's Gecko as a Gtk widget. Gtk2::MozEmbed
has signal marshallers which rely on this module to map between
the nsIDOM* interfaces and Gtk-Perl. There's nothing in this module
(as far as I know) that is specific to GtkMozEmbed, however, so other
Perl modules based on Gecko could use this (if they existed).

Future plans include wrapping more DOM interfaces such as nsIWebBrowser
(requiring support in Gtk2::MozEmbed for gtk_moz_embed_get_nsIWebBrowser),
nsIDOMWindow, and nsIDOMDocument. With this, you'd get access to the DOM,
with methods such as GetElementsByTagName. Adding more support for DOM
events would allow finding out more about an event and its targets,
initiating events, and adding listeners. The idea is to then be able to
script a Gecko-based browser from Perl. However, for the moment the
functionality provided by this module probably isn't very useful.

=head1 SEE ALSO

=over 4

=item L<Mozilla::DOM::index|Mozilla::DOM::index>

=item L<Gtk2::MozEmbed|Gtk2::MozEmbed>

=item DOM Level 3 specification

In particular the sections on Key and Mouse events.

=item F<E<sol>usrE<sol>includeE<sol>mozillaE<sol>gtkembedmozE<sol>gtkmozembed.h>

=item F<E<sol>usrE<sol>includeE<sol>mozillaE<sol>gtkembedmozE<sol>gtkmozembed_internal.h>

The header files for GtkMozEmbed.

=item TestGtkEmbed.cpp

A C++ example of using GtkMozEmbed to make a minimal browser.

=item F<E<sol>usrE<sol>includeE<sol>mozillaE<sol>nsIDOMKeyEvent.h>

=item F<E<sol>usrE<sol>includeE<sol>mozillaE<sol>nsIDOMMouseEvent.h>

The header files for Mozilla's KeyEvent and MouseEvent interfaces.

=item L<http:E<sol>E<sol>mozilla.orgE<sol>htmlE<sol>projectsE<sol>embeddingE<sol>PublicAPIs.html>

Description of the Mozilla Public API

=item L<http:E<sol>E<sol>mozilla.orgE<sol>htmlE<sol>projectsE<sol>embeddingE<sol>faq.html>

Gecko Embedding FAQ

=item L<http:E<sol>E<sol>mozilla.orgE<sol>htmlE<sol>unixE<sol>gtk-embedding.html>

GtkMozEmbed: Gtk Mozilla Embedding Widget

=back

=head1 AUTHORS

=over

=item Scott Lanning E<lt>lannings at who dot intE<gt>

=back

with much help from Torsten Schoenfeld E<lt>kaffeetisch at gmx dot deE<gt>.

=head1 COPYRIGHT

Copyright (C) 2005 by Scott Lanning

=cut
