package Mozilla::DOM;

# $Id: DOM.pm,v 1.13 2005/04/20 15:50:34 slanning Exp $

use 5.008;
use strict;
use warnings;

require DynaLoader;

our @ISA = qw(DynaLoader);

our $VERSION = '0.13';

sub dl_load_flags { $^O eq 'darwin' ? 0x00 : 0x01 }

__PACKAGE__->bootstrap($VERSION);

# -----------------------------------------------------------------------------

package Mozilla::DOM::Supports;

# every interface inherits from this eventually

# -----------------------------------------------------------------------------

package Mozilla::DOM::AbstractView;

our @ISA = qw(Mozilla::DOM::Supports);

# -----------------------------------------------------------------------------

package Mozilla::DOM::DocumentView;

our @ISA = qw(Mozilla::DOM::Supports);

# -----------------------------------------------------------------------------

package Mozilla::DOM::Event;

our @ISA = qw(Mozilla::DOM::Supports Exporter);

# XXX: how do I make it where a program can export things,
# like with `use Mozilla::DOM::Event qw(:phases);'  ???
# With this, you have to use $event->BUBBLING_PHASE,
# where $event is a MouseEvent or KeyEvent in a signal handler.
# Also can I directly export the class constants from the C++ header?
# Update: I found you can put 'static' before the XSUB return type,
# and this will behave as a class method.

use constant CAPTURING_PHASE => 1;
use constant AT_TARGET       => 2;
use constant BUBBLING_PHASE  => 3;

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

package Mozilla::DOM::DocumentEvent;

our @ISA = qw(Mozilla::DOM::Supports);

# -----------------------------------------------------------------------------

package Mozilla::DOM::MouseEvent;

our @ISA = qw(Mozilla::DOM::UIEvent);

*get_screen_x = \&GetScreenX;
*get_screen_y = \&GetScreenY;
*get_client_x = \&GetClientX;
*get_client_y = \&GetClientY;
*get_ctrl_key = \&GetCtrlKey;
*get_shift_key = \&GetShiftKey;
*get_alt_key = \&GetAltKey;
*get_meta_key = \&GetMetaKey;
*get_button = \&GetButton;
*get_related_target = \&GetRelatedTarget;
*init_mouse_event = \&InitMouseEvent;

# -----------------------------------------------------------------------------

package Mozilla::DOM::KeyEvent;

our @ISA = qw(Mozilla::DOM::UIEvent);

