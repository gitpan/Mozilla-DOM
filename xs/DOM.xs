/*
 * Copyright (C) 2005 by Scott Lanning
 * 
 * This library is free software; you can redistribute it and/or
 * modify it under the terms of the GNU Lesser General Public
 * License as published by the Free Software Foundation; either
 * version 2.1 of the License, or (at your option) any later version.
 * 
 * This library is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 * Lesser General Public License for more details.
 * 
 * You should have received a copy of the GNU Lesser General Public
 * License along with this library; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 *
 * $CVSHeader: Mozilla-DOM/xs/DOM.xs,v 1.2 2005/04/02 12:23:43 slanning Exp $
 */

#ifdef __cplusplus
extern "C" {
#endif
#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"
#ifdef __cplusplus
}
#endif

#include "mozilladom2perl.h"

/* ------------------------------------------------------------------------- */

/* conversion functions to and from Perl and C */

MOZDOM_DEF_DOM_TYPEMAPPERS(AbstractView)
MOZDOM_DEF_DOM_TYPEMAPPERS(DocumentView)
MOZDOM_DEF_DOM_TYPEMAPPERS(Event)
MOZDOM_DEF_DOM_TYPEMAPPERS(UIEvent)
MOZDOM_DEF_DOM_TYPEMAPPERS(KeyEvent)
MOZDOM_DEF_DOM_TYPEMAPPERS(MouseEvent)
MOZDOM_DEF_DOM_TYPEMAPPERS(EventTarget)
MOZDOM_DEF_DOM_TYPEMAPPERS(EventListener)

/* ------------------------------------------------------------------------- */

MODULE = Mozilla::DOM	PACKAGE = Mozilla::DOM::AbstractView	PREFIX = moz_dom_

=for object Mozilla::DOM::AbstractView

Mozilla::DOM::UIEvent is a wrapper around an instance of Mozilla's
nsIDOMAbstractView interface.

Differences from the Mozilla interface: method names in StudlyCaps have been
changed to underscore_style, and instead of passing values by pointer
the value is returned.

=cut

=for apidoc Mozilla::DOM::AbstractView::get_document

=signature $docview = $view->get_document

Gets a Mozilla::DOM::DocumentView (not sure if this is necessary/useful).

I don't know what a "view" is.

=cut

## GetDocument(nsIDOMDocumentView * *aDocument)
nsIDOMDocumentView *
moz_dom_get_document (view)
	nsIDOMAbstractView *view;
    PREINIT:
	nsIDOMDocumentView *docview;
    CODE:
	view->GetDocument(&docview);
	RETVAL = docview;
    OUTPUT:
	RETVAL

# -----------------------------------------------------------------------------

MODULE = Mozilla::DOM	PACKAGE = Mozilla::DOM::DocumentView	PREFIX = moz_dom_

=for object Mozilla::DOM::DocumentView

Mozilla::DOM::DocumentView is a wrapper around an instance of Mozilla's
nsIDOMDocumentView interface.

Differences from the Mozilla interface: method names in StudlyCaps have been
changed to underscore_style, and instead of passing values by pointer
the value is returned.

=cut

=for apidoc Mozilla::DOM::DocumentView::get_default_view

=signature $view = $docview->get_default_view

Gets a Mozilla::DOM::AbstractView (not sure if this is necessary/useful).

I don't know what a "view" is.

=cut

## GetDefaultView(nsIDOMAbstractView * *aDefaultView);
nsIDOMAbstractView *
moz_dom_get_default_view (docview)
	nsIDOMDocumentView *docview;
    PREINIT:
	nsIDOMAbstractView *view;
    CODE:
	docview->GetDefaultView(&view);
	RETVAL = view;
    OUTPUT:
	RETVAL

# -----------------------------------------------------------------------------

MODULE = Mozilla::DOM	PACKAGE = Mozilla::DOM::Event	PREFIX = moz_dom_

=for object Mozilla::DOM::Event

Mozilla::DOM::Event is a wrapper around an instance of Mozilla's
nsIDOMEvent interface, from which L<Mozilla::DOM::UIEvent|Mozilla::DOM::UIEvent>
inherits.

Differences from the Mozilla interface: method names in StudlyCaps have been
changed to underscore_style, and instead of passing values by pointer
the value is returned.