use constant DOM_VK_CANCEL => 3;
use constant DOM_VK_HELP => 6;
use constant DOM_VK_BACK_SPACE => 8;
use constant DOM_VK_TAB => 9;
use constant DOM_VK_CLEAR => 12;
use constant DOM_VK_RETURN => 13;
use constant DOM_VK_ENTER => 14;
use constant DOM_VK_SHIFT => 16;
use constant DOM_VK_CONTROL => 17;
use constant DOM_VK_ALT => 18;
use constant DOM_VK_PAUSE => 19;
use constant DOM_VK_CAPS_LOCK => 20;
use constant DOM_VK_ESCAPE => 27;
use constant DOM_VK_SPACE => 32;
use constant DOM_VK_PAGE_UP => 33;
use constant DOM_VK_PAGE_DOWN => 34;
use constant DOM_VK_END => 35;
use constant DOM_VK_HOME => 36;
use constant DOM_VK_LEFT => 37;
use constant DOM_VK_UP => 38;
use constant DOM_VK_RIGHT => 39;
use constant DOM_VK_DOWN => 40;
use constant DOM_VK_PRINTSCREEN => 44;
use constant DOM_VK_INSERT => 45;
use constant DOM_VK_DELETE => 46;
use constant DOM_VK_0 => 48;
use constant DOM_VK_1 => 49;
use constant DOM_VK_2 => 50;
use constant DOM_VK_3 => 51;
use constant DOM_VK_4 => 52;
use constant DOM_VK_5 => 53;
use constant DOM_VK_6 => 54;
use constant DOM_VK_7 => 55;
use constant DOM_VK_8 => 56;
use constant DOM_VK_9 => 57;
use constant DOM_VK_SEMICOLON => 59;
use constant DOM_VK_EQUALS => 61;
use constant DOM_VK_A => 65;
use constant DOM_VK_B => 66;
use constant DOM_VK_C => 67;
use constant DOM_VK_D => 68;
use constant DOM_VK_E => 69;
use constant DOM_VK_F => 70;
use constant DOM_VK_G => 71;
use constant DOM_VK_H => 72;
use constant DOM_VK_I => 73;
use constant DOM_VK_J => 74;
use constant DOM_VK_K => 75;
use constant DOM_VK_L => 76;
use constant DOM_VK_M => 77;
use constant DOM_VK_N => 78;
use constant DOM_VK_O => 79;
use constant DOM_VK_P => 80;
use constant DOM_VK_Q => 81;
use constant DOM_VK_R => 82;
use constant DOM_VK_S => 83;
use constant DOM_VK_T => 84;
use constant DOM_VK_U => 85;
use constant DOM_VK_V => 86;
use constant DOM_VK_W => 87;
use constant DOM_VK_X => 88;
use constant DOM_VK_Y => 89;
use constant DOM_VK_Z => 90;
use constant DOM_VK_CONTEXT_MENU => 93;
use constant DOM_VK_NUMPAD0 => 96;
use constant DOM_VK_NUMPAD1 => 97;
use constant DOM_VK_NUMPAD2 => 98;
use constant DOM_VK_NUMPAD3 => 99;
use constant DOM_VK_NUMPAD4 => 100;
use constant DOM_VK_NUMPAD5 => 101;
use constant DOM_VK_NUMPAD6 => 102;
use constant DOM_VK_NUMPAD7 => 103;
use constant DOM_VK_NUMPAD8 => 104;
use constant DOM_VK_NUMPAD9 => 105;
use constant DOM_VK_MULTIPLY => 106;
use constant DOM_VK_ADD => 107;
use constant DOM_VK_SEPARATOR => 108;
use constant DOM_VK_SUBTRACT => 109;
use constant DOM_VK_DECIMAL => 110;
use constant DOM_VK_DIVIDE => 111;
use constant DOM_VK_F1 => 112;
use constant DOM_VK_F2 => 113;
use constant DOM_VK_F3 => 114;
use constant DOM_VK_F4 => 115;
use constant DOM_VK_F5 => 116;
use constant DOM_VK_F6 => 117;
use constant DOM_VK_F7 => 118;
use constant DOM_VK_F8 => 119;
use constant DOM_VK_F9 => 120;
use constant DOM_VK_F10 => 121;
use constant DOM_VK_F11 => 122;
use constant DOM_VK_F12 => 123;
use constant DOM_VK_F13 => 124;
use constant DOM_VK_F14 => 125;
use constant DOM_VK_F15 => 126;
use constant DOM_VK_F16 => 127;
use constant DOM_VK_F17 => 128;
use constant DOM_VK_F18 => 129;
use constant DOM_VK_F19 => 130;
use constant DOM_VK_F20 => 131;
use constant DOM_VK_F21 => 132;
use constant DOM_VK_F22 => 133;
use constant DOM_VK_F23 => 134;
use constant DOM_VK_F24 => 135;
use constant DOM_VK_NUM_LOCK => 144;
use constant DOM_VK_SCROLL_LOCK => 145;
use constant DOM_VK_COMMA => 188;
use constant DOM_VK_PERIOD => 190;
use constant DOM_VK_SLASH => 191;
use constant DOM_VK_BACK_QUOTE => 192;
use constant DOM_VK_OPEN_BRACKET => 219;
use constant DOM_VK_BACK_SLASH => 220;
use constant DOM_VK_CLOSE_BRACKET => 221;
use constant DOM_VK_QUOTE => 222;
use constant DOM_VK_META => 224;

*get_char_code = \&GetCharCode;
*get_key_code = \&GetKeyCode;
*get_ctrl_key = \&GetCtrlKey;
*get_shift_key = \&GetShiftKey;
*get_alt_key = \&GetAltKey;
*get_meta_key = \&GetMetaKey;
*init_key_event = \&InitKeyEvent;

# -----------------------------------------------------------------------------

package Mozilla::DOM::MutationEvent;

our @ISA = qw(Mozilla::DOM::Event Exporter);