The GetType, GetTimeStamp, and InitEvent methods are not wrapped yet.

The constants CAPTURING_PHASE, AT_TARGET, and BUBBLING_PHASE are available
for comparing with L</get_event_phase>. Currently these are accessed through
the (mouse or key) event object, like $event->AT_TARGET, but maybe they
should be exportable class constants (if I can figure out how to do that).

=cut

## http://www.mozilla.org/projects/xpcom/book/cxc/html/tools.html#1010737
## http://www.mozilla.org/projects/xpcom/string-guide.html ?

#wchar_t *
#moz_dom_get_type (event)
#	nsIDOMEvent *event;
#    PREINIT:
#	nsEmbedString data;      /* nsEmbedString implements nsAString */
#	const PRUnichar *type;
#    CODE:
#	event->GetType(data);    /* &data ? */
#	type = data.get();
#	/* XXX: somehow convert PRUnichar * to something Perl knows */
#	RETVAL = type;
#    OUTPUT:
#	RETVAL

=for apidoc Mozilla::DOM::Event::get_target

=signature $target = $event->get_target

Get the L<EventTarget|EventTarget> to which the Event was originally
dispatched.

=cut

=for apidoc Mozilla::DOM::Event::get_current_target

=signature $target = $event->get_current_target

Get the L<EventTarget|EventTarget> whose L<EventListeners|EventListeners>
are currently being processed. This is particularly useful during capturing
and bubbling.

=cut

## GetTarget(nsIDOMEventTarget * *aTarget), etc.
nsIDOMEventTarget *
moz_dom_get_target (event)
	nsIDOMEvent *event
    ALIAS:
	Mozilla::DOM::Event::get_current_target = 1
    PREINIT:
	nsIDOMEventTarget *target;
    CODE:
	switch (ix) {
		case 0: event->GetTarget(&target); break;
		case 1: event->GetCurrentTarget(&target); break;
		default: XSRETURN_UNDEF;
	}
	RETVAL = target;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::Event::get_event_phase

=signature $phase = $event->get_event_phase

Get which phase of event flow is currently being evaluated.

=cut

## GetEventPhase(PRUint16 *aEventPhase)
PRUint16
moz_dom_get_event_phase (event)
	nsIDOMEvent *event;
    PREINIT:
	PRUint16 phase;
    CODE:
	event->GetEventPhase(&phase);
	RETVAL = phase;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::Event::get_bubbles

=signature $bool = $event->get_bubbles

Indicates whether or not an event is a bubbling event. If the
event can bubble the value is true, else the value is false.

=cut

=for apidoc Mozilla::DOM::Event::get_cancelable

=signature $bool = $event->get_cancelable

Indicates whether or not an event can have its default action
prevented. If the default action can be prevented the value is true,
else the value is false.

=cut

## GetBubbles(PRBool *aBubbles), etc.
PRBool
moz_dom_get_bubbles (event)
	nsIDOMEvent *event;
    ALIAS:
	Mozilla::DOM::Event::get_cancelable = 1
    PREINIT:
	PRBool can;
    CODE:
	switch (ix) {
		case 0: event->GetBubbles(&can); break;
		case 1: event->GetCancelable(&can); break;
		default: can = 0;
	}
	RETVAL = can;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::Event::stop_propagation

=signature $event->stop_propagation

This method is used prevent further propagation of an
event during event flow. If this method is called by any
L<EventListener|EventListener> the event will cease propagating
through the tree. The event will complete dispatch to all listeners
on the current L<EventTarget|EventTarget> before event flow stops.
This method may be used during any stage of event flow.

=cut

=for apidoc Mozilla::DOM::Event::prevent_default

=signature $event->prevent_default

If an event is cancelable, the prevent_default method is used to
signify that the event is to be canceled, meaning any default action
normally taken by the implementation as a result of the event will
not occur. If, during any stage of event flow, the prevent_default
method is called the event is canceled. Any default action associated
with the event will not occur. Calling this method for a
non-cancelable event has no effect. Once prevent_default has been
called it will remain in effect throughout the remainder of the
event's propagation. This method may be used during any stage of
event flow.

=cut

void
moz_dom_stop_propagation (event)
	nsIDOMEvent *event;
    ALIAS:
	Mozilla::DOM::Event::prevent_default = 1
    CODE:
	switch (ix) {
		case 0: event->StopPropagation(); break;
		case 1: event->PreventDefault(); break;
		default: break;
	}

# -----------------------------------------------------------------------------

MODULE = Mozilla::DOM	PACKAGE = Mozilla::DOM::UIEvent	PREFIX = moz_dom_

=for object Mozilla::DOM::UIEvent

Mozilla::DOM::UIEvent is a wrapper around an instance of Mozilla's
nsIDOMUIEvent interface, from which L<Mozilla::DOM::KeyEvent|Mozilla::DOM::KeyEvent>
and L<Mozilla::DOM::MouseEvent|Mozilla::DOM::MouseEvent> inherit.

Differences from the Mozilla interface: method names in StudlyCaps have been
changed to underscore_style, and instead of passing values by pointer
the value is returned.

The InitUIEvent method is not wrapped yet.

=cut

=for apidoc Mozilla::DOM::UIEvent::get_detail

=signature $int = $event->get_detail

I don't know what a "detail" is. (Apparently it isn't used during
dom_mouse_over or dom_mouse_out signals.)

=cut

## GetDetail(PRInt32 *aDetail)
PRInt32
moz_dom_get_detail (event)
	nsIDOMUIEvent *event;
    PREINIT:
	PRInt32 detail;
    CODE:
	event->GetDetail(&detail);
	RETVAL = detail;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::UIEvent::get_view

=signature $abstract_view = $event->get_view

I don't know what a "view" is.

=cut

## GetView(nsIDOMAbstractView * *aView)
nsIDOMAbstractView *
moz_dom_get_view (event)
	nsIDOMUIEvent *event;
    PREINIT:
	nsIDOMAbstractView *view;
    CODE:
	event->GetView(&view);
	RETVAL = view;
    OUTPUT:
	RETVAL

## InitUIEvent(const nsAString & typeArg, PRBool canBubbleArg, PRBool cancelableArg, nsIDOMAbstractView *viewArg, PRInt32 detailArg)

# -----------------------------------------------------------------------------

MODULE = Mozilla::DOM	PACKAGE = Mozilla::DOM::MouseEvent	PREFIX = moz_dom_

=for object Mozilla::DOM::MouseEvent

The second argument of GtkMozEmbed's dom_mouse_* signal handlers will be a
Mozilla::DOM::MouseEvent object, which is a wrapper around an instance
of Mozilla's nsIDOMMouseEvent interface.

Differences from the Mozilla interface: method names in StudlyCaps have been
changed to underscore_style, and instead of passing values by pointer
the value is returned. The GetRelatedTarget and InitMouseEvent methods
are not wrapped yet.

=cut

=for see_also F<E<sol>usrE<sol>includeE<sol>mozillaE<sol>nsIDOMMouseEvent.h>
=cut

=for see_also section 1.6.2 of the DOM level 2 specification
=cut

=for apidoc Mozilla::DOM::MouseEvent::get_screen_x

=signature $x = $event->get_screen_x

This function gets the X coordinate where the mouse was clicked
on the screen, i.e. your desktop. X = 0 is at the left and increases
to the right.

=cut

=for apidoc Mozilla::DOM::MouseEvent::get_screen_y

=signature $y = $event->get_screen_y

This function gets the Y coordinate where the mouse was clicked
on the screen, i.e. your desktop. Y = 0 is at the top and increases
downward.

=cut

=for apidoc Mozilla::DOM::MouseEvent::get_client_x

=signature $x = $event->get_client_x

This function gets the X coordinate where the mouse was clicked on the
client, i.e. the Gtk2::MozEmbed window. X = 0 is at the left and
increases to the right.

Note: this number might be negative on L<Gtk2::MozEmbed::main/dom_mouse_out>
events when the mouse leaves the Gtk2::MozEmbed widget but hasn't left the
application window.

=cut

=for apidoc Mozilla::DOM::MouseEvent::get_client_y

=signature $y = $event->get_client_y

This function gets the Y coordinate where the mouse was clicked on the
client, i.e. the Gtk2::MozEmbed window. Y = 0 is at the top and increases
downward.

Note: this number might be negative on L<Gtk2::MozEmbed::main/dom_mouse_out>
events when the mouse leaves the Gtk2::MozEmbed widget but hasn't left the
application window.