use constant MODIFICATION => 1;
use constant ADDITION     => 2;
use constant REMOVAL      => 3;

our %EXPORT_TAGS = (
    changes => [qw(
        MODIFICATION
	ADDITION
	REMOVAL
    )],
);
our @EXPORT_OK = map { @$_ } values(%EXPORT_TAGS);
$EXPORT_TAGS{all} = \@EXPORT_OK;

# -----------------------------------------------------------------------------

package Mozilla::DOM::EventTarget;

our @ISA = qw(Mozilla::DOM::Supports);

# -----------------------------------------------------------------------------

package Mozilla::DOM::EventListener;

our @ISA = qw(Mozilla::DOM::Supports);

# -----------------------------------------------------------------------------

package Mozilla::DOM::Window;

our @ISA = qw(Mozilla::DOM::Supports);

# -----------------------------------------------------------------------------

package Mozilla::DOM::Window2;

our @ISA = qw(Mozilla::DOM::Window);

# -----------------------------------------------------------------------------

package Mozilla::DOM::WindowInternal;

our @ISA = qw(Mozilla::DOM::Window2);

# -----------------------------------------------------------------------------

package Mozilla::DOM::WindowCollection;

our @ISA = qw(Mozilla::DOM::Supports);

# -----------------------------------------------------------------------------

package Mozilla::DOM::Node;

our @ISA = qw(Mozilla::DOM::Supports Exporter);

use constant ELEMENT_NODE                => 1;
use constant ATTRIBUTE_NODE              => 2;
use constant TEXT_NODE                   => 3;
use constant CDATA_SECTION_NODE          => 4;
use constant ENTITY_REFERENCE_NODE       => 5;
use constant ENTITY_NODE                 => 6;
use constant PROCESSING_INSTRUCTION_NODE => 7;
use constant COMMENT_NODE                => 8;
use constant DOCUMENT_NODE               => 9;
use constant DOCUMENT_TYPE_NODE          => 10;
use constant DOCUMENT_FRAGMENT_NODE      => 11;
use constant NOTATION_NODE               => 12;

our %EXPORT_TAGS = (
    types => [qw(
        ELEMENT_NODE
        ATTRIBUTE_NODE
        TEXT_NODE
        CDATA_SECTION_NODE
        ENTITY_REFERENCE_NODE
        ENTITY_NODE
        PROCESSING_INSTRUCTION_NODE
        COMMENT_NODE
        DOCUMENT_NODE
        DOCUMENT_TYPE_NODE
        DOCUMENT_FRAGMENT_NODE
        NOTATION_NODE
    )],
);
our @EXPORT_OK = map { @$_ } values(%EXPORT_TAGS);
$EXPORT_TAGS{all} = \@EXPORT_OK;

# -----------------------------------------------------------------------------

package Mozilla::DOM::NodeList;

our @ISA = qw(Mozilla::DOM::Supports);

# -----------------------------------------------------------------------------

package Mozilla::DOM::NamedNodeMap;

our @ISA = qw(Mozilla::DOM::Supports);

# -----------------------------------------------------------------------------

package Mozilla::DOM::Document;

our @ISA = qw(Mozilla::DOM::Node);

# -----------------------------------------------------------------------------

package Mozilla::DOM::Element;

our @ISA = qw(Mozilla::DOM::Node);

# -----------------------------------------------------------------------------

package Mozilla::DOM::EntityReference;

our @ISA = qw(Mozilla::DOM::Node);

# -----------------------------------------------------------------------------

package Mozilla::DOM::Attr;

our @ISA = qw(Mozilla::DOM::Node);

# -----------------------------------------------------------------------------

package Mozilla::DOM::ProcessingInstruction;

our @ISA = qw(Mozilla::DOM::Node);

# -----------------------------------------------------------------------------

package Mozilla::DOM::CDATASection;

our @ISA = qw(Mozilla::DOM::Text);

# -----------------------------------------------------------------------------

package Mozilla::DOM::Comment;

our @ISA = qw(Mozilla::DOM::CharacterData);

# -----------------------------------------------------------------------------

package Mozilla::DOM::CharacterData;

our @ISA = qw(Mozilla::DOM::Node);