=cut

## GetScreenX(PRInt32 *aScreenX), etc.
PRInt32
moz_dom_get_screen_x (event)
	nsIDOMMouseEvent *event;
    ALIAS:
	Mozilla::DOM::MouseEvent::get_screen_y = 1
	Mozilla::DOM::MouseEvent::get_client_x = 2
	Mozilla::DOM::MouseEvent::get_client_y = 3
    PREINIT:
	PRInt32 pos;
    CODE:
	switch (ix) {
		case 0: event->GetScreenX(&pos); break;
		case 1: event->GetScreenY(&pos); break;
		case 2: event->GetClientX(&pos); break;
		case 3: event->GetClientY(&pos); break;
		default: pos = 0;
	}
	RETVAL = pos;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::MouseEvent::get_ctrl_key

=signature $bool = $event->get_ctrl_key

This function returns true if the Ctrl key was held down
when the mouse event occured.

=cut

=for apidoc Mozilla::DOM::MouseEvent::get_shift_key

=signature $bool = $event->get_shift_key

This function returns true if the Shift key was held down
when the mouse event occured.

=cut

=for apidoc Mozilla::DOM::MouseEvent::get_alt_key

=signature $bool = $event->get_alt_key

This function returns true if the Alt key was held down
when the mouse event occured. (Note: I found this to not
be strictly true.)

=cut

=for apidoc Mozilla::DOM::MouseEvent::get_meta_key

=signature $bool = $event->get_meta_key

This function returns true if the Meta key was held down
when the mouse event occured.

=cut

## GetCtrlKey(PRBool *aCtrlKey), etc.
PRBool
moz_dom_get_ctrl_key (event)
	nsIDOMMouseEvent *event;
    ALIAS:
	Mozilla::DOM::MouseEvent::get_shift_key = 1
	Mozilla::DOM::MouseEvent::get_alt_key = 2
	Mozilla::DOM::MouseEvent::get_meta_key = 3
    PREINIT:
	PRBool key;
    CODE:
	switch (ix) {
		case 0: event->GetCtrlKey(&key); break;
		case 1: event->GetShiftKey(&key); break;
		case 2: event->GetAltKey(&key); break;
		case 3: event->GetMetaKey(&key); break;
		default: key = 0;
	}
	RETVAL = key;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::MouseEvent::get_button

=signature $button = $event->get_button

This function gets a number representing which mouse button was pressed.
With three-button mice: left button = 0, middle button = 1, and
right button = 2. (With two-button mice, there is no middle button,
and with one-button mice there is only a left button.)

Note: this is only valid for L<Gtk2::MozEmbed::main/dom_mouse_click> events.

=cut

## GetButton(PRUint16 *aButton)
PRUint16
moz_dom_get_button (event)
	nsIDOMMouseEvent *event;
    PREINIT:
	PRUint16 button;
    CODE:
	event->GetButton(&button);
	RETVAL = button;
    OUTPUT:
	RETVAL

## GetRelatedTarget(nsIDOMEventTarget * *aRelatedTarget)
## InitMouseEvent(const nsAString & typeArg, PRBool canBubbleArg, PRBool cancelableArg, nsIDOMAbstractView *viewArg, PRInt32 detailArg, PRInt32 screenXArg, PRInt32 screenYArg, PRInt32 clientXArg, PRInt32 clientYArg, PRBool ctrlKeyArg, PRBool altKeyArg, PRBool shiftKeyArg, PRBool metaKeyArg, PRUint16 buttonArg, nsIDOMEventTarget *relatedTargetArg)

# -----------------------------------------------------------------------------

MODULE = Mozilla::DOM	PACKAGE = Mozilla::DOM::KeyEvent	PREFIX = moz_dom_

=for object Mozilla::DOM::KeyEvent

The second argument of GtkMozEmbed's dom_key_* signal handlers will be a
Mozilla::DOM::KeyEvent object, which is a wrapper around an instance
of Mozilla's nsIDOMKeyEvent interface.

Differences from the Mozilla interface: method names in StudlyCaps have been
changed to underscore_style, and instead of passing values by pointer
the value is returned. The InitKeyEvent method is not wrapped yet.

=cut

=for see_also F<E<sol>usrE<sol>includeE<sol>mozillaE<sol>nsIDOMKeyEvent.h>
=cut