# -----------------------------------------------------------------------------

package Mozilla::DOM::Text;

our @ISA = qw(Mozilla::DOM::CharacterData);

# -----------------------------------------------------------------------------

package Mozilla::DOM::DocumentFragment;

our @ISA = qw(Mozilla::DOM::Node);

# -----------------------------------------------------------------------------

package Mozilla::DOM::DocumentType;

our @ISA = qw(Mozilla::DOM::Node);

# -----------------------------------------------------------------------------

package Mozilla::DOM::DOMImplementation;

our @ISA = qw(Mozilla::DOM::Supports);

# -----------------------------------------------------------------------------

package Mozilla::DOM::DOMException;

our @ISA = qw(Mozilla::DOM::Supports);

# -----------------------------------------------------------------------------

package Mozilla::DOM::Selection;

our @ISA = qw(Mozilla::DOM::Supports);

# -----------------------------------------------------------------------------

package Mozilla::DOM::Range;

our @ISA = qw(Mozilla::DOM::Supports);

use constant START_TO_START          => 0;
use constant START_TO_END            => 1;
use constant END_TO_END              => 2;
use constant END_TO_START            => 3;

# -----------------------------------------------------------------------------

package Mozilla::DOM::History;

our @ISA = qw(Mozilla::DOM::Supports);

# -----------------------------------------------------------------------------

package Mozilla::DOM::Location;

our @ISA = qw(Mozilla::DOM::Supports);

# -----------------------------------------------------------------------------

package Mozilla::DOM::Navigator;

our @ISA = qw(Mozilla::DOM::Supports);

# -----------------------------------------------------------------------------

package Mozilla::DOM::Screen;

our @ISA = qw(Mozilla::DOM::Supports);

# -----------------------------------------------------------------------------

package Mozilla::DOM::WebBrowser;

our @ISA = qw(Mozilla::DOM::Supports);

*get_content_domwindow = \&GetContentDOMWindow;

# -----------------------------------------------------------------------------

package Mozilla::DOM::HTMLAreaElement;

our @ISA = qw(Mozilla::DOM::HTMLElement);

# -----------------------------------------------------------------------------

package Mozilla::DOM::HTMLDirectoryElement;

our @ISA = qw(Mozilla::DOM::HTMLElement);

# -----------------------------------------------------------------------------

package Mozilla::DOM::HTMLAnchorElement;

our @ISA = qw(Mozilla::DOM::HTMLElement);

# -----------------------------------------------------------------------------

package Mozilla::DOM::HTMLAppletElement;

our @ISA = qw(Mozilla::DOM::HTMLElement);

# -----------------------------------------------------------------------------

package Mozilla::DOM::HTMLBRElement;

our @ISA = qw(Mozilla::DOM::HTMLElement);

# -----------------------------------------------------------------------------

package Mozilla::DOM::HTMLBaseElement;

our @ISA = qw(Mozilla::DOM::HTMLElement);

# -----------------------------------------------------------------------------

package Mozilla::DOM::HTMLBaseFontElement;

our @ISA = qw(Mozilla::DOM::HTMLElement);

# -----------------------------------------------------------------------------

package Mozilla::DOM::HTMLBodyElement;

our @ISA = qw(Mozilla::DOM::HTMLElement);

# -----------------------------------------------------------------------------

package Mozilla::DOM::HTMLButtonElement;

our @ISA = qw(Mozilla::DOM::HTMLElement);

# -----------------------------------------------------------------------------

package Mozilla::DOM::HTMLCollection;

our @ISA = qw(Mozilla::DOM::Supports);

# -----------------------------------------------------------------------------

package Mozilla::DOM::HTMLDListElement;

our @ISA = qw(Mozilla::DOM::HTMLElement);

# -----------------------------------------------------------------------------

package Mozilla::DOM::HTMLDivElement;

our @ISA = qw(Mozilla::DOM::HTMLElement);

# -----------------------------------------------------------------------------

package Mozilla::DOM::HTMLElement;

our @ISA = qw(Mozilla::DOM::Element);

# -----------------------------------------------------------------------------

package Mozilla::DOM::HTMLEmbedElement;

our @ISA = qw(Mozilla::DOM::HTMLElement);