=for see_also sections 1.7.4 and Appendix A of the DOM level 3 specification
=cut

=for apidoc Mozilla::DOM::KeyEvent::get_char_code

=signature $char_code = $event->get_char_code

This function gets the character code, which is the Unicode number
representing that character (e.g. 'a' is 97). For example, you could
pass this number to the `chr' function in Perl.

=cut

=for apidoc Mozilla::DOM::KeyEvent::get_key_code

=signature $key_code = $event->get_key_code

This function gets the key code for "special" keys, such as the function
keys (e.g., F3), caps lock, right arrow, etc. For a complete list,
refer to the DOM_VK_* enums in dom/nsIDOMKeyEvent.h; these constants
are not wrapped by Mozilla::DOM::KeyEvent.

=cut

## GetCharCode(PRUint32 *aCharCode), etc.
PRUint32
moz_dom_get_char_code (event)
	nsIDOMKeyEvent *event;
    ALIAS:
	Mozilla::DOM::KeyEvent::get_key_code = 1
    PREINIT:
	PRUint32 code;
    CODE:
	switch (ix) {
		case 0: event->GetCharCode(&code); break;
		case 1: event->GetKeyCode(&code); break;
		default: code = 0;
	}
	RETVAL = code;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::KeyEvent::get_ctrl_key

=signature $bool = $event->get_ctrl_code

This function returns true if the Ctrl key was held down
when the key event occured.

=cut

=for apidoc Mozilla::DOM::KeyEvent::get_shift_key

=signature $bool = $event->get_shift_key

This function returns true if the Shift key was held down
when the key event occured.

=cut

=for apidoc Mozilla::DOM::KeyEvent::get_alt_key

=signature $bool = $event->get_alt_key

This function returns true if the Alt key was held down
when the key event occured. (Note: I found this to not
be strictly true.)

=cut

=for apidoc Mozilla::DOM::KeyEvent::get_meta_key

=signature $bool = $event->get_meta_key

This function returns true if the Meta key was held down
when the key event occured.

=cut

## GetCtrlKey(PRBool *aCtrlKey), etc.
PRBool
moz_dom_get_ctrl_key (event)
	nsIDOMKeyEvent *event;
    ALIAS:
	Mozilla::DOM::KeyEvent::get_shift_key = 1
	Mozilla::DOM::KeyEvent::get_alt_key = 2
	Mozilla::DOM::KeyEvent::get_meta_key = 3
    PREINIT:
	PRBool key;
    CODE:
	switch (ix) {
		case 0: event->GetCtrlKey(&key); break;
		case 1: event->GetShiftKey(&key); break;
		case 2: event->GetAltKey(&key); break;
		case 3: event->GetMetaKey(&key); break;
		default: key = 0;
	}
	RETVAL = key;
    OUTPUT:
	RETVAL

## InitKeyEvent(const nsAString & typeArg, PRBool canBubbleArg, PRBool cancelableArg, nsIDOMAbstractView *viewArg, PRBool ctrlKeyArg, PRBool altKeyArg, PRBool shiftKeyArg, PRBool metaKeyArg, PRUint32 keyCodeArg, PRUint32 charCodeArg)

# -----------------------------------------------------------------------------

MODULE = Mozilla::DOM	PACKAGE = Mozilla::DOM::EventTarget	PREFIX = moz_dom_

=for object Mozilla::DOM::EventTarget

Mozilla::DOM::EventTarget is a wrapper around an instance of Mozilla's
nsIDOMEventTarget interface.

Differences from the Mozilla interface: method names in StudlyCaps have been
changed to underscore_style, and instead of passing values by pointer
the value is returned. The InitKeyEvent method is not wrapped yet.

None of the methods are implemented yet.

=cut

# -----------------------------------------------------------------------------

MODULE = Mozilla::DOM	PACKAGE = Mozilla::DOM::EventListener	PREFIX = moz_dom_

=for object Mozilla::DOM::EventListener

Mozilla::DOM::EventListener is a wrapper around an instance of Mozilla's
nsIDOMEventListener interface.

Differences from the Mozilla interface: method names in StudlyCaps have been
changed to underscore_style, and instead of passing values by pointer
the value is returned. The InitKeyEvent method is not wrapped yet.

None of the methods are implemented yet.

=cut