# -----------------------------------------------------------------------------

package Mozilla::DOM::HTMLFieldSetElement;

our @ISA = qw(Mozilla::DOM::HTMLElement);

# -----------------------------------------------------------------------------

package Mozilla::DOM::HTMLFontElement;

our @ISA = qw(Mozilla::DOM::HTMLElement);

# -----------------------------------------------------------------------------

package Mozilla::DOM::HTMLFrameElement;

our @ISA = qw(Mozilla::DOM::HTMLElement);

# -----------------------------------------------------------------------------

package Mozilla::DOM::HTMLFormElement;

our @ISA = qw(Mozilla::DOM::HTMLElement);

# -----------------------------------------------------------------------------

package Mozilla::DOM::HTMLFrameSetElement;

our @ISA = qw(Mozilla::DOM::HTMLElement);

# -----------------------------------------------------------------------------

package Mozilla::DOM::HTMLHRElement;

our @ISA = qw(Mozilla::DOM::HTMLElement);

# -----------------------------------------------------------------------------

package Mozilla::DOM::HTMLHeadElement;

our @ISA = qw(Mozilla::DOM::HTMLElement);

# -----------------------------------------------------------------------------

package Mozilla::DOM::HTMLHeadingElement;

our @ISA = qw(Mozilla::DOM::HTMLElement);

# -----------------------------------------------------------------------------

package Mozilla::DOM::HTMLHtmlElement;

our @ISA = qw(Mozilla::DOM::HTMLElement);

# -----------------------------------------------------------------------------

package Mozilla::DOM::HTMLIFrameElement;

our @ISA = qw(Mozilla::DOM::HTMLElement);

# -----------------------------------------------------------------------------

package Mozilla::DOM::HTMLImageElement;

our @ISA = qw(Mozilla::DOM::HTMLElement);

# -----------------------------------------------------------------------------

package Mozilla::DOM::HTMLInputElement;

our @ISA = qw(Mozilla::DOM::HTMLElement);

# -----------------------------------------------------------------------------

package Mozilla::DOM::HTMLIsIndexElement;

our @ISA = qw(Mozilla::DOM::HTMLElement);

# -----------------------------------------------------------------------------

package Mozilla::DOM::HTMLLIElement;

our @ISA = qw(Mozilla::DOM::HTMLElement);

# -----------------------------------------------------------------------------

package Mozilla::DOM::HTMLLabelElement;

our @ISA = qw(Mozilla::DOM::HTMLElement);

# -----------------------------------------------------------------------------

package Mozilla::DOM::HTMLLegendElement;

our @ISA = qw(Mozilla::DOM::HTMLElement);

# -----------------------------------------------------------------------------

package Mozilla::DOM::HTMLLinkElement;

our @ISA = qw(Mozilla::DOM::HTMLElement);

# -----------------------------------------------------------------------------

package Mozilla::DOM::HTMLMapElement;

our @ISA = qw(Mozilla::DOM::HTMLElement);

# -----------------------------------------------------------------------------

package Mozilla::DOM::HTMLMenuElement;

our @ISA = qw(Mozilla::DOM::HTMLElement);

# -----------------------------------------------------------------------------

package Mozilla::DOM::HTMLMetaElement;

our @ISA = qw(Mozilla::DOM::HTMLElement);

# -----------------------------------------------------------------------------

package Mozilla::DOM::HTMLModElement;

our @ISA = qw(Mozilla::DOM::HTMLElement);

# -----------------------------------------------------------------------------

package Mozilla::DOM::HTMLOListElement;

our @ISA = qw(Mozilla::DOM::HTMLElement);

# -----------------------------------------------------------------------------

package Mozilla::DOM::HTMLObjectElement;

our @ISA = qw(Mozilla::DOM::HTMLElement);

# -----------------------------------------------------------------------------

package Mozilla::DOM::HTMLOptGroupElement;

our @ISA = qw(Mozilla::DOM::HTMLElement);

# -----------------------------------------------------------------------------

package Mozilla::DOM::HTMLOptionElement;

our @ISA = qw(Mozilla::DOM::HTMLElement);

# -----------------------------------------------------------------------------

package Mozilla::DOM::HTMLOptionsCollection;

our @ISA = qw(Mozilla::DOM::Supports);

# -----------------------------------------------------------------------------

package Mozilla::DOM::HTMLParagraphElement;

our @ISA = qw(Mozilla::DOM::HTMLElement);

# -----------------------------------------------------------------------------

package Mozilla::DOM::HTMLParamElement;

our @ISA = qw(Mozilla::DOM::HTMLElement);

# -----------------------------------------------------------------------------

package Mozilla::DOM::HTMLPreElement;

our @ISA = qw(Mozilla::DOM::HTMLElement);

# -----------------------------------------------------------------------------

package Mozilla::DOM::HTMLQuoteElement;

our @ISA = qw(Mozilla::DOM::HTMLElement);

# -----------------------------------------------------------------------------

package Mozilla::DOM::HTMLScriptElement;

our @ISA = qw(Mozilla::DOM::HTMLElement);

# -----------------------------------------------------------------------------

package Mozilla::DOM::HTMLSelectElement;

our @ISA = qw(Mozilla::DOM::HTMLElement);

# -----------------------------------------------------------------------------

package Mozilla::DOM::HTMLStyleElement;

our @ISA = qw(Mozilla::DOM::HTMLElement);

# -----------------------------------------------------------------------------

package Mozilla::DOM::HTMLTableCaptionElement;

our @ISA = qw(Mozilla::DOM::HTMLElement);

# -----------------------------------------------------------------------------

package Mozilla::DOM::HTMLTableCellElement;

our @ISA = qw(Mozilla::DOM::HTMLElement);

# -----------------------------------------------------------------------------

package Mozilla::DOM::HTMLTableColElement;

our @ISA = qw(Mozilla::DOM::HTMLElement);

# -----------------------------------------------------------------------------

package Mozilla::DOM::HTMLTableElement;

our @ISA = qw(Mozilla::DOM::HTMLElement);

# -----------------------------------------------------------------------------

package Mozilla::DOM::HTMLTableRowElement;

our @ISA = qw(Mozilla::DOM::HTMLElement);

# -----------------------------------------------------------------------------

package Mozilla::DOM::HTMLTableSectionElement;

our @ISA = qw(Mozilla::DOM::HTMLElement);

# -----------------------------------------------------------------------------

package Mozilla::DOM::HTMLTextAreaElement;

our @ISA = qw(Mozilla::DOM::HTMLElement);

# -----------------------------------------------------------------------------

package Mozilla::DOM::HTMLTitleElement;

our @ISA = qw(Mozilla::DOM::HTMLElement);

# -----------------------------------------------------------------------------

package Mozilla::DOM::HTMLUListElement;

our @ISA = qw(Mozilla::DOM::HTMLElement);

# -----------------------------------------------------------------------------

package Mozilla::DOM;

1;

__END__

=head1 NAME

Mozilla::DOM - Perl wrapping of the Mozilla/Gecko DOM

=head1 SYNOPSIS

  # In Makefile.PL (see Gtk2::MozEmbed for an example)
  my $embed = ExtUtils::Depends->new('Mozilla::DOM');
  $embed->set_inc(...);
  ...

  # You also need to compile with C++
  WriteMakefile(
      ...
      CC => 'c++',
      XSOPT => '-C++',
      $embed->get_makefile_vars,
  );

=head1 ABSTRACT

XXX: update this

The current purpose of this module is to wrap DOM event methods
to be used with the L<Gtk2::MozEmbed|Gtk2::MozEmbed> module, which
allows you to use GtkMozEmbed from Perl. GtkMozEmbed in turn
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

=item F<E<sol>usrE<sol>includeE<sol>mozillaE<sol>*.h>

The header files for Mozilla's interfaces. Generally, if a module
is called Mozilla::DOM::Something, the corresponding header file
is named 'nsIDOMSomething.h'. Three exceptions are nsISupports,
nsIWebBrowser, and nsISelection, where the interface name doesn't
include "DOM".

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

with a lot of help from Torsten Schoenfeld E<lt>kaffeetisch at gmx dot deE<gt>.

=head1 COPYRIGHT

Copyright (C) 2005 by Scott Lanning

=cut
