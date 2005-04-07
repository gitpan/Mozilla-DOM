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
 * $CVSHeader: Mozilla-DOM/xs/DOM.xs,v 1.6 2005/04/06 12:05:40 slanning Exp $
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

/* conversion functions between Perl and C */

MOZDOM_DEF_DOM_TYPEMAPPERS(AbstractView)
MOZDOM_DEF_DOM_TYPEMAPPERS(DocumentView)
MOZDOM_DEF_DOM_TYPEMAPPERS(Event)
MOZDOM_DEF_DOM_TYPEMAPPERS(UIEvent)
MOZDOM_DEF_DOM_TYPEMAPPERS(DocumentEvent)
MOZDOM_DEF_DOM_TYPEMAPPERS(MutationEvent)
MOZDOM_DEF_DOM_TYPEMAPPERS(KeyEvent)
MOZDOM_DEF_DOM_TYPEMAPPERS(MouseEvent)
MOZDOM_DEF_DOM_TYPEMAPPERS(EventTarget)
MOZDOM_DEF_DOM_TYPEMAPPERS(EventListener)
MOZDOM_DEF_DOM_TYPEMAPPERS(Window)
MOZDOM_DEF_DOM_TYPEMAPPERS(WindowCollection)
MOZDOM_DEF_DOM_TYPEMAPPERS(Document)
MOZDOM_DEF_DOM_TYPEMAPPERS(DocumentFragment)
MOZDOM_DEF_DOM_TYPEMAPPERS(DocumentType)
MOZDOM_DEF_DOM_TYPEMAPPERS(Node)
MOZDOM_DEF_DOM_TYPEMAPPERS(NodeList)
MOZDOM_DEF_DOM_TYPEMAPPERS(Element)
MOZDOM_DEF_DOM_TYPEMAPPERS(EntityReference)
MOZDOM_DEF_DOM_TYPEMAPPERS(Attr)
MOZDOM_DEF_DOM_TYPEMAPPERS(ProcessingInstruction)
MOZDOM_DEF_DOM_TYPEMAPPERS(CDATASection)
MOZDOM_DEF_DOM_TYPEMAPPERS(Comment)
MOZDOM_DEF_DOM_TYPEMAPPERS(CharacterData)
MOZDOM_DEF_DOM_TYPEMAPPERS(Text)
MOZDOM_DEF_DOM_TYPEMAPPERS(DOMImplementation)

SV * newSVnsIWebBrowser (nsIWebBrowser *browser) {
	SV *sv = newSV (0);
	return sv_setref_pv (sv, "Mozilla::DOM::WebBrowser", browser);
}

nsIWebBrowser * SvnsIWebBrowser (SV *browser) {
	return INT2PTR (nsIWebBrowser *, SvIV (SvRV (browser)));
}

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

=for signature $docview = $view->get_document

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

=for signature $view = $docview->get_default_view

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

 * The nsIDOMEvent interface is the primary datatype for all events in
 * the Document Object Model.
 *
 * For more information on this interface please see 
 * http://www.w3.org/TR/DOM-Level-2-Events/

Differences from the Mozilla interface: method names in StudlyCaps have been
changed to underscore_style, and instead of passing values by pointer
the value is returned.

The InitEvent method is not wrapped yet.

The constants CAPTURING_PHASE, AT_TARGET, and BUBBLING_PHASE are available
for comparing with L</get_event_phase>. Currently these are accessed through
the (mouse or key) event object, like $event->AT_TARGET, but maybe they
should be exportable class constants (if I can figure out how to do that).

=cut

=for apidoc Mozilla::DOM::Event::get_type

=for signature $type = $event->get_type

The name of the event (case-insensitive). The name must be an XML name.

=cut

## GetType(nsAString & aType)
nsEmbedString
moz_dom_get_type (event)
	nsIDOMEvent *event;
    PREINIT:
	nsEmbedString type;
    CODE:
	event->GetType(type);
	RETVAL = type;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::Event::get_target

=for signature $target = $event->get_target

Get the L<EventTarget|Mozilla::DOM::EventTarget>
to which the Event was originally dispatched.

=cut

=for apidoc Mozilla::DOM::Event::get_current_target

=for signature $target = $event->get_current_target

Get the L<EventTarget|Mozilla::DOM::EventTarget>
whose L<EventListener|Mozilla::DOM::EventListener>s
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

=for signature $phase = $event->get_event_phase

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

=for signature $bool = $event->get_bubbles

Indicates whether or not an event is a bubbling event. If the
event can bubble the value is true, else the value is false.

=cut

=for apidoc Mozilla::DOM::Event::get_cancelable

=for signature $bool = $event->get_cancelable

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

=for apidoc Mozilla::DOM::Event::get_time_stamp

=for signature $event->get_time_stamp

Used to specify the time (in milliseconds relative to the epoch) at
which the event was created. Due to the fact that some systems may
not provide this information the value of timestamp may be not
available for all events. When not available, a value of 0 will be
returned. Examples of epoch time are the time of the system start or
00:00:00 UTC 1st January 1970.

XXX: I'm doing something wrong, because it seems to only keep the
bottom half of the (64-bit) number. As long as the time between
events your comparing isn't too long, it shouldn't matter (as long
as the number doesn't wrap around...).
Let me know if you see what I'm doing wrong. I was thinking
also of splitting the number in half and returning a list
of two integers.

=cut

## GetTimeStamp(DOMTimeStamp *aTimeStamp)
DOMTimeStamp
moz_dom_get_time_stamp (event)
	nsIDOMEvent *event;
    PREINIT:
	DOMTimeStamp ts;
    CODE:
	event->GetTimeStamp(&ts);
	RETVAL = ts;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::Event::stop_propagation

=for signature $event->stop_propagation

This method is used prevent further propagation of an
event during event flow. If this method is called by any
L<EventListener|Mozilla::DOM::EventListener>
the event will cease propagating
through the tree. The event will complete dispatch to all listeners
on the current L<EventTarget|Mozilla::DOM::EventTarget>
before event flow stops.
This method may be used during any stage of event flow.

=cut

=for apidoc Mozilla::DOM::Event::prevent_default

=for signature $event->prevent_default

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

## StopPropagation(void), etc.
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

=for apidoc Mozilla::DOM::Event::init_event

=for signature $event->init_event($event_type, $canbubble, $cancelable)

   * The initEvent method is used to initialize the value of an Event 
   * created through the DocumentEvent interface. This method may only be 
   * called before the Event has been dispatched via the dispatchEvent 
   * method, though it may be called multiple times during that phase if 
   * necessary. If called multiple times the final invocation takes 
   * precedence. If called from a subclass of Event interface only the 
   * values specified in the initEvent method are modified, all other 
   * attributes are left unchanged.
   *
   * @param   eventTypeArg Specifies the event type. This type may be 
   *                       any event type currently defined in this 
   *                       specification or a new event type.. The string 
   *                       must be an XML name.
   *                       Any new event type must not begin with any 
   *                       upper, lower, or mixed case version of the 
   *                       string "DOM". This prefix is reserved for 
   *                       future DOM event sets. It is also strongly 
   *                       recommended that third parties adding their 
   *                       own events use their own prefix to avoid 
   *                       confusion and lessen the probability of 
   *                       conflicts with other new events.
   * @param   canBubbleArg Specifies whether or not the event can bubble.
   * @param   cancelableArg Specifies whether or not the event's default 
   *                        action can be prevented.

The $event object is an event created by DocumentEvent's
L<create_event|Mozilla::DOM::DocumentEvent/create_event> method.
The $event_type argument here depends on the argument you passed
to create_event. Here is information obtained from section 1.6
of the DOM Level 2 specification (qv. for more details):

=over 4

=item UIEvents

=over 4

=item DOMFocusIn

The DOMFocusIn event occurs when an EventTarget receives focus, for
instance via a pointing device being moved onto an element or by
tabbing navigation to the element. Unlike the HTML event focus,
DOMFocusIn can be applied to any focusable EventTarget, not just FORM
controls.

    * Bubbles: Yes
    * Cancelable: No
    * Context Info: None

=item DOMFocusOut

The DOMFocusOut event occurs when a EventTarget loses focus, for
instance via a pointing device being moved out of an element or by
tabbing navigation out of the element. Unlike the HTML event blur,
DOMFocusOut can be applied to any focusable EventTarget, not just
FORM controls.

    * Bubbles: Yes
    * Cancelable: No
    * Context Info: None

=item DOMActivate

The activate event occurs when an element is activated, for instance,
thru a mouse click or a keypress. A numerical argument is provided to
give an indication of the type of activation that occurs: 1 for a
simple activation (e.g. a simple click or Enter), 2 for
hyperactivation (for instance a double click or Shift Enter).

        * Bubbles: Yes
        * Cancelable: Yes
        * Context Info: detail (the numerical value)

=back

=item MouseEvents

=over 4

=item click

The click event occurs when the pointing device button is clicked
over an element. A click is defined as a mousedown and mouseup over
the same screen location. The sequence of these events is:

    mousedown
    mouseup
    click
   
If multiple clicks occur at the same screen location, the sequence
repeats with the detail attribute incrementing with each
repetition. This event is valid for most elements.

    * Bubbles: Yes
    * Cancelable: Yes
    * Context Info: screenX, screenY, clientX, clientY, altKey,
      ctrlKey, shiftKey, metaKey, button, detail

=item mousedown

The mousedown event occurs when the pointing device button is pressed
over an element. This event is valid for most elements.

    * Bubbles: Yes
    * Cancelable: Yes
    * Context Info: screenX, screenY, clientX, clientY, altKey,
      ctrlKey, shiftKey, metaKey, button, detail

=item mouseup

The mouseup event occurs when the pointing device button is released
over an element. This event is valid for most elements.

    * Bubbles: Yes
    * Cancelable: Yes
    * Context Info: screenX, screenY, clientX, clientY, altKey,
      ctrlKey, shiftKey, metaKey, button, detail

=item mouseover

The mouseover event occurs when the pointing device is moved onto an
element. This event is valid for most elements.

    * Bubbles: Yes
    * Cancelable: Yes
    * Context Info: screenX, screenY, clientX, clientY, altKey,
      ctrlKey, shiftKey, metaKey,
      relatedTarget indicates the EventTarget the pointing device is exiting.

=item mousemove

The mousemove event occurs when the pointing device is moved while it
is over an element. This event is valid for most elements.

    * Bubbles: Yes
    * Cancelable: No
    * Context Info: screenX, screenY, clientX, clientY, altKey, ctrlKey,
      shiftKey, metaKey

=item mouseout

The mouseout event occurs when the pointing device is moved away from
an element. This event is valid for most elements..

    * Bubbles: Yes
    * Cancelable: Yes
    * Context Info: screenX, screenY, clientX, clientY, altKey,
      ctrlKey, shiftKey, metaKey,
      relatedTarget indicates the EventTarget the pointing device is entering.

=back

=item KeyEvents

Not provided with DOM Level 2.

=item MutationEvents

The mutation event module is designed to allow notification of any
changes to the structure of a document, including attr and text
modifications. [...]

=over 4

=item DOMSubtreeModified

This is a general event for notification of all changes to the
document. It can be used instead of the more specific events listed
below. It may be fired after a single modification to the document
or, at the implementation's discretion, after multiple changes have
occurred. The latter use should generally be used to accomodate
multiple changes which occur either simultaneously or in rapid
succession. The target of this event is the lowest common parent of
the changes which have taken place. This event is dispatched after
any other events caused by the mutation have fired.

        * Bubbles: Yes
        * Cancelable: No
        * Context Info: None

=item DOMNodeInserted

Fired when a node has been added as a child of another node. This
event is dispatched after the insertion has taken place. The target
of this event is the node being inserted.

        * Bubbles: Yes
        * Cancelable: No
        * Context Info: relatedNode holds the parent node

=item DOMNodeRemoved

Fired when a node is being removed from its parent node. This event
is dispatched before the node is removed from the tree. The target of
this event is the node being removed.

        * Bubbles: Yes
        * Cancelable: No
        * Context Info: relatedNode holds the parent node

=item DOMNodeRemovedFromDocument

Fired when a node is being removed from a document, either through
direct removal of the Node or removal of a subtree in which it is
contained. This event is dispatched before the removal takes
place. The target of this event is the Node being removed. If the
Node is being directly removed the DOMNodeRemoved event will fire
before the DOMNodeRemovedFromDocument event.

        * Bubbles: No
        * Cancelable: No
        * Context Info: None

=item DOMNodeInsertedIntoDocument

Fired when a node is being inserted into a document, either through
direct insertion of the Node or insertion of a subtree in which it is
contained. This event is dispatched after the insertion has taken
place. The target of this event is the node being inserted. If the
Node is being directly inserted the DOMNodeInserted event will fire
before the DOMNodeInsertedIntoDocument event.

        * Bubbles: No
        * Cancelable: No
        * Context Info: None

=item DOMAttrModified

Fired after an Attr has been modified on a node. The target of this
event is the Node whose Attr changed. The value of attrChange
indicates whether the Attr was modified, added, or removed. The value
of relatedNode indicates the Attr node whose value has been
affected. It is expected that string based replacement of an Attr
value will be viewed as a modification of the Attr since its identity
does not change. Subsequently replacement of the Attr node with a
different Attr node is viewed as the removal of the first Attr node
and the addition of the second.

        * Bubbles: Yes
        * Cancelable: No
        * Context Info: attrName, attrChange, prevValue, newValue, relatedNode

=item DOMCharacterDataModified

Fired after CharacterData within a node has been modified but the
node itself has not been inserted or deleted. This event is also
triggered by modifications to PI elements. The target of this event
is the CharacterData node.

        * Bubbles: Yes
        * Cancelable: No
        * Context Info: prevValue, newValue

=back

=item HTMLEvents

=over 4

=item load

The load event occurs when the DOM implementation finishes loading
all content within a document, all frames within a FRAMESET, or an
OBJECT element.

        * Bubbles: No
        * Cancelable: No
        * Context Info: None

=item unload

The unload event occurs when the DOM implementation removes a
document from a window or frame. This event is valid for BODY and
FRAMESET elements.

        * Bubbles: No
        * Cancelable: No
        * Context Info: None

=item abort

The abort event occurs when page loading is stopped before an image
has been allowed to completely load. This event applies to OBJECT
elements.

        * Bubbles: Yes
        * Cancelable: No
        * Context Info: None

=item error

The error event occurs when an image does not load properly or when
an error occurs during script execution. This event is valid for
OBJECT elements, BODY elements, and FRAMESET element.

        * Bubbles: Yes
        * Cancelable: No
        * Context Info: None

=item select

The select event occurs when a user selects some text in a text
field. This event is valid for INPUT and TEXTAREA elements.

        * Bubbles: Yes
        * Cancelable: No
        * Context Info: None

=item change

The change event occurs when a control loses the input focus and its
value has been modified since gaining focus. This event is valid for
INPUT, SELECT, and TEXTAREA. element.

        * Bubbles: Yes
        * Cancelable: No
        * Context Info: None

=item submit

The submit event occurs when a form is submitted. This event only
applies to the FORM element.

        * Bubbles: Yes
        * Cancelable: Yes
        * Context Info: None

=item reset

The reset event occurs when a form is reset. This event only applies
to the FORM element.

        * Bubbles: Yes
        * Cancelable: No
        * Context Info: None

=item focus

The focus event occurs when an element receives focus either via a
pointing device or by tabbing navigation. This event is valid for the
following elements: LABEL, INPUT, SELECT, TEXTAREA, and BUTTON.

        * Bubbles: No
        * Cancelable: No
        * Context Info: None

=item blur

The blur event occurs when an element loses focus either via the
pointing device or by tabbing navigation. This event is valid for the
following elements: LABEL, INPUT, SELECT, TEXTAREA, and BUTTON.

        * Bubbles: No
        * Cancelable: No
        * Context Info: None

=item resize

The resize event occurs when a document view is resized.

        * Bubbles: Yes
        * Cancelable: No
        * Context Info: None

=item scroll

The scroll event occurs when a document view is scrolled.

        * Bubbles: Yes
        * Cancelable: No
        * Context Info: None

=back

=back

=cut

## InitEvent(const nsAString & eventTypeArg, PRBool canBubbleArg, PRBool cancelableArg)
void
moz_dom_init_event (event, eventtype, canbubble, cancelable)
	nsIDOMEvent *event;
	nsEmbedString eventtype;
	PRBool canbubble;
	PRBool cancelable;
    CODE:
	/* XXX: this can thrown an exception, so should check... */
	event->InitEvent(eventtype, canbubble, cancelable);

# -----------------------------------------------------------------------------

MODULE = Mozilla::DOM	PACKAGE = Mozilla::DOM::UIEvent	PREFIX = moz_dom_

=for object Mozilla::DOM::UIEvent

Mozilla::DOM::UIEvent is a wrapper around an instance of Mozilla's
nsIDOMUIEvent interface, from which L<Mozilla::DOM::KeyEvent|Mozilla::DOM::KeyEvent>
and L<Mozilla::DOM::MouseEvent|Mozilla::DOM::MouseEvent> inherit.

 * The nsIDOMUIEvent interface is the datatype for all UI events in the
 * Document Object Model.
 *
 * For more information on this interface please see
 * http://www.w3.org/TR/DOM-Level-2-Events/

Differences from the Mozilla interface: method names in StudlyCaps have been
changed to underscore_style, and instead of passing values by pointer
the value is returned.

The InitUIEvent method is not wrapped yet.

=cut

=for apidoc Mozilla::DOM::UIEvent::get_detail

=for signature $int = $event->get_detail

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

=for signature $abstract_view = $event->get_view

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

=for apidoc Mozilla::DOM::UIEvent::init_uievent

=for signature $event->init_uievent($event_type, $canbubble, $cancelable, $abstract_view, $detail)

See L<Event::init_event|Mozilla::DOM::Event::init_event> for more
information. This method is basically the same, but with two
extra arguments.
(XXX: add docs for args)

=cut

## InitUIEvent(const nsAString & typeArg, PRBool canBubbleArg, PRBool cancelableArg, nsIDOMAbstractView *viewArg, PRInt32 detailArg)
void
moz_dom_init_uievent (event, eventtype, canbubble, cancelable, view, detail)
	nsIDOMUIEvent *event;
	nsEmbedString eventtype;
	PRBool canbubble;
	PRBool cancelable;
	nsIDOMAbstractView *view;
	PRInt32 detail;
    CODE:
	event->InitUIEvent(eventtype, canbubble, cancelable, view, detail);

# -----------------------------------------------------------------------------

MODULE = Mozilla::DOM	PACKAGE = Mozilla::DOM::DocumentEvent	PREFIX = moz_dom_

=for object Mozilla::DOM::DocumentEvent

Mozilla::DOM::DocumentEvent is a wrapper around an instance of Mozilla's
nsIDOMDocumentEvent interface.

 * The nsIDOMDocumentEvent interface is the interface to the event
 * factory method on a DOM document object.
 *
 * For more information on this interface please see 
 * http://www.w3.org/TR/DOM-Level-2-Events/

(In particular, sections 1.5 and 1.6. Very important to read that
if you want to understand how to create an L<Event|Mozilla::DOM::Event>.)

Differences from the Mozilla interface: method names in StudlyCaps have been
changed to underscore_style, and instead of passing values by pointer
the values are returned.

=cut

=for apidoc Mozilla::DOM::DocumentEvent::create_event

=for signature $domevent = $docevent->create_event($event_type)

Where do you get a "DocumentEvent" object from? It seems that
it's the same as a L<Document|Mozilla::DOM::Document> object,
but I didn't confirm that yet.

$event_type is a string, one of 'Events', 'UIEvents',
'HTMLEvents', 'MutationEvents', 'MouseEvents'. See section 1.6 of
the DOM Level 2 specs. Apparently 'KeyEvents' come later in
DOM Level 3; maybe nsIDOM3DocumentEvent is necessary for those.

The return value is an L<Event|Mozilla::DOM::Event> object.
You can then call L<init_event|Mozilla::DOM::Event/init_event>
(XXX: but what about InitUIEvent, InitMouseEvent, etc.) on that object,
followed by L<DispatchEvent|Mozilla::DOM::EventTarget/dispatch_event>.

=cut

## CreateEvent(const nsAString & eventType, nsIDOMEvent **_retval)
nsIDOMEvent *
moz_dom_create_event (docevent, eventtype)
	nsIDOMDocumentEvent *docevent;
	nsEmbedString eventtype;
    PREINIT:
	nsIDOMEvent *event;
    CODE:
	/* XXX: this can thrown an exception, so should check... */
	docevent->CreateEvent(eventtype, &event);
	RETVAL = event;
    OUTPUT:
	RETVAL

# -----------------------------------------------------------------------------

MODULE = Mozilla::DOM	PACKAGE = Mozilla::DOM::MouseEvent	PREFIX = moz_dom_

=for object Mozilla::DOM::MouseEvent

The second argument of GtkMozEmbed's dom_mouse_* signal handlers will be a
Mozilla::DOM::MouseEvent object, which is a wrapper around an instance
of Mozilla's nsIDOMMouseEvent interface. This inherits from
L<UIEvent|Mozilla::DOM::UIEvent>.

 * The nsIDOMMouseEvent interface is the datatype for all mouse events
 * in the Document Object Model.
 *
 * For more information on this interface please see
 * http://www.w3.org/TR/DOM-Level-2-Events/

Differences from the Mozilla interface: method names in StudlyCaps have been
changed to underscore_style, and instead of passing values by pointer
the value is returned. The InitMouseEvent methods is not wrapped yet.

=cut

=for see_also F<E<sol>usrE<sol>includeE<sol>mozillaE<sol>nsIDOMMouseEvent.h>
=cut

=for see_also section 1.6.2 of the DOM level 2 specification
=cut

=for apidoc Mozilla::DOM::MouseEvent::get_screen_x

=for signature $x = $event->get_screen_x

This function gets the X coordinate where the mouse was clicked
on the screen, i.e. your desktop. X = 0 is at the left and increases
to the right.

=cut

=for apidoc Mozilla::DOM::MouseEvent::get_screen_y

=for signature $y = $event->get_screen_y

This function gets the Y coordinate where the mouse was clicked
on the screen, i.e. your desktop. Y = 0 is at the top and increases
downward.

=cut

=for apidoc Mozilla::DOM::MouseEvent::get_client_x

=for signature $x = $event->get_client_x

This function gets the X coordinate where the mouse was clicked on the
client, i.e. the Gtk2::MozEmbed window. X = 0 is at the left and
increases to the right.

Note: this number might be negative on L<Gtk2::MozEmbed::main/dom_mouse_out>
events when the mouse leaves the Gtk2::MozEmbed widget but hasn't left the
application window.

=cut

=for apidoc Mozilla::DOM::MouseEvent::get_client_y

=for signature $y = $event->get_client_y

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

=for signature $bool = $event->get_ctrl_key

This function returns true if the Ctrl key was held down
when the mouse event occured.

=cut

=for apidoc Mozilla::DOM::MouseEvent::get_shift_key

=for signature $bool = $event->get_shift_key

This function returns true if the Shift key was held down
when the mouse event occured.

=cut

=for apidoc Mozilla::DOM::MouseEvent::get_alt_key

=for signature $bool = $event->get_alt_key

This function returns true if the Alt key was held down
when the mouse event occured. (Note: I found this to not
be strictly true.)

=cut

=for apidoc Mozilla::DOM::MouseEvent::get_meta_key

=for signature $bool = $event->get_meta_key

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

=for signature $button = $event->get_button

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

=for apidoc Mozilla::DOM::MouseEvent::get_related_target

=for signature $target = $event->get_related_target

Gets an L<EventTarget|Mozilla::DOM::EventTarget>,
but I don't know what's "related" about it since I didn't
find any documentation.

=cut

## GetRelatedTarget(nsIDOMEventTarget * *aRelatedTarget)
nsIDOMEventTarget *
moz_dom_get_target (event)
	nsIDOMMouseEvent *event
    PREINIT:
	nsIDOMEventTarget *target;
    CODE:
	event->GetRelatedTarget(&target);
	RETVAL = target;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::MouseEvent::init_mouseevent

=for signature $event->init_mouseevent($event_type, $canbubble, $cancelable, $abstract_view, $detail, $screenx, $screeny, $clientx, $clienty, $ctrlkey, $altkey, $shiftkey, $metakey, $button, $target)

See L<Event::init_event|Mozilla::DOM::Event::init_event> for more
information. This method is basically the same as L</init_uievent>,
but with ten extra arguments. (!)
(XXX: add docs for args)

=cut

## XXX: duh, this XSUB could be shortened, no doubt
## InitMouseEvent(const nsAString & typeArg, PRBool canBubbleArg, PRBool cancelableArg, nsIDOMAbstractView *viewArg, PRInt32 detailArg, PRInt32 screenXArg, PRInt32 screenYArg, PRInt32 clientXArg, PRInt32 clientYArg, PRBool ctrlKeyArg, PRBool altKeyArg, PRBool shiftKeyArg, PRBool metaKeyArg, PRUint16 buttonArg, nsIDOMEventTarget *relatedTargetArg)
void
moz_dom_init_mouseevent (event, eventtype, canbubble, cancelable, view, detail, screenx, screeny, clientx, clienty, ctrlkey, altkey, shiftkey, metakey, button, target)
	nsIDOMMouseEvent *event;
	nsEmbedString eventtype;
	PRBool canbubble;
	PRBool cancelable;
	nsIDOMAbstractView *view;
	PRInt32 detail;
	PRInt32 screenx;
	PRInt32 screeny;
	PRInt32 clientx;
	PRInt32 clienty;
	PRBool ctrlkey;
	PRBool altkey;
	PRBool shiftkey;
	PRBool metakey;
	PRUint16 button;
	nsIDOMEventTarget *target;
    CODE:
	event->InitMouseEvent(eventtype, canbubble, cancelable, view, detail,
			      screenx, screeny, clientx, clienty,
			      ctrlkey, altkey, shiftkey, metakey,
 			      button, target);

# -----------------------------------------------------------------------------

MODULE = Mozilla::DOM	PACKAGE = Mozilla::DOM::KeyEvent	PREFIX = moz_dom_

=for object Mozilla::DOM::KeyEvent

The second argument of GtkMozEmbed's dom_key_* signal handlers will be a
Mozilla::DOM::KeyEvent object, which is a wrapper around an instance
of Mozilla's nsIDOMKeyEvent interface. This inherits from
L<UIEvent|Mozilla::DOM::UIEvent>.

Differences from the Mozilla interface: method names in StudlyCaps have been
changed to underscore_style, and instead of passing values by pointer
the value is returned. The InitKeyEvent method is not wrapped yet.

The following constants are available to be compared with L</get_key_code>.
XXX: This is currently buggy, because you have to call them as methods on the
key event object.

=over 4

=item DOM_VK_CANCEL

=item DOM_VK_HELP

=item DOM_VK_BACK_SPACE

=item DOM_VK_TAB

=item DOM_VK_CLEAR

=item DOM_VK_RETURN

=item DOM_VK_ENTER

=item DOM_VK_SHIFT

=item DOM_VK_CONTROL

=item DOM_VK_ALT

=item DOM_VK_PAUSE

=item DOM_VK_CAPS_LOCK

=item DOM_VK_ESCAPE

=item DOM_VK_SPACE

=item DOM_VK_PAGE_UP

=item DOM_VK_PAGE_DOWN

=item DOM_VK_END

=item DOM_VK_HOME

=item DOM_VK_LEFT

=item DOM_VK_UP

=item DOM_VK_RIGHT

=item DOM_VK_DOWN

=item DOM_VK_PRINTSCREEN

=item DOM_VK_INSERT

=item DOM_VK_DELETE

=item DOM_VK_x, where x = 0 - 9

=item DOM_VK_SEMICOLON

=item DOM_VK_EQUALS

=item DOM_VK_x, where x = A - Z

=item DOM_VK_CONTEXT_MENU

=item DOM_VK_NUMPADx, where x = 0 - 9

=item DOM_VK_MULTIPLY

=item DOM_VK_ADD

=item DOM_VK_SEPARATOR

=item DOM_VK_SUBTRACT

=item DOM_VK_DECIMAL

=item DOM_VK_DIVIDE

=item DOM_VK_Fx, where x = 1 - 24

=item DOM_VK_NUM_LOCK

=item DOM_VK_SCROLL_LOCK

=item DOM_VK_COMMA

=item DOM_VK_PERIOD

=item DOM_VK_SLASH

=item DOM_VK_BACK_QUOTE

=item DOM_VK_OPEN_BRACKET

=item DOM_VK_BACK_SLASH

=item DOM_VK_CLOSE_BRACKET

=item DOM_VK_QUOTE

=item DOM_VK_META

=back

=cut

=for see_also F<E<sol>usrE<sol>includeE<sol>mozillaE<sol>nsIDOMKeyEvent.h>
=cut

=for see_also sections 1.7.4 and Appendix A of the DOM level 3 specification
=cut

=for apidoc Mozilla::DOM::KeyEvent::get_char_code

=for signature $char_code = $event->get_char_code

This function gets the character code, which is the Unicode number
representing that character (e.g. 'a' is 97). For example, you could
pass this number to the `chr' function in Perl.

=cut

=for apidoc Mozilla::DOM::KeyEvent::get_key_code

=for signature $key_code = $event->get_key_code

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

=for signature $bool = $event->get_ctrl_code

This function returns true if the Ctrl key was held down
when the key event occured.

=cut

=for apidoc Mozilla::DOM::KeyEvent::get_shift_key

=for signature $bool = $event->get_shift_key

This function returns true if the Shift key was held down
when the key event occured.

=cut

=for apidoc Mozilla::DOM::KeyEvent::get_alt_key

=for signature $bool = $event->get_alt_key

This function returns true if the Alt key was held down
when the key event occured. (Note: I found this to not
be strictly true.)

=cut

=for apidoc Mozilla::DOM::KeyEvent::get_meta_key

=for signature $bool = $event->get_meta_key

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

=for apidoc Mozilla::DOM::KeyEvent::init_keyevent

=for signature $event->init_keyevent($event_type, $canbubble, $cancelable, $abstract_view, $ctrlkey, $altkey, $shiftkey, $metakey, $keycode, $charcode)

See L<Event::init_event|Mozilla::DOM::Event/init_event> for more
information. This method is basically the same as L<init_event>,
but with seven extra arguments.
(XXX: add docs for args)

=cut

## XXX: duh, this XSUB could be shortened, no doubt
## InitKeyEvent(const nsAString & typeArg, PRBool canBubbleArg, PRBool cancelableArg, nsIDOMAbstractView *viewArg, PRBool ctrlKeyArg, PRBool altKeyArg, PRBool shiftKeyArg, PRBool metaKeyArg, PRUint32 keyCodeArg, PRUint32 charCodeArg)
void
moz_dom_init_keyevent (event, eventtype, canbubble, cancelable, view, ctrlkey, altkey, shiftkey, metakey, keycode, charcode)
	nsIDOMKeyEvent *event;
	nsEmbedString eventtype;
	PRBool canbubble;
	PRBool cancelable;
	nsIDOMAbstractView *view;
	PRBool ctrlkey;
	PRBool altkey;
	PRBool shiftkey;
	PRBool metakey;
	PRUint32 keycode;
	PRUint32 charcode;
    CODE:
	event->InitKeyEvent(eventtype, canbubble, cancelable, view,
			    ctrlkey, altkey, shiftkey, metakey,
 			    keycode, charcode);

# -----------------------------------------------------------------------------

MODULE = Mozilla::DOM	PACKAGE = Mozilla::DOM::MutationEvent	PREFIX = moz_dom_

=for object Mozilla::DOM::MutationEvent

Mozilla::DOM::MutationEvent is a wrapper around an instance of Mozilla's
nsIDOMMutationEvent interface. This inherits from
L<UIEvent|Mozilla::DOM::Event>.

The following constants are available to be compared with L</get_attr_change>.
XXX: This is currently buggy, because you have to call them as methods on the
mutation event object.

=over 4

=item MODIFICATION

=item ADDITION

=item REMOVAL

=back

Differences from the Mozilla interface: method names in StudlyCaps have been
changed to underscore_style, and instead of passing values by pointer
the value is returned.

=cut

=begin comment

  /* readonly attribute nsIDOMNode relatedNode; */
#=for apidoc Mozilla::DOM::MutationEvent::GetRelatedNode
#
#=signature $mutationevent->GetRelatedNode(nsIDOMNode * *aRelatedNode)
#
#
#
#=cut
#
### GetRelatedNode(nsIDOMNode * *aRelatedNode)
#somereturn *
#moz_dom_GetRelatedNode (mutationevent, aRelatedNode)
#	nsIDOMmutationevent *mutationevent;
#	nsIDOMNode * *aRelatedNode ;
#    PREINIT:
#	
#    CODE:
#	mutationevent->GetRelatedNode(&);
#	RETVAL = ;
#    OUTPUT:
#	RETVAL


  /* readonly attribute DOMString prevValue; */
#=for apidoc Mozilla::DOM::MutationEvent::GetPrevValue
#
#=signature $mutationevent->GetPrevValue(nsAString & aPrevValue)
#
#
#
#=cut
#
### GetPrevValue(nsAString & aPrevValue)
#somereturn *
#moz_dom_GetPrevValue (mutationevent, aPrevValue)
#	nsIDOMmutationevent *mutationevent;
#	nsEmbedString aPrevValue ;
#    PREINIT:
#	
#    CODE:
#	mutationevent->GetPrevValue(&);
#	RETVAL = ;
#    OUTPUT:
#	RETVAL


  /* readonly attribute DOMString newValue; */
#=for apidoc Mozilla::DOM::MutationEvent::GetNewValue
#
#=signature $mutationevent->GetNewValue(nsAString & aNewValue)
#
#
#
#=cut
#
### GetNewValue(nsAString & aNewValue)
#somereturn *
#moz_dom_GetNewValue (mutationevent, aNewValue)
#	nsIDOMmutationevent *mutationevent;
#	nsEmbedString aNewValue ;
#    PREINIT:
#	
#    CODE:
#	mutationevent->GetNewValue(&);
#	RETVAL = ;
#    OUTPUT:
#	RETVAL


  /* readonly attribute DOMString attrName; */
#=for apidoc Mozilla::DOM::MutationEvent::GetAttrName
#
#=signature $mutationevent->GetAttrName(nsAString & aAttrName)
#
#
#
#=cut
#
### GetAttrName(nsAString & aAttrName)
#somereturn *
#moz_dom_GetAttrName (mutationevent, aAttrName)
#	nsIDOMmutationevent *mutationevent;
#	nsEmbedString aAttrName ;
#    PREINIT:
#	
#    CODE:
#	mutationevent->GetAttrName(&);
#	RETVAL = ;
#    OUTPUT:
#	RETVAL


  /* readonly attribute unsigned short attrChange; */
#=for apidoc Mozilla::DOM::MutationEvent::GetAttrChange
#
#=signature $mutationevent->GetAttrChange(PRUint16 *aAttrChange)
#
#
#
#=cut
#
### GetAttrChange(PRUint16 *aAttrChange)
#somereturn *
#moz_dom_GetAttrChange (mutationevent, aAttrChange)
#	nsIDOMmutationevent *mutationevent;
#	PRUint16 *aAttrChange ;
#    PREINIT:
#	
#    CODE:
#	mutationevent->GetAttrChange(&);
#	RETVAL = ;
#    OUTPUT:
#	RETVAL


=end comment

=cut

=for apidoc Mozilla::DOM::MutationEvent::init_mutationevent

=for signature $event->init_mutationevent($event_type, $canbubble, $cancelable, $node, $prev_value, $new_value, $attr_name, $attr_change)

See L<Event::init_event|Mozilla::DOM::Event/init_event> for more
information. This method is basically the same as init_event,
but with five extra arguments.
(XXX: add docs for args)

=cut

## XXX: duh, this XSUB could be shortened, no doubt
## InitMutationEvent(const nsAString & typeArg, PRBool canBubbleArg, PRBool cancelableArg, nsIDOMNode *relatedNodeArg, const nsAString & prevValueArg, const nsAString & newValueArg, const nsAString & attrNameArg, PRUint16 attrChangeArg)
void
moz_dom_init_mutationevent (event, eventtype, canbubble, cancelable, node, prevval, newval, attrname, attrchange)
	nsIDOMMutationEvent *event;
	nsEmbedString eventtype;
	PRBool canbubble;
	PRBool cancelable;
	nsIDOMNode *node;
	nsEmbedString prevval;
	nsEmbedString newval;
	nsEmbedString attrname;
	PRUint16 attrchange;
    CODE:
	event->InitMutationEvent(eventtype, canbubble, cancelable,
				 node, prevval, newval, attrname, attrchange);

# -----------------------------------------------------------------------------

MODULE = Mozilla::DOM	PACKAGE = Mozilla::DOM::EventTarget	PREFIX = moz_dom_

=for object Mozilla::DOM::EventTarget

Mozilla::DOM::EventTarget is a wrapper around an instance of Mozilla's
nsIDOMEventTarget interface.

 * The nsIDOMEventTarget interface is the interface implemented by all
 * event targets in the Document Object Model.
 *
 * For more information on this interface please see 
 * http://www.w3.org/TR/DOM-Level-2-Events/

Section 1.3 of the DOM Level 2 Events specification says
"the EventTarget interface is implemented by all Nodes" and
"this interface can be obtained by using binding-specific
casting methods on an instance of the Node interface", but I'm
not sure how that works yet. I guess anywhere you'd pass in
an EventTarget argument to a method, you can pass in a
L<Node|Mozilla::DOM::Node> object, and the methods for EventTarget
can be called on Node objects. (?)

Differences from the Mozilla interface: method names in StudlyCaps have been
changed to underscore_style, and instead of passing values by pointer
the value is returned.

None of the methods are implemented yet.

=cut

=for apidoc Mozilla::DOM::EventTarget::add_event_listener

=for signature $target->add_event_listener($type, $listener, $useCapture)

This method allows the registration of EventListeners on the event target.
If an L<EventListener|Mozilla::DOM::EventListener> is added to an EventTarget
while it is processing an L<Event|Mozilla::DOM::Event>, it will not be triggered
by the current actions but may be triggered during a later stage of event flow,
such as the bubbling phase.

If multiple identical EventListeners are registered on the same
EventTarget with the same parameters, the duplicate instances are
discarded. They do not cause the EventListener to be called twice,
and since they are discarded they do not need to be removed with the
L</removeEventListener> method.

=over 4

=item $type

The event type for which the user is registering. This is a string
such as 'mouse_over'.

=item $listener

The listener parameter takes an interface implemented by the user
which contains the methods to be called when the event occurs.

=item $useCapture

If true, indicates that the user wishes to initiate capture.
After initiating capture, all events of the specified type will be
dispatched to the registered L<EventListener|Mozilla::DOM::EventListener>
before being dispatched to any EventTargets beneath them in the tree.
Events which are bubbling upward through the tree will not trigger
an EventListener designated to use capture.

=back

=cut

=for apidoc Mozilla::DOM::EventTarget::remove_event_listener

=for signature $target->remove_event_listener($type, $listener, $useCapture)

This method allows the removal of event listeners from the event 
target. If an L<EventListener|Mozilla::DOM::EventListener> is removed
from an EventTarget while it is processing an event, it will not be triggered
by the current actions. EventListeners can never be invoked after being
removed. Calling removeEventListener with arguments which do not identify
any currently registered EventListener on the EventTarget has no effect.

=over 4

=item $type

Specifies the event type of the L<EventListener|Mozilla::DOM::EventListener>
being removed. This is a string such as 'key_down'.

=item $listener

Indicates the L<EventListener|Mozilla::DOM::EventListener> to be removed.

=item $useCapture

Boolean which specifies whether the L<EventListener|Mozilla::DOM::EventListener>
being removed was registered as a capturing listener or not. If a listener
was registered twice, one with capture and one without, each must be
removed separately. Removal of a capturing listener does not affect
a non-capturing version of the same listener, and vice versa.

=back

=cut

## AddEventListener(const nsAString & type, nsIDOMEventListener *listener, PRBool useCapture)
## RemoveEventListener(const nsAString & type, nsIDOMEventListener *listener, PRBool useCapture)
void
moz_dom_add_event_listener (target, type, listener, usecapture)
	nsIDOMEventTarget *target;
	nsEmbedString type;
	nsIDOMEventListener *listener;
	PRBool usecapture;
    ALIAS:
	Mozilla::DOM::EventTarget::remove_event_listener = 1
    CODE:
	switch (ix) {
		case 0:
			target->AddEventListener(type, listener, usecapture);
			break;
		case 1:
			target->RemoveEventListener(type, listener, usecapture);
			break;
		default: break;
	}

=for apidoc Mozilla::DOM::EventTarget::dispatch_event

=for signature $bool = $target->dispatch_event($event)

This method allows the dispatch of an L<Event|Mozilla::DOM::Event>
into the implementation's event model. Events dispatched in this manner
will have the same capturing and bubbling behavior as events dispatched
directly by the implementation. The target of the event is the EventTarget
on which dispatch_event is called.

=over 4

=item $event

An L<Event|Mozilla::DOM::Event> that specifies the event type, behavior,
and contextual information to be used in processing the event.

=back

The return value indicates whether any of the listeners which handled the
event called L<prevent_default|Mozilla::DOM::Event/prevent_default>.
If prevent_default was called the value is false, else the value is true.

Throws: UNSPECIFIED_EVENT_TYPE_ERR. Raised if the Event's type was 
not specified by initializing the event before dispatch_event was called.
Specification of the Event's type as null or an empty string will also
trigger this exception.

=cut

## DispatchEvent(nsIDOMEvent *evt, PRBool *_retval)
PRBool
moz_dom_dispatch_event (target, event)
	nsIDOMEventTarget *target;
	nsIDOMEvent *event;
    PREINIT:
	PRBool rv;
    CODE:
	target->DispatchEvent(event, &rv);
	RETVAL = rv;
    OUTPUT:
	RETVAL

# -----------------------------------------------------------------------------

MODULE = Mozilla::DOM	PACKAGE = Mozilla::DOM::EventListener	PREFIX = moz_dom_

=for object Mozilla::DOM::EventListener

XXX: Does this need to be wrapped?

Mozilla::DOM::EventListener is a wrapper around an instance of Mozilla's
nsIDOMEventListener interface.

 * The nsIDOMEventListener interface is a callback interface for
 * listening to events in the Document Object Model.
 *
 * For more information on this interface please see 
 * http://www.w3.org/TR/DOM-Level-2-Events/

Differences from the Mozilla interface: method names in StudlyCaps have been
changed to underscore_style, and instead of passing values by pointer
the values are returned.

None of the methods are implemented yet.

=cut

=for apidoc Mozilla::DOM::EventListener::handle_event

=for signature $listener->handle_event($event)

This method is called whenever an event occurs of the type for which 
the EventListener interface was registered.

XXX: hooboy, how the hell's this going to work?

=over 4

=item $event

The L<Event|Mozilla::DOM::Event> contains contextual information about
the event. It also contains the
L<stop_propagation|Mozilla::DOM::Event/stop_propagation> and
L<prevent_default|Mozilla::DOM::Event/prevent_default> methods
which are used in determining the event's flow and default action.

=back

=cut

## HandleEvent(nsIDOMEvent *event)

# -----------------------------------------------------------------------------

MODULE = Mozilla::DOM	PACKAGE = Mozilla::DOM::Window	PREFIX = moz_dom_

=for object Mozilla::DOM::Window

Mozilla::DOM::Window is a wrapper around an instance of Mozilla's
nsIDOMWindow interface.

 * The nsIDOMWindow interface is the primary interface for a DOM
 * window object. It represents a single window object that may
 * contain child windows if the document in the window contains a
 * HTML frameset document or if the document contains iframe elements.
 *
 * This interface is not officially defined by any standard bodies, it
 * originates from the defacto DOM Level 0 standard.

Differences from the Mozilla interface: method names in StudlyCaps have been
changed to underscore_style, and instead of passing values by pointer
the values are returned.

=cut

=for apidoc Mozilla::DOM::Window::get_name

=for signature $name = $window->get_name()

Get the name of this window.

This corresponds to window.name in JavaScript.

=cut

## GetName(nsAString & aName)
nsEmbedString
moz_dom_get_name (window)
	nsIDOMWindow *window;
    PREINIT:
	nsEmbedString name;
    CODE:
	window->GetName(name);
	RETVAL = name;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::Window::set_name

=for signature $window->set_name($name)

Set the name of this window.

"This attribute is 'replaceable' in JavaScript";
where it corresponds to window.name.

=cut

## SetName(const nsAString & aName)
void
moz_dom_set_name (window, name)
	nsIDOMWindow *window;
	nsEmbedString name;
    CODE:
	/* XXX: can this thrown an exception? */
	window->SetName(name);

=for apidoc Mozilla::DOM::Window::size_to_content

=for signature $window->size_to_content()

   * Method for sizing this window to the content in the window.

XXX: doesn't seem to work. Maybe window resize is disabled,
or maybe Gtk2 prevents it.

=cut

## SizeToContent(void)
void
moz_dom_size_to_content (window)
	nsIDOMWindow *window;
    CODE:
	window->SizeToContent();

=for apidoc Mozilla::DOM::Window::get_document

=for signature $document = $window->get_document()

   * Accessor for the document in this window.

=cut

## GetDocument(nsIDOMDocument * *aDocument)
nsIDOMDocument *
moz_dom_get_document (window)
	nsIDOMWindow *window;
    PREINIT:
	nsIDOMDocument *doc;
    CODE:
	window->GetDocument(&doc);
	RETVAL = doc;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::Window::get_frames

=for signature $document_collection = $window->get_frames()

   * Accessor for the child windows in this window.

=cut

## GetFrames(nsIDOMWindowCollection * *aFrames)
nsIDOMWindowCollection *
moz_dom_get_frames (window)
	nsIDOMWindow *window;
    PREINIT:
	nsIDOMWindowCollection *frames;
    CODE:
	window->GetFrames(&frames);
	RETVAL = frames;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::Window::get_parent

=for signature $window = $window->get_parent()

   * Accessor for this window's parent window, or the window itself if
   * there is no parent, or if the parent is of different type
   * (i.e. this does not cross chrome-content boundaries).

=cut

=for apidoc Mozilla::DOM::Window::get_top

=for signature $window = $window->get_top()

   * Accessor for the root of this hierarchy of windows. This root may
   * be the window itself if there is no parent, or if the parent is
   * of different type (i.e. this does not cross chrome-content
   * boundaries).
   *
   * This property is "replaceable" in JavaScript */

=cut

## GetParent(nsIDOMWindow * *aParent), etc.
nsIDOMWindow *
moz_dom_get_parent (window)
	nsIDOMWindow *window;
    ALIAS:
	Mozilla::DOM::Window::get_top = 1
    PREINIT:
	nsIDOMWindow *retwindow;
    CODE:
	switch (ix) {
		case 0: window->GetParent(&retwindow); break;
		case 1: window->GetTop(&retwindow); break;
		default: break;
	}
	RETVAL = retwindow;
    OUTPUT:
	RETVAL

=begin comment

  /**
   * Accessor for the object that controls whether or not scrollbars
   * are shown in this window.
   *
   * This attribute is "replaceable" in JavaScript
   */
  /* readonly attribute nsIDOMBarProp scrollbars; */
#=for apidoc Mozilla::DOM::Window::GetScrollbars
#
#=signature $window->GetScrollbars(nsIDOMBarProp * *aScrollbars)
#
#
#
#=cut
#
### GetScrollbars(nsIDOMBarProp * *aScrollbars)
#somereturn *
#moz_dom_GetScrollbars (window, aScrollbars)
#	nsIDOMwindow *window;
#	nsIDOMBarProp * *aScrollbars ;
#    PREINIT:
#	
#    CODE:
#	window->GetScrollbars(&);
#	RETVAL = ;
#    OUTPUT:
#	RETVAL


  /**
   * Set/Get the document scale factor as a multiplier on the default
   * size. When setting this attribute, a NS_ERROR_NOT_IMPLEMENTED
   * error may be returned by implementations not supporting
   * zoom. Implementations not supporting zoom should return 1.0 all
   * the time for the Get operation. 1.0 is equals normal size,
   * i.e. no zoom.
   */
  /* [noscript] attribute float textZoom; */
#=for apidoc Mozilla::DOM::Window::GetTextZoom
#
#=signature $window->GetTextZoom(float *aTextZoom)
#
#
#
#=cut
#
### GetTextZoom(float *aTextZoom)
#somereturn *
#moz_dom_GetTextZoom (window, aTextZoom)
#	nsIDOMwindow *window;
#	float *aTextZoom ;
#    PREINIT:
#	
#    CODE:
#	window->GetTextZoom(&);
#	RETVAL = ;
#    OUTPUT:
#	RETVAL

#=for apidoc Mozilla::DOM::Window::SetTextZoom
#
#=signature $window->SetTextZoom(float aTextZoom)
#
#
#
#=cut
#
### SetTextZoom(float aTextZoom)
#somereturn *
#moz_dom_SetTextZoom (window, aTextZoom)
#	nsIDOMwindow *window;
#	float aTextZoom ;
#    PREINIT:
#	
#    CODE:
#	window->SetTextZoom(&);
#	RETVAL = ;
#    OUTPUT:
#	RETVAL


  /**
   * Accessor for the current x scroll position in this window in
   * pixels.
   *
   * This attribute is "replaceable" in JavaScript
   */
  /* readonly attribute long scrollX; */
#=for apidoc Mozilla::DOM::Window::GetScrollX
#
#=signature $window->GetScrollX(PRInt32 *aScrollX)
#
#
#
#=cut
#
### GetScrollX(PRInt32 *aScrollX)
#somereturn *
#moz_dom_GetScrollX (window, aScrollX)
#	nsIDOMwindow *window;
#	PRInt32 *aScrollX ;
#    PREINIT:
#	
#    CODE:
#	window->GetScrollX(&);
#	RETVAL = ;
#    OUTPUT:
#	RETVAL


  /**
   * Accessor for the current y scroll position in this window in
   * pixels.
   *
   * This attribute is "replaceable" in JavaScript
   */
  /* readonly attribute long scrollY; */
#=for apidoc Mozilla::DOM::Window::GetScrollY
#
#=signature $window->GetScrollY(PRInt32 *aScrollY)
#
#
#
#=cut
#
### GetScrollY(PRInt32 *aScrollY)
#somereturn *
#moz_dom_GetScrollY (window, aScrollY)
#	nsIDOMwindow *window;
#	PRInt32 *aScrollY ;
#    PREINIT:
#	
#    CODE:
#	window->GetScrollY(&);
#	RETVAL = ;
#    OUTPUT:
#	RETVAL


  /**
   * Method for scrolling this window to an absolute pixel offset.
   */
  /* void scrollTo (in long xScroll, in long yScroll); */
#=for apidoc Mozilla::DOM::Window::ScrollTo
#
#=signature $window->ScrollTo(PRInt32 xScroll, PRInt32 yScroll)
#
#
#
#=cut
#
### ScrollTo(PRInt32 xScroll, PRInt32 yScroll)
#somereturn *
#moz_dom_ScrollTo (window, xScroll, yScroll)
#	nsIDOMwindow *window;
#	PRInt32 xScroll ;
#	PRInt32 yScroll ;
#    PREINIT:
#	
#    CODE:
#	window->ScrollTo(&);
#	RETVAL = ;
#    OUTPUT:
#	RETVAL


  /**
   * Method for scrolling this window to a pixel offset relative to
   * the current scroll position.
   */
  /* void scrollBy (in long xScrollDif, in long yScrollDif); */
#=for apidoc Mozilla::DOM::Window::ScrollBy
#
#=signature $window->ScrollBy(PRInt32 xScrollDif, PRInt32 yScrollDif)
#
#
#
#=cut
#
### ScrollBy(PRInt32 xScrollDif, PRInt32 yScrollDif)
#somereturn *
#moz_dom_ScrollBy (window, xScrollDif, yScrollDif)
#	nsIDOMwindow *window;
#	PRInt32 xScrollDif ;
#	PRInt32 yScrollDif ;
#    PREINIT:
#	
#    CODE:
#	window->ScrollBy(&);
#	RETVAL = ;
#    OUTPUT:
#	RETVAL


  /**
   * Method for accessing this window's selection object.
   */
  /* nsISelection getSelection (); */
#=for apidoc Mozilla::DOM::Window::GetSelection
#
#=signature $window->GetSelection(nsISelection **_retval)
#
#
#
#=cut
#
### GetSelection(nsISelection **_retval)
#somereturn *
#moz_dom_GetSelection (window, _retval)
#	nsIDOMwindow *window;
#	nsISelection **_retval ;
#    PREINIT:
#	
#    CODE:
#	window->GetSelection(&);
#	RETVAL = ;
#    OUTPUT:
#	RETVAL


  /**
   * Method for scrolling this window by a number of lines.
   */
  /* void scrollByLines (in long numLines); */
#=for apidoc Mozilla::DOM::Window::ScrollByLines
#
#=signature $window->ScrollByLines(PRInt32 numLines)
#
#
#
#=cut
#
### ScrollByLines(PRInt32 numLines)
#somereturn *
#moz_dom_ScrollByLines (window, numLines)
#	nsIDOMwindow *window;
#	PRInt32 numLines ;
#    PREINIT:
#	
#    CODE:
#	window->ScrollByLines(&);
#	RETVAL = ;
#    OUTPUT:
#	RETVAL


  /**
   * Method for scrolling this window by a number of pages.
   */
  /* void scrollByPages (in long numPages); */
#=for apidoc Mozilla::DOM::Window::ScrollByPages
#
#=signature $window->ScrollByPages(PRInt32 numPages)
#
#
#
#=cut
#
### ScrollByPages(PRInt32 numPages)
#somereturn *
#moz_dom_ScrollByPages (window, numPages)
#	nsIDOMwindow *window;
#	PRInt32 numPages ;
#    PREINIT:
#	
#    CODE:
#	window->ScrollByPages(&);
#	RETVAL = ;
#    OUTPUT:
#	RETVAL


=end comment

=cut

# -----------------------------------------------------------------------------

MODULE = Mozilla::DOM	PACKAGE = Mozilla::DOM::WindowCollection	PREFIX = moz_dom_

=for object Mozilla::DOM::WindowCollection

Mozilla::DOM::WindowCollection is a wrapper around an instance of Mozilla's
nsIDOMWindowCollection interface.

 * The nsIDOMWindowCollection interface is an interface for a
 * collection of DOM window objects.

Differences from the Mozilla interface: method names in StudlyCaps have been
changed to underscore_style, and instead of passing values by pointer
the values are returned.

=cut

=for apidoc Mozilla::DOM::WindowCollection::get_length

=for signature $len = $coll->get_length()

   * Accessor for the number of windows in this collection.

=cut

## GetLength(PRUint32 *aLength)
PRUint32
moz_dom_get_length (coll)
	nsIDOMWindowCollection *coll;
    PREINIT:
	PRUint32 len;
    CODE:
	coll->GetLength(&len);
	RETVAL = len;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::WindowCollection::item

=for signature $window = $coll->item($i)

   * Method for accessing an item in this collection by index.

=cut

## Item(PRUint32 index, nsIDOMWindow **_retval)
nsIDOMWindow *
moz_dom_item (coll, i)
	nsIDOMWindowCollection *coll;
	PRUint32 i;
    PREINIT:
	nsIDOMWindow *window;
    CODE:
	coll->Item(i, &window);
	RETVAL = window;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::WindowCollection::named_item

=for signature $window = $coll->named_item($name)

   * Method for accessing an item in this collection by window name.

=cut

## NamedItem(const nsAString & name, nsIDOMWindow **_retval)
nsIDOMWindow *
moz_dom_named_item (coll, name)
	nsIDOMWindowCollection *coll;
	nsEmbedString name;
    PREINIT:
	nsIDOMWindow *window;
    CODE:
	coll->NamedItem(name, &window);
	RETVAL = window;
    OUTPUT:
	RETVAL

# -----------------------------------------------------------------------------

MODULE = Mozilla::DOM	PACKAGE = Mozilla::DOM::Document	PREFIX = moz_dom_

=for object Mozilla::DOM::Document

Mozilla::DOM::Document is a wrapper around an instance of Mozilla's
nsIDOMDocument interface. This inherits from
L<Mozilla::DOM::Node|Mozilla::DOM::Node>.

 * The nsIDOMDocument interface represents the entire HTML or XML document.
 * Conceptually, it is the root of the document tree, and provides the 
 * primary access to the document's data.
 * Since elements, text nodes, comments, processing instructions, etc. 
 * cannot exist outside the context of a Document, the nsIDOMDocument 
 * interface also contains the factory methods needed to create these 
 * objects.
 *
 * For more information on this interface please see 
 * http://www.w3.org/TR/DOM-Level-2-Core/

Differences from the Mozilla interface: method names in StudlyCaps have been
changed to underscore_style, and instead of passing values by pointer
the values are returned.

=cut

=for apidoc Mozilla::DOM::Document::get_doctype

=signature $document_type = $document->get_doctype()



=cut

## GetDoctype(nsIDOMDocumentType * *aDoctype)
nsIDOMDocumentType *
moz_dom_get_doctype (document)
	nsIDOMDocument *document;
    PREINIT:
	nsIDOMDocumentType *doctype ;
    CODE:
	document->GetDoctype(&doctype);
	RETVAL = doctype;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::Document::get_implementation

=signature $dom_implementation = $document->get_implementation()



=cut

## GetImplementation(nsIDOMDOMImplementation * *aImplementation)
nsIDOMDOMImplementation *
moz_dom_get_implementation (document, aImplementation)
	nsIDOMDocument *document;
    PREINIT:
	nsIDOMDOMImplementation *implementation;
    CODE:
	document->GetImplementation(&implementation);
	RETVAL = implementation;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::Document::get_document_element

=signature $element = $document->get_document_element()



=cut

## GetDocumentElement(nsIDOMElement * *aDocumentElement)
nsIDOMElement *
moz_dom_get_document_element (document)
	nsIDOMDocument *document;
    PREINIT:
	nsIDOMElement *element;
    CODE:
	document->GetDocumentElement(&element);
	RETVAL = element;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::Document::create_element

=signature $element = $document->create_element($tagname)



=cut

## CreateElement(const nsAString & tagName, nsIDOMElement **_retval)
nsIDOMElement *
moz_dom_create_element (document, tagname)
	nsIDOMDocument *document;
	nsEmbedString tagname;
    PREINIT:
	nsIDOMElement *element;
    CODE:
	/* raises (DOMException) */
	document->CreateElement(tagname, &element);
	RETVAL = element;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::Document::create_document_fragment

=signature $doc_fragment = $document->create_document_fragment()



=cut

## CreateDocumentFragment(nsIDOMDocumentFragment **_retval)
nsIDOMDocumentFragment *
moz_dom_create_document_fragment (document)
	nsIDOMDocument *document;
    PREINIT:
	nsIDOMDocumentFragment *fragment;
    CODE:
	document->CreateDocumentFragment(&fragment);
	RETVAL = fragment;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::Document::create_text_node

=signature $textnode = $document->create_text_node($text)



=cut

## CreateTextNode(const nsAString & data, nsIDOMText **_retval)
nsIDOMText *
moz_dom_create_text_node (document, data)
	nsIDOMDocument *document;
	nsEmbedString data;
    PREINIT:
	nsIDOMText *node;
    CODE:
	document->CreateTextNode(data, &node);
	RETVAL = node;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::Document::create_comment

=signature $node = $document->create_comment($text)



=cut

## CreateComment(const nsAString & data, nsIDOMComment **_retval)
nsIDOMComment *
moz_dom_create_comment (document, data)
	nsIDOMDocument *document;
	nsEmbedString data;
    PREINIT:
	nsIDOMComment *comment;
    CODE:
	document->CreateComment(data, &comment);
	RETVAL = comment;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::Document::create_cdatasection

=signature $node = $document->create_cdatasection($text)



=cut

## CreateCDATASection(const nsAString & data, nsIDOMCDATASection **_retval)
nsIDOMCDATASection *
moz_dom_create_cdatasection (document, data)
	nsIDOMDocument *document;
	nsEmbedString data;
    PREINIT:
	nsIDOMCDATASection *node;
    CODE:
	/* raises (DOMException) */
	document->CreateCDATASection(data, &node);
	RETVAL = node;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::Document::create_processing_instruction

=signature $node = $node = $document->create_processing_instruction($target, $text)



=cut

## CreateProcessingInstruction(const nsAString & target, const nsAString & data, nsIDOMProcessingInstruction **_retval)
nsIDOMProcessingInstruction *
moz_dom_create_processing_instruction (document, target, data)
	nsIDOMDocument *document;
	nsEmbedString target;
	nsEmbedString data;
    PREINIT:
	nsIDOMProcessingInstruction *node;
    CODE:
	/* raises (DOMException) */
	document->CreateProcessingInstruction(target, data, &node);
	RETVAL = node;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::Document::create_attribute

=signature $node = $document->create_attribute($name)



=cut

## CreateAttribute(const nsAString & name, nsIDOMAttr **_retval)
nsIDOMAttr *
moz_dom_create_attribute (document, name)
	nsIDOMDocument *document;
	nsEmbedString name;
    PREINIT:
	nsIDOMAttr *node;
    CODE:
	/* raises (DOMException) */
	document->CreateAttribute(name, &node);
	RETVAL = node;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::Document::create_entity_reference

=signature $node = $document->create_entity_reference($name)



=cut

## CreateEntityReference(const nsAString & name, nsIDOMEntityReference **_retval)
nsIDOMEntityReference *
moz_dom_create_entity_reference (document, name)
	nsIDOMDocument *document;
	nsEmbedString name;
    PREINIT:
	nsIDOMEntityReference *node;
    CODE:
	/* raises (DOMException) */
	document->CreateEntityReference(name, &node);
	RETVAL = node;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::Document::get_elements_by_tag_name

=signature $domlist = $document->get_elements_by_tag_name($tagname)



=cut

## GetElementsByTagName(const nsAString & tagname, nsIDOMNodeList **_retval)
nsIDOMNodeList *
moz_dom_get_elements_by_tag_name (document, tagname)
	nsIDOMDocument *document;
	nsEmbedString tagname;
    PREINIT:
	nsIDOMNodeList *nodelist;
    CODE:
	document->GetElementsByTagName(tagname, &nodelist);
	RETVAL = nodelist;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::Document::import_node

=signature $document->import_node($node, $deep)

$deep = boolean

=cut

## ImportNode(nsIDOMNode *importedNode, PRBool deep, nsIDOMNode **_retval)
nsIDOMNode *
moz_dom_import_node (document, importedNode, deep)
	nsIDOMDocument *document;
	nsIDOMNode *importedNode;
	PRBool deep;
    PREINIT:
	nsIDOMNode *node;
    CODE:
	/* raises (DOMException) */
	document->ImportNode(importedNode, deep, &node);
	RETVAL = node;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::Document::create_element_ns

=signature $element = $document->create_element_ns($namespaceURI, $qualifiedName)



=cut

## CreateElementNS(const nsAString & namespaceURI, const nsAString & qualifiedName, nsIDOMElement **_retval)
nsIDOMElement *
moz_dom_create_element_ns (document, namespaceURI, qualifiedName)
	nsIDOMDocument *document;
	nsEmbedString namespaceURI;
	nsEmbedString qualifiedName;
    PREINIT:
	nsIDOMElement *element;
    CODE:
	/* raises (DOMException) */
	document->CreateElementNS(namespaceURI, qualifiedName, &element);
	RETVAL = element;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::Document::create_attribute_ns

=signature $attr = $document->create_attribute_ns($namespaceURI, $qualifiedName)



=cut

## CreateAttributeNS(const nsAString & namespaceURI, const nsAString & qualifiedName, nsIDOMAttr **_retval)
nsIDOMAttr *
moz_dom_create_attribute_ns (document, namespaceURI, qualifiedName)
	nsIDOMDocument *document;
	nsEmbedString namespaceURI;
	nsEmbedString qualifiedName;
    PREINIT:
	nsIDOMAttr *attr;
    CODE:
	/* raises (DOMException) */
	document->CreateAttributeNS(namespaceURI, qualifiedName, &attr);
	RETVAL = attr;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::Document::get_elements_by_tag_name_ns

=signature $element = $document->get_elements_by_tag_name_ns($namespaceURI, $localName)



=cut

## GetElementsByTagNameNS(const nsAString & namespaceURI, const nsAString & localName, nsIDOMNodeList **_retval)
nsIDOMNodeList *
moz_dom_get_elements_by_tag_name_ns (document, namespaceURI, localName)
	nsIDOMDocument *document;
	nsEmbedString namespaceURI;
	nsEmbedString localName;
    PREINIT:
	nsIDOMNodeList *nodelist;
    CODE:
	document->GetElementsByTagNameNS(namespaceURI, localName, &nodelist);
	RETVAL = nodelist;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::Document::get_element_by_id

=signature $element = $document->get_element_by_id($elementId)



=cut

## GetElementById(const nsAString & elementId, nsIDOMElement **_retval)
nsIDOMElement *
moz_dom_get_element_by_id (document, elementId)
	nsIDOMDocument *document;
	nsEmbedString elementId;
    PREINIT:
	nsIDOMElement *element;
    CODE:
	document->GetElementById(elementId, &element);
	RETVAL = element;
    OUTPUT:
	RETVAL

# -----------------------------------------------------------------------------

MODULE = Mozilla::DOM	PACKAGE = Mozilla::DOM::Node	PREFIX = moz_dom_

=for object Mozilla::DOM::Node

Mozilla::DOM::Node is a wrapper around an instance of Mozilla's
nsIDOMNode interface.

 * The nsIDOMNode interface is the primary datatype for the entire 
 * Document Object Model.
 * It represents a single node in the document tree.
 *
 * For more information on this interface please see 
 * http://www.w3.org/TR/DOM-Level-2-Core/

The following constants are available to be compared with L</get_node_type>.
XXX: This is currently buggy, because you have to call them as methods on the
mutation event object.

=over 4

=item ELEMENT_NODE

=item ATTRIBUTE_NODE

=item TEXT_NODE

=item CDATA_SECTION_NODE

=item ENTITY_REFERENCE_NODE

=item ENTITY_NODE

=item PROCESSING_INSTRUCTION_NODE

=item COMMENT_NODE

=item DOCUMENT_NODE

=item DOCUMENT_TYPE_NODE

=item DOCUMENT_FRAGMENT_NODE

=item NOTATION_NODE

=back

Differences from the Mozilla interface: method names in StudlyCaps have been
changed to underscore_style, and instead of passing values by pointer
the values are returned.

=cut

=begin comment

  /* readonly attribute DOMString nodeName; */
#=for apidoc Mozilla::DOM::Node::GetNodeName
#
#=signature $node->GetNodeName(nsAString & aNodeName)
#
#
#
#=cut
#
### GetNodeName(nsAString & aNodeName)
#somereturn *
#moz_dom_GetNodeName (node, aNodeName)
#	nsIDOMnode *node;
#	nsEmbedString aNodeName ;
#    PREINIT:
#	
#    CODE:
#	node->GetNodeName(&);
#	RETVAL = ;
#    OUTPUT:
#	RETVAL


  /* attribute DOMString nodeValue; */
#=for apidoc Mozilla::DOM::Node::GetNodeValue
#
#=signature $node->GetNodeValue(nsAString & aNodeValue)
#
#
#
#=cut
#
### GetNodeValue(nsAString & aNodeValue)
#somereturn *
#moz_dom_GetNodeValue (node, aNodeValue)
#	nsIDOMnode *node;
#	nsEmbedString aNodeValue ;
#    PREINIT:
#	
#    CODE:
#	node->GetNodeValue(&);
#	RETVAL = ;
#    OUTPUT:
#	RETVAL

#=for apidoc Mozilla::DOM::Node::SetNodeValue
#
#=signature $node->SetNodeValue(const nsAString & aNodeValue)
#
#
#
#=cut
#
### SetNodeValue(const nsAString & aNodeValue)
#somereturn *
#moz_dom_SetNodeValue (node, aNodeValue)
#	nsIDOMnode *node;
#	nsEmbedString aNodeValue ;
#    PREINIT:
#	
#    CODE:
#	node->SetNodeValue(&);
#	RETVAL = ;
#    OUTPUT:
#	RETVAL


  /* readonly attribute unsigned short nodeType; */
#=for apidoc Mozilla::DOM::Node::GetNodeType
#
#=signature $node->GetNodeType(PRUint16 *aNodeType)
#
#
#
#=cut
#
### GetNodeType(PRUint16 *aNodeType)
#somereturn *
#moz_dom_GetNodeType (node, aNodeType)
#	nsIDOMnode *node;
#	PRUint16 *aNodeType ;
#    PREINIT:
#	
#    CODE:
#	node->GetNodeType(&);
#	RETVAL = ;
#    OUTPUT:
#	RETVAL


  /* readonly attribute nsIDOMNode parentNode; */
#=for apidoc Mozilla::DOM::Node::GetParentNode
#
#=signature $node->GetParentNode(nsIDOMNode * *aParentNode)
#
#
#
#=cut
#
### GetParentNode(nsIDOMNode * *aParentNode)
#somereturn *
#moz_dom_GetParentNode (node, aParentNode)
#	nsIDOMnode *node;
#	nsIDOMNode * *aParentNode ;
#    PREINIT:
#	
#    CODE:
#	node->GetParentNode(&);
#	RETVAL = ;
#    OUTPUT:
#	RETVAL


  /* readonly attribute nsIDOMNodeList childNodes; */
#=for apidoc Mozilla::DOM::Node::GetChildNodes
#
#=signature $node->GetChildNodes(nsIDOMNodeList * *aChildNodes)
#
#
#
#=cut
#
### GetChildNodes(nsIDOMNodeList * *aChildNodes)
#somereturn *
#moz_dom_GetChildNodes (node, aChildNodes)
#	nsIDOMnode *node;
#	nsIDOMNodeList * *aChildNodes ;
#    PREINIT:
#	
#    CODE:
#	node->GetChildNodes(&);
#	RETVAL = ;
#    OUTPUT:
#	RETVAL


  /* readonly attribute nsIDOMNode firstChild; */
#=for apidoc Mozilla::DOM::Node::GetFirstChild
#
#=signature $node->GetFirstChild(nsIDOMNode * *aFirstChild)
#
#
#
#=cut
#
### GetFirstChild(nsIDOMNode * *aFirstChild)
#somereturn *
#moz_dom_GetFirstChild (node, aFirstChild)
#	nsIDOMnode *node;
#	nsIDOMNode * *aFirstChild ;
#    PREINIT:
#	
#    CODE:
#	node->GetFirstChild(&);
#	RETVAL = ;
#    OUTPUT:
#	RETVAL


  /* readonly attribute nsIDOMNode lastChild; */
#=for apidoc Mozilla::DOM::Node::GetLastChild
#
#=signature $node->GetLastChild(nsIDOMNode * *aLastChild)
#
#
#
#=cut
#
### GetLastChild(nsIDOMNode * *aLastChild)
#somereturn *
#moz_dom_GetLastChild (node, aLastChild)
#	nsIDOMnode *node;
#	nsIDOMNode * *aLastChild ;
#    PREINIT:
#	
#    CODE:
#	node->GetLastChild(&);
#	RETVAL = ;
#    OUTPUT:
#	RETVAL


  /* readonly attribute nsIDOMNode previousSibling; */
#=for apidoc Mozilla::DOM::Node::GetPreviousSibling
#
#=signature $node->GetPreviousSibling(nsIDOMNode * *aPreviousSibling)
#
#
#
#=cut
#
### GetPreviousSibling(nsIDOMNode * *aPreviousSibling)
#somereturn *
#moz_dom_GetPreviousSibling (node, aPreviousSibling)
#	nsIDOMnode *node;
#	nsIDOMNode * *aPreviousSibling ;
#    PREINIT:
#	
#    CODE:
#	node->GetPreviousSibling(&);
#	RETVAL = ;
#    OUTPUT:
#	RETVAL


  /* readonly attribute nsIDOMNode nextSibling; */
#=for apidoc Mozilla::DOM::Node::GetNextSibling
#
#=signature $node->GetNextSibling(nsIDOMNode * *aNextSibling)
#
#
#
#=cut
#
### GetNextSibling(nsIDOMNode * *aNextSibling)
#somereturn *
#moz_dom_GetNextSibling (node, aNextSibling)
#	nsIDOMnode *node;
#	nsIDOMNode * *aNextSibling ;
#    PREINIT:
#	
#    CODE:
#	node->GetNextSibling(&);
#	RETVAL = ;
#    OUTPUT:
#	RETVAL


  /* readonly attribute nsIDOMNamedNodeMap attributes; */
#=for apidoc Mozilla::DOM::Node::GetAttributes
#
#=signature $node->GetAttributes(nsIDOMNamedNodeMap * *aAttributes)
#
#
#
#=cut
#
### GetAttributes(nsIDOMNamedNodeMap * *aAttributes)
#somereturn *
#moz_dom_GetAttributes (node, aAttributes)
#	nsIDOMnode *node;
#	nsIDOMNamedNodeMap * *aAttributes ;
#    PREINIT:
#	
#    CODE:
#	node->GetAttributes(&);
#	RETVAL = ;
#    OUTPUT:
#	RETVAL


  /* readonly attribute nsIDOMDocument ownerDocument; */
#=for apidoc Mozilla::DOM::Node::GetOwnerDocument
#
#=signature $node->GetOwnerDocument(nsIDOMDocument * *aOwnerDocument)
#
#
#
#=cut
#
### GetOwnerDocument(nsIDOMDocument * *aOwnerDocument)
#somereturn *
#moz_dom_GetOwnerDocument (node, aOwnerDocument)
#	nsIDOMnode *node;
#	nsIDOMDocument * *aOwnerDocument ;
#    PREINIT:
#	
#    CODE:
#	node->GetOwnerDocument(&);
#	RETVAL = ;
#    OUTPUT:
#	RETVAL


  /* nsIDOMNode insertBefore (in nsIDOMNode newChild, in nsIDOMNode refChild)  raises (DOMException); */
#=for apidoc Mozilla::DOM::Node::InsertBefore
#
#=signature $node->InsertBefore(nsIDOMNode *newChild, nsIDOMNode *refChild, nsIDOMNode **_retval)
#
#
#
#=cut
#
### InsertBefore(nsIDOMNode *newChild, nsIDOMNode *refChild, nsIDOMNode **_retval)
#somereturn *
#moz_dom_InsertBefore (node, newChild, refChild, _retval)
#	nsIDOMnode *node;
#	nsIDOMNode *newChild ;
#	nsIDOMNode *refChild ;
#	nsIDOMNode **_retval ;
#    PREINIT:
#	
#    CODE:
#	node->InsertBefore(&);
#	RETVAL = ;
#    OUTPUT:
#	RETVAL


  /* nsIDOMNode replaceChild (in nsIDOMNode newChild, in nsIDOMNode oldChild)  raises (DOMException); */
#=for apidoc Mozilla::DOM::Node::ReplaceChild
#
#=signature $node->ReplaceChild(nsIDOMNode *newChild, nsIDOMNode *oldChild, nsIDOMNode **_retval)
#
#
#
#=cut
#
### ReplaceChild(nsIDOMNode *newChild, nsIDOMNode *oldChild, nsIDOMNode **_retval)
#somereturn *
#moz_dom_ReplaceChild (node, newChild, oldChild, _retval)
#	nsIDOMnode *node;
#	nsIDOMNode *newChild ;
#	nsIDOMNode *oldChild ;
#	nsIDOMNode **_retval ;
#    PREINIT:
#	
#    CODE:
#	node->ReplaceChild(&);
#	RETVAL = ;
#    OUTPUT:
#	RETVAL


  /* nsIDOMNode removeChild (in nsIDOMNode oldChild)  raises (DOMException); */
#=for apidoc Mozilla::DOM::Node::RemoveChild
#
#=signature $node->RemoveChild(nsIDOMNode *oldChild, nsIDOMNode **_retval)
#
#
#
#=cut
#
### RemoveChild(nsIDOMNode *oldChild, nsIDOMNode **_retval)
#somereturn *
#moz_dom_RemoveChild (node, oldChild, _retval)
#	nsIDOMnode *node;
#	nsIDOMNode *oldChild ;
#	nsIDOMNode **_retval ;
#    PREINIT:
#	
#    CODE:
#	node->RemoveChild(&);
#	RETVAL = ;
#    OUTPUT:
#	RETVAL


  /* nsIDOMNode appendChild (in nsIDOMNode newChild)  raises (DOMException); */
#=for apidoc Mozilla::DOM::Node::AppendChild
#
#=signature $node->AppendChild(nsIDOMNode *newChild, nsIDOMNode **_retval)
#
#
#
#=cut
#
### AppendChild(nsIDOMNode *newChild, nsIDOMNode **_retval)
#somereturn *
#moz_dom_AppendChild (node, newChild, _retval)
#	nsIDOMnode *node;
#	nsIDOMNode *newChild ;
#	nsIDOMNode **_retval ;
#    PREINIT:
#	
#    CODE:
#	node->AppendChild(&);
#	RETVAL = ;
#    OUTPUT:
#	RETVAL


  /* boolean hasChildNodes (); */
#=for apidoc Mozilla::DOM::Node::HasChildNodes
#
#=signature $node->HasChildNodes(PRBool *_retval)
#
#
#
#=cut
#
### HasChildNodes(PRBool *_retval)
#somereturn *
#moz_dom_HasChildNodes (node, _retval)
#	nsIDOMnode *node;
#	PRBool *_retval ;
#    PREINIT:
#	
#    CODE:
#	node->HasChildNodes(&);
#	RETVAL = ;
#    OUTPUT:
#	RETVAL


  /* nsIDOMNode cloneNode (in boolean deep); */
#=for apidoc Mozilla::DOM::Node::CloneNode
#
#=signature $node->CloneNode(PRBool deep, nsIDOMNode **_retval)
#
#
#
#=cut
#
### CloneNode(PRBool deep, nsIDOMNode **_retval)
#somereturn *
#moz_dom_CloneNode (node, deep, _retval)
#	nsIDOMnode *node;
#	PRBool deep ;
#	nsIDOMNode **_retval ;
#    PREINIT:
#	
#    CODE:
#	node->CloneNode(&);
#	RETVAL = ;
#    OUTPUT:
#	RETVAL


  /* void normalize (); */
#=for apidoc Mozilla::DOM::Node::Normalize
#
#=signature $node->Normalize(void)
#
#
#
#=cut
#
### Normalize(void)
#somereturn *
#moz_dom_Normalize (node, )
#	nsIDOMnode *node;
#	void ;
#    PREINIT:
#	
#    CODE:
#	node->Normalize(&);
#	RETVAL = ;
#    OUTPUT:
#	RETVAL


  /* boolean isSupported (in DOMString feature, in DOMString version); */
#=for apidoc Mozilla::DOM::Node::IsSupported
#
#=signature $node->IsSupported(const nsAString & feature, const nsAString & version, PRBool *_retval)
#
#
#
#=cut
#
### IsSupported(const nsAString & feature, const nsAString & version, PRBool *_retval)
#somereturn *
#moz_dom_IsSupported (node, feature, version, _retval)
#	nsIDOMnode *node;
#	nsEmbedString feature ;
#	nsEmbedString version ;
#	PRBool *_retval ;
#    PREINIT:
#	
#    CODE:
#	node->IsSupported(&);
#	RETVAL = ;
#    OUTPUT:
#	RETVAL


  /* readonly attribute DOMString namespaceURI; */
#=for apidoc Mozilla::DOM::Node::GetNamespaceURI
#
#=signature $node->GetNamespaceURI(nsAString & aNamespaceURI)
#
#
#
#=cut
#
### GetNamespaceURI(nsAString & aNamespaceURI)
#somereturn *
#moz_dom_GetNamespaceURI (node, aNamespaceURI)
#	nsIDOMnode *node;
#	nsEmbedString aNamespaceURI ;
#    PREINIT:
#	
#    CODE:
#	node->GetNamespaceURI(&);
#	RETVAL = ;
#    OUTPUT:
#	RETVAL


  /* attribute DOMString prefix; */
#=for apidoc Mozilla::DOM::Node::GetPrefix
#
#=signature $node->GetPrefix(nsAString & aPrefix)
#
#
#
#=cut
#
### GetPrefix(nsAString & aPrefix)
#somereturn *
#moz_dom_GetPrefix (node, aPrefix)
#	nsIDOMnode *node;
#	nsEmbedString aPrefix ;
#    PREINIT:
#	
#    CODE:
#	node->GetPrefix(&);
#	RETVAL = ;
#    OUTPUT:
#	RETVAL

#=for apidoc Mozilla::DOM::Node::SetPrefix
#
#=signature $node->SetPrefix(const nsAString & aPrefix)
#
#
#
#=cut
#
### SetPrefix(const nsAString & aPrefix)
#somereturn *
#moz_dom_SetPrefix (node, aPrefix)
#	nsIDOMnode *node;
#	nsEmbedString aPrefix ;
#    PREINIT:
#	
#    CODE:
#	node->SetPrefix(&);
#	RETVAL = ;
#    OUTPUT:
#	RETVAL


  /* readonly attribute DOMString localName; */
#=for apidoc Mozilla::DOM::Node::GetLocalName
#
#=signature $node->GetLocalName(nsAString & aLocalName)
#
#
#
#=cut
#
### GetLocalName(nsAString & aLocalName)
#somereturn *
#moz_dom_GetLocalName (node, aLocalName)
#	nsIDOMnode *node;
#	nsEmbedString aLocalName ;
#    PREINIT:
#	
#    CODE:
#	node->GetLocalName(&);
#	RETVAL = ;
#    OUTPUT:
#	RETVAL


  /* boolean hasAttributes (); */
#=for apidoc Mozilla::DOM::Node::HasAttributes
#
#=signature $node->HasAttributes(PRBool *_retval)
#
#
#
#=cut
#
### HasAttributes(PRBool *_retval)
#somereturn *
#moz_dom_HasAttributes (node, _retval)
#	nsIDOMnode *node;
#	PRBool *_retval ;
#    PREINIT:
#	
#    CODE:
#	node->HasAttributes(&);
#	RETVAL = ;
#    OUTPUT:
#	RETVAL


=end comment

=cut

# -----------------------------------------------------------------------------

MODULE = Mozilla::DOM	PACKAGE = Mozilla::DOM::NodeList	PREFIX = moz_dom_

=for object Mozilla::DOM::NodeList

Mozilla::DOM::NodeList is a wrapper around an instance of Mozilla's
nsIDOMNodeList interface.

 * The nsIDOMNodeList interface provides the abstraction of an ordered 
 * collection of nodes, without defining or constraining how this collection 
 * is implemented.
 * The items in the list are accessible via an integral index, starting from 0.
 *
 * For more information on this interface please see 
 * http://www.w3.org/TR/DOM-Level-2-Core/

Differences from the Mozilla interface: method names in StudlyCaps have been
changed to underscore_style, and instead of passing values by pointer
the values are returned.

=cut

=begin comment

  /* nsIDOMNode item (in unsigned long index); */
#=for apidoc Mozilla::DOM::NodeList::Item
#
#=signature $nodelist->Item(PRUint32 index, nsIDOMNode **_retval)
#
#
#
#=cut
#
### Item(PRUint32 index, nsIDOMNode **_retval)
#somereturn *
#moz_dom_Item (nodelist, index, _retval)
#	nsIDOMnodelist *nodelist;
#	PRUint32 index ;
#	nsIDOMNode **_retval ;
#    PREINIT:
#	
#    CODE:
#	nodelist->Item(&);
#	RETVAL = ;
#    OUTPUT:
#	RETVAL


  /* readonly attribute unsigned long length; */
#=for apidoc Mozilla::DOM::NodeList::GetLength
#
#=signature $nodelist->GetLength(PRUint32 *aLength)
#
#
#
#=cut
#
### GetLength(PRUint32 *aLength)
#somereturn *
#moz_dom_GetLength (nodelist, aLength)
#	nsIDOMnodelist *nodelist;
#	PRUint32 *aLength ;
#    PREINIT:
#	
#    CODE:
#	nodelist->GetLength(&);
#	RETVAL = ;
#    OUTPUT:
#	RETVAL


=end comment

=cut

# -----------------------------------------------------------------------------

MODULE = Mozilla::DOM	PACKAGE = Mozilla::DOM::Element	PREFIX = moz_dom_

=for object Mozilla::DOM::Element

Mozilla::DOM::Element is a wrapper around an instance of Mozilla's
nsIDOMElement interface. This inherits from
L<Mozilla::DOM::Node|Mozilla::DOM::Node>.

 * The nsIDOMElement interface represents an element in an HTML or 
 * XML document. 
 *
 * For more information on this interface please see 
 * http://www.w3.org/TR/DOM-Level-2-Core/

Differences from the Mozilla interface: method names in StudlyCaps have been
changed to underscore_style, and instead of passing values by pointer
the values are returned.

=cut

=begin comment

  /* readonly attribute DOMString tagName; */
#=for apidoc Mozilla::DOM::Element::GetTagName
#
#=signature $element->GetTagName(nsAString & aTagName)
#
#
#
#=cut
#
### GetTagName(nsAString & aTagName)
#somereturn *
#moz_dom_GetTagName (element, aTagName)
#	nsIDOMelement *element;
#	nsEmbedString aTagName ;
#    PREINIT:
#	
#    CODE:
#	element->GetTagName(&);
#	RETVAL = ;
#    OUTPUT:
#	RETVAL


  /* DOMString getAttribute (in DOMString name); */
#=for apidoc Mozilla::DOM::Element::GetAttribute
#
#=signature $element->GetAttribute(const nsAString & name, nsAString & _retval)
#
#
#
#=cut
#
### GetAttribute(const nsAString & name, nsAString & _retval)
#somereturn *
#moz_dom_GetAttribute (element, name, _retval)
#	nsIDOMelement *element;
#	nsEmbedString name ;
#	nsEmbedString _retval ;
#    PREINIT:
#	
#    CODE:
#	element->GetAttribute(&);
#	RETVAL = ;
#    OUTPUT:
#	RETVAL


  /* void setAttribute (in DOMString name, in DOMString value)  raises (DOMException); */
#=for apidoc Mozilla::DOM::Element::SetAttribute
#
#=signature $element->SetAttribute(const nsAString & name, const nsAString & value)
#
#
#
#=cut
#
### SetAttribute(const nsAString & name, const nsAString & value)
#somereturn *
#moz_dom_SetAttribute (element, name, value)
#	nsIDOMelement *element;
#	nsEmbedString name ;
#	nsEmbedString value ;
#    PREINIT:
#	
#    CODE:
#	element->SetAttribute(&);
#	RETVAL = ;
#    OUTPUT:
#	RETVAL


  /* void removeAttribute (in DOMString name)  raises (DOMException); */
#=for apidoc Mozilla::DOM::Element::RemoveAttribute
#
#=signature $element->RemoveAttribute(const nsAString & name)
#
#
#
#=cut
#
### RemoveAttribute(const nsAString & name)
#somereturn *
#moz_dom_RemoveAttribute (element, name)
#	nsIDOMelement *element;
#	nsEmbedString name ;
#    PREINIT:
#	
#    CODE:
#	element->RemoveAttribute(&);
#	RETVAL = ;
#    OUTPUT:
#	RETVAL


  /* nsIDOMAttr getAttributeNode (in DOMString name); */
#=for apidoc Mozilla::DOM::Element::GetAttributeNode
#
#=signature $element->GetAttributeNode(const nsAString & name, nsIDOMAttr **_retval)
#
#
#
#=cut
#
### GetAttributeNode(const nsAString & name, nsIDOMAttr **_retval)
#somereturn *
#moz_dom_GetAttributeNode (element, name, _retval)
#	nsIDOMelement *element;
#	nsEmbedString name ;
#	nsIDOMAttr **_retval ;
#    PREINIT:
#	
#    CODE:
#	element->GetAttributeNode(&);
#	RETVAL = ;
#    OUTPUT:
#	RETVAL


  /* nsIDOMAttr setAttributeNode (in nsIDOMAttr newAttr)  raises (DOMException); */
#=for apidoc Mozilla::DOM::Element::SetAttributeNode
#
#=signature $element->SetAttributeNode(nsIDOMAttr *newAttr, nsIDOMAttr **_retval)
#
#
#
#=cut
#
### SetAttributeNode(nsIDOMAttr *newAttr, nsIDOMAttr **_retval)
#somereturn *
#moz_dom_SetAttributeNode (element, newAttr, _retval)
#	nsIDOMelement *element;
#	nsIDOMAttr *newAttr ;
#	nsIDOMAttr **_retval ;
#    PREINIT:
#	
#    CODE:
#	element->SetAttributeNode(&);
#	RETVAL = ;
#    OUTPUT:
#	RETVAL


  /* nsIDOMAttr removeAttributeNode (in nsIDOMAttr oldAttr)  raises (DOMException); */
#=for apidoc Mozilla::DOM::Element::RemoveAttributeNode
#
#=signature $element->RemoveAttributeNode(nsIDOMAttr *oldAttr, nsIDOMAttr **_retval)
#
#
#
#=cut
#
### RemoveAttributeNode(nsIDOMAttr *oldAttr, nsIDOMAttr **_retval)
#somereturn *
#moz_dom_RemoveAttributeNode (element, oldAttr, _retval)
#	nsIDOMelement *element;
#	nsIDOMAttr *oldAttr ;
#	nsIDOMAttr **_retval ;
#    PREINIT:
#	
#    CODE:
#	element->RemoveAttributeNode(&);
#	RETVAL = ;
#    OUTPUT:
#	RETVAL


  /* nsIDOMNodeList getElementsByTagName (in DOMString name); */
#=for apidoc Mozilla::DOM::Element::GetElementsByTagName
#
#=signature $element->GetElementsByTagName(const nsAString & name, nsIDOMNodeList **_retval)
#
#
#
#=cut
#
### GetElementsByTagName(const nsAString & name, nsIDOMNodeList **_retval)
#somereturn *
#moz_dom_GetElementsByTagName (element, name, _retval)
#	nsIDOMelement *element;
#	nsEmbedString name ;
#	nsIDOMNodeList **_retval ;
#    PREINIT:
#	
#    CODE:
#	element->GetElementsByTagName(&);
#	RETVAL = ;
#    OUTPUT:
#	RETVAL


  /* DOMString getAttributeNS (in DOMString namespaceURI, in DOMString localName); */
#=for apidoc Mozilla::DOM::Element::GetAttributeNS
#
#=signature $element->GetAttributeNS(const nsAString & namespaceURI, const nsAString & localName, nsAString & _retval)
#
#
#
#=cut
#
### GetAttributeNS(const nsAString & namespaceURI, const nsAString & localName, nsAString & _retval)
#somereturn *
#moz_dom_GetAttributeNS (element, namespaceURI, localName, _retval)
#	nsIDOMelement *element;
#	nsEmbedString namespaceURI ;
#	nsEmbedString localName ;
#	nsEmbedString _retval ;
#    PREINIT:
#	
#    CODE:
#	element->GetAttributeNS(&);
#	RETVAL = ;
#    OUTPUT:
#	RETVAL


  /* void setAttributeNS (in DOMString namespaceURI, in DOMString qualifiedName, in DOMString value)  raises (DOMException); */
#=for apidoc Mozilla::DOM::Element::SetAttributeNS
#
#=signature $element->SetAttributeNS(const nsAString & namespaceURI, const nsAString & qualifiedName, const nsAString & value)
#
#
#
#=cut
#
### SetAttributeNS(const nsAString & namespaceURI, const nsAString & qualifiedName, const nsAString & value)
#somereturn *
#moz_dom_SetAttributeNS (element, namespaceURI, qualifiedName, value)
#	nsIDOMelement *element;
#	nsEmbedString namespaceURI ;
#	nsEmbedString qualifiedName ;
#	nsEmbedString value ;
#    PREINIT:
#	
#    CODE:
#	element->SetAttributeNS(&);
#	RETVAL = ;
#    OUTPUT:
#	RETVAL


  /* void removeAttributeNS (in DOMString namespaceURI, in DOMString localName)  raises (DOMException); */
#=for apidoc Mozilla::DOM::Element::RemoveAttributeNS
#
#=signature $element->RemoveAttributeNS(const nsAString & namespaceURI, const nsAString & localName)
#
#
#
#=cut
#
### RemoveAttributeNS(const nsAString & namespaceURI, const nsAString & localName)
#somereturn *
#moz_dom_RemoveAttributeNS (element, namespaceURI, localName)
#	nsIDOMelement *element;
#	nsEmbedString namespaceURI ;
#	nsEmbedString localName ;
#    PREINIT:
#	
#    CODE:
#	element->RemoveAttributeNS(&);
#	RETVAL = ;
#    OUTPUT:
#	RETVAL


  /* nsIDOMAttr getAttributeNodeNS (in DOMString namespaceURI, in DOMString localName); */
#=for apidoc Mozilla::DOM::Element::GetAttributeNodeNS
#
#=signature $element->GetAttributeNodeNS(const nsAString & namespaceURI, const nsAString & localName, nsIDOMAttr **_retval)
#
#
#
#=cut
#
### GetAttributeNodeNS(const nsAString & namespaceURI, const nsAString & localName, nsIDOMAttr **_retval)
#somereturn *
#moz_dom_GetAttributeNodeNS (element, namespaceURI, localName, _retval)
#	nsIDOMelement *element;
#	nsEmbedString namespaceURI ;
#	nsEmbedString localName ;
#	nsIDOMAttr **_retval ;
#    PREINIT:
#	
#    CODE:
#	element->GetAttributeNodeNS(&);
#	RETVAL = ;
#    OUTPUT:
#	RETVAL


  /* nsIDOMAttr setAttributeNodeNS (in nsIDOMAttr newAttr)  raises (DOMException); */
#=for apidoc Mozilla::DOM::Element::SetAttributeNodeNS
#
#=signature $element->SetAttributeNodeNS(nsIDOMAttr *newAttr, nsIDOMAttr **_retval)
#
#
#
#=cut
#
### SetAttributeNodeNS(nsIDOMAttr *newAttr, nsIDOMAttr **_retval)
#somereturn *
#moz_dom_SetAttributeNodeNS (element, newAttr, _retval)
#	nsIDOMelement *element;
#	nsIDOMAttr *newAttr ;
#	nsIDOMAttr **_retval ;
#    PREINIT:
#	
#    CODE:
#	element->SetAttributeNodeNS(&);
#	RETVAL = ;
#    OUTPUT:
#	RETVAL


  /* nsIDOMNodeList getElementsByTagNameNS (in DOMString namespaceURI, in DOMString localName); */
#=for apidoc Mozilla::DOM::Element::GetElementsByTagNameNS
#
#=signature $element->GetElementsByTagNameNS(const nsAString & namespaceURI, const nsAString & localName, nsIDOMNodeList **_retval)
#
#
#
#=cut
#
### GetElementsByTagNameNS(const nsAString & namespaceURI, const nsAString & localName, nsIDOMNodeList **_retval)
#somereturn *
#moz_dom_GetElementsByTagNameNS (element, namespaceURI, localName, _retval)
#	nsIDOMelement *element;
#	nsEmbedString namespaceURI ;
#	nsEmbedString localName ;
#	nsIDOMNodeList **_retval ;
#    PREINIT:
#	
#    CODE:
#	element->GetElementsByTagNameNS(&);
#	RETVAL = ;
#    OUTPUT:
#	RETVAL


  /* boolean hasAttribute (in DOMString name); */
#=for apidoc Mozilla::DOM::Element::HasAttribute
#
#=signature $element->HasAttribute(const nsAString & name, PRBool *_retval)
#
#
#
#=cut
#
### HasAttribute(const nsAString & name, PRBool *_retval)
#somereturn *
#moz_dom_HasAttribute (element, name, _retval)
#	nsIDOMelement *element;
#	nsEmbedString name ;
#	PRBool *_retval ;
#    PREINIT:
#	
#    CODE:
#	element->HasAttribute(&);
#	RETVAL = ;
#    OUTPUT:
#	RETVAL


  /* boolean hasAttributeNS (in DOMString namespaceURI, in DOMString localName); */
#=for apidoc Mozilla::DOM::Element::HasAttributeNS
#
#=signature $element->HasAttributeNS(const nsAString & namespaceURI, const nsAString & localName, PRBool *_retval)
#
#
#
#=cut
#
### HasAttributeNS(const nsAString & namespaceURI, const nsAString & localName, PRBool *_retval)
#somereturn *
#moz_dom_HasAttributeNS (element, namespaceURI, localName, _retval)
#	nsIDOMelement *element;
#	nsEmbedString namespaceURI ;
#	nsEmbedString localName ;
#	PRBool *_retval ;
#    PREINIT:
#	
#    CODE:
#	element->HasAttributeNS(&);
#	RETVAL = ;
#    OUTPUT:
#	RETVAL


=end comment

=cut

# -----------------------------------------------------------------------------

MODULE = Mozilla::DOM	PACKAGE = Mozilla::DOM::EntityReference	PREFIX = moz_dom_

=for object Mozilla::DOM::EntityReference

Mozilla::DOM::EntityReference is a wrapper around an instance of Mozilla's
nsIDOMEntityReference interface. This inherits from
L<Mozilla::DOM::Node|Mozilla::DOM::Node>.

Differences from the Mozilla interface: method names in StudlyCaps have been
changed to underscore_style, and instead of passing values by pointer
the values are returned.

=cut

=begin comment

 no methods

=end comment

=cut

# -----------------------------------------------------------------------------

MODULE = Mozilla::DOM	PACKAGE = Mozilla::DOM::Attr	PREFIX = moz_dom_

=for object Mozilla::DOM::Attr

Mozilla::DOM::Attr is a wrapper around an instance of Mozilla's
nsIDOMAttr interface. This inherits from
L<Mozilla::DOM::Node|Mozilla::DOM::Node>.

 * The nsIDOMAttr interface represents an attribute in an "Element" object. 
 * Typically the allowable values for the attribute are defined in a document 
 * type definition.
 * 
 * For more information on this interface please see 
 * http://www.w3.org/TR/DOM-Level-2-Core/

Differences from the Mozilla interface: method names in StudlyCaps have been
changed to underscore_style, and instead of passing values by pointer
the values are returned.

=cut

=begin comment

  /* readonly attribute DOMString name; */
#=for apidoc Mozilla::DOM::Attr::GetName
#
#=signature $attr->GetName(nsAString & aName)
#
#
#
#=cut
#
### GetName(nsAString & aName)
#somereturn *
#moz_dom_GetName (attr, aName)
#	nsIDOMattr *attr;
#	nsEmbedString aName ;
#    PREINIT:
#	
#    CODE:
#	attr->GetName(&);
#	RETVAL = ;
#    OUTPUT:
#	RETVAL


  /* readonly attribute boolean specified; */
#=for apidoc Mozilla::DOM::Attr::GetSpecified
#
#=signature $attr->GetSpecified(PRBool *aSpecified)
#
#
#
#=cut
#
### GetSpecified(PRBool *aSpecified)
#somereturn *
#moz_dom_GetSpecified (attr, aSpecified)
#	nsIDOMattr *attr;
#	PRBool *aSpecified ;
#    PREINIT:
#	
#    CODE:
#	attr->GetSpecified(&);
#	RETVAL = ;
#    OUTPUT:
#	RETVAL


  /* attribute DOMString value; */
#=for apidoc Mozilla::DOM::Attr::GetValue
#
#=signature $attr->GetValue(nsAString & aValue)
#
#
#
#=cut
#
### GetValue(nsAString & aValue)
#somereturn *
#moz_dom_GetValue (attr, aValue)
#	nsIDOMattr *attr;
#	nsEmbedString aValue ;
#    PREINIT:
#	
#    CODE:
#	attr->GetValue(&);
#	RETVAL = ;
#    OUTPUT:
#	RETVAL

#=for apidoc Mozilla::DOM::Attr::SetValue
#
#=signature $attr->SetValue(const nsAString & aValue)
#
#
#
#=cut
#
### SetValue(const nsAString & aValue)
#somereturn *
#moz_dom_SetValue (attr, aValue)
#	nsIDOMattr *attr;
#	nsEmbedString aValue ;
#    PREINIT:
#	
#    CODE:
#	attr->SetValue(&);
#	RETVAL = ;
#    OUTPUT:
#	RETVAL


  /* readonly attribute nsIDOMElement ownerElement; */
#=for apidoc Mozilla::DOM::Attr::GetOwnerElement
#
#=signature $attr->GetOwnerElement(nsIDOMElement * *aOwnerElement)
#
#
#
#=cut
#
### GetOwnerElement(nsIDOMElement * *aOwnerElement)
#somereturn *
#moz_dom_GetOwnerElement (attr, aOwnerElement)
#	nsIDOMattr *attr;
#	nsIDOMElement * *aOwnerElement ;
#    PREINIT:
#	
#    CODE:
#	attr->GetOwnerElement(&);
#	RETVAL = ;
#    OUTPUT:
#	RETVAL


=end comment

=cut

# -----------------------------------------------------------------------------

MODULE = Mozilla::DOM	PACKAGE = Mozilla::DOM::ProcessingInstruction	PREFIX = moz_dom_

=for object Mozilla::DOM::ProcessingInstruction

Mozilla::DOM::ProcessingInstruction is a wrapper around an instance of Mozilla's
nsIDOMProcessingInstruction interface. This inherits from
L<Mozilla::DOM::Node|Mozilla::DOM::Node>.

 * The nsIDOMProcessingInstruction interface represents a 
 * "processing instruction", used in XML as a way to keep processor-specific 
 * information in the text of the document.
 *
 * For more information on this interface please see 
 * http://www.w3.org/TR/DOM-Level-2-Core/

Differences from the Mozilla interface: method names in StudlyCaps have been
changed to underscore_style, and instead of passing values by pointer
the values are returned.

=cut

=begin comment

  /* readonly attribute DOMString target; */
#=for apidoc Mozilla::DOM::ProcessingInstruction::GetTarget
#
#=signature $processinginstruction->GetTarget(nsAString & aTarget)
#
#
#
#=cut
#
### GetTarget(nsAString & aTarget)
#somereturn *
#moz_dom_GetTarget (processinginstruction, aTarget)
#	nsIDOMprocessinginstruction *processinginstruction;
#	nsEmbedString aTarget ;
#    PREINIT:
#	
#    CODE:
#	processinginstruction->GetTarget(&);
#	RETVAL = ;
#    OUTPUT:
#	RETVAL


  /* attribute DOMString data; */
#=for apidoc Mozilla::DOM::ProcessingInstruction::GetData
#
#=signature $processinginstruction->GetData(nsAString & aData)
#
#
#
#=cut
#
### GetData(nsAString & aData)
#somereturn *
#moz_dom_GetData (processinginstruction, aData)
#	nsIDOMprocessinginstruction *processinginstruction;
#	nsEmbedString aData ;
#    PREINIT:
#	
#    CODE:
#	processinginstruction->GetData(&);
#	RETVAL = ;
#    OUTPUT:
#	RETVAL

#=for apidoc Mozilla::DOM::ProcessingInstruction::SetData
#
#=signature $processinginstruction->SetData(const nsAString & aData)
#
#
#
#=cut
#
### SetData(const nsAString & aData)
#somereturn *
#moz_dom_SetData (processinginstruction, aData)
#	nsIDOMprocessinginstruction *processinginstruction;
#	nsEmbedString aData ;
#    PREINIT:
#	
#    CODE:
#	processinginstruction->SetData(&);
#	RETVAL = ;
#    OUTPUT:
#	RETVAL


=end comment

=cut

# -----------------------------------------------------------------------------

MODULE = Mozilla::DOM	PACKAGE = Mozilla::DOM::CDATASection	PREFIX = moz_dom_

=for object Mozilla::DOM::CDATASection

Mozilla::DOM::CDATASection is a wrapper around an instance of Mozilla's
nsIDOMCDATASection interface. This inherits from
L<Mozilla::DOM::Text|Mozilla::DOM::Text>.

Differences from the Mozilla interface: method names in StudlyCaps have been
changed to underscore_style, and instead of passing values by pointer
the values are returned.

=cut

=begin comment

 no methods

=end comment

=cut

# -----------------------------------------------------------------------------

MODULE = Mozilla::DOM	PACKAGE = Mozilla::DOM::Comment	PREFIX = moz_dom_

=for object Mozilla::DOM::Comment

Mozilla::DOM::Comment is a wrapper around an instance of Mozilla's
nsIDOMComment interface. This inherits from
L<Mozilla::DOM::CharacterData|Mozilla::DOM::CharacterData>.

Differences from the Mozilla interface: method names in StudlyCaps have been
changed to underscore_style, and instead of passing values by pointer
the values are returned.

=cut

=begin comment

no methods

=end comment

=cut

# -----------------------------------------------------------------------------

MODULE = Mozilla::DOM	PACKAGE = Mozilla::DOM::CharacterData	PREFIX = moz_dom_

=for object Mozilla::DOM::CharacterData

Mozilla::DOM::CharacterData is a wrapper around an instance of Mozilla's
nsIDOMCharacterData interface. This inherits from
L<Mozilla::DOM::Node|Mozilla::DOM::Node>.

 * The nsIDOMCharacterData interface extends nsIDOMNode with a set of 
 * attributes and methods for accessing character data in the DOM.
 * 
 * For more information on this interface please see 
 * http://www.w3.org/TR/DOM-Level-2-Core/

Differences from the Mozilla interface: method names in StudlyCaps have been
changed to underscore_style, and instead of passing values by pointer
the values are returned.

=cut

=begin comment

  /* attribute DOMString data; */
#=for apidoc Mozilla::DOM::CharacterData::GetData
#
#=signature $characterdata->GetData(nsAString & aData)
#
#
#
#=cut
#
### GetData(nsAString & aData)
#somereturn *
#moz_dom_GetData (characterdata, aData)
#	nsIDOMcharacterdata *characterdata;
#	nsEmbedString aData ;
#    PREINIT:
#	
#    CODE:
#	characterdata->GetData(&);
#	RETVAL = ;
#    OUTPUT:
#	RETVAL

#=for apidoc Mozilla::DOM::CharacterData::SetData
#
#=signature $characterdata->SetData(const nsAString & aData)
#
#
#
#=cut
#
### SetData(const nsAString & aData)
#somereturn *
#moz_dom_SetData (characterdata, aData)
#	nsIDOMcharacterdata *characterdata;
#	nsEmbedString aData ;
#    PREINIT:
#	
#    CODE:
#	characterdata->SetData(&);
#	RETVAL = ;
#    OUTPUT:
#	RETVAL


  /* readonly attribute unsigned long length; */
#=for apidoc Mozilla::DOM::CharacterData::GetLength
#
#=signature $characterdata->GetLength(PRUint32 *aLength)
#
#
#
#=cut
#
### GetLength(PRUint32 *aLength)
#somereturn *
#moz_dom_GetLength (characterdata, aLength)
#	nsIDOMcharacterdata *characterdata;
#	PRUint32 *aLength ;
#    PREINIT:
#	
#    CODE:
#	characterdata->GetLength(&);
#	RETVAL = ;
#    OUTPUT:
#	RETVAL


  /* DOMString substringData (in unsigned long offset, in unsigned long count)  raises (DOMException); */
#=for apidoc Mozilla::DOM::CharacterData::SubstringData
#
#=signature $characterdata->SubstringData(PRUint32 offset, PRUint32 count, nsAString & _retval)
#
#
#
#=cut
#
### SubstringData(PRUint32 offset, PRUint32 count, nsAString & _retval)
#somereturn *
#moz_dom_SubstringData (characterdata, offset, count, _retval)
#	nsIDOMcharacterdata *characterdata;
#	PRUint32 offset ;
#	PRUint32 count ;
#	nsEmbedString _retval ;
#    PREINIT:
#	
#    CODE:
#	characterdata->SubstringData(&);
#	RETVAL = ;
#    OUTPUT:
#	RETVAL


  /* void appendData (in DOMString arg)  raises (DOMException); */
#=for apidoc Mozilla::DOM::CharacterData::AppendData
#
#=signature $characterdata->AppendData(const nsAString & arg)
#
#
#
#=cut
#
### AppendData(const nsAString & arg)
#somereturn *
#moz_dom_AppendData (characterdata, arg)
#	nsIDOMcharacterdata *characterdata;
#	nsEmbedString arg ;
#    PREINIT:
#	
#    CODE:
#	characterdata->AppendData(&);
#	RETVAL = ;
#    OUTPUT:
#	RETVAL


  /* void insertData (in unsigned long offset, in DOMString arg)  raises (DOMException); */
#=for apidoc Mozilla::DOM::CharacterData::InsertData
#
#=signature $characterdata->InsertData(PRUint32 offset, const nsAString & arg)
#
#
#
#=cut
#
### InsertData(PRUint32 offset, const nsAString & arg)
#somereturn *
#moz_dom_InsertData (characterdata, offset, arg)
#	nsIDOMcharacterdata *characterdata;
#	PRUint32 offset ;
#	nsEmbedString arg ;
#    PREINIT:
#	
#    CODE:
#	characterdata->InsertData(&);
#	RETVAL = ;
#    OUTPUT:
#	RETVAL


  /* void deleteData (in unsigned long offset, in unsigned long count)  raises (DOMException); */
#=for apidoc Mozilla::DOM::CharacterData::DeleteData
#
#=signature $characterdata->DeleteData(PRUint32 offset, PRUint32 count)
#
#
#
#=cut
#
### DeleteData(PRUint32 offset, PRUint32 count)
#somereturn *
#moz_dom_DeleteData (characterdata, offset, count)
#	nsIDOMcharacterdata *characterdata;
#	PRUint32 offset ;
#	PRUint32 count ;
#    PREINIT:
#	
#    CODE:
#	characterdata->DeleteData(&);
#	RETVAL = ;
#    OUTPUT:
#	RETVAL


  /* void replaceData (in unsigned long offset, in unsigned long count, in DOMString arg)  raises (DOMException); */
#=for apidoc Mozilla::DOM::CharacterData::ReplaceData
#
#=signature $characterdata->ReplaceData(PRUint32 offset, PRUint32 count, const nsAString & arg)
#
#
#
#=cut
#
### ReplaceData(PRUint32 offset, PRUint32 count, const nsAString & arg)
#somereturn *
#moz_dom_ReplaceData (characterdata, offset, count, arg)
#	nsIDOMcharacterdata *characterdata;
#	PRUint32 offset ;
#	PRUint32 count ;
#	nsEmbedString arg ;
#    PREINIT:
#	
#    CODE:
#	characterdata->ReplaceData(&);
#	RETVAL = ;
#    OUTPUT:
#	RETVAL


=end comment

=cut

# -----------------------------------------------------------------------------

MODULE = Mozilla::DOM	PACKAGE = Mozilla::DOM::Text	PREFIX = moz_dom_

=for object Mozilla::DOM::Text

Mozilla::DOM::Text is a wrapper around an instance of Mozilla's
nsIDOMText interface. This inherits from
L<Mozilla::DOM::CharacterData|Mozilla::DOM::CharacterData>.

 * The nsIDOMText interface inherits from nsIDOMCharacterData and represents 
 * the textual content (termed character data in XML) of an Element or Attr.
 *
 * For more information on this interface please see 
 * http://www.w3.org/TR/DOM-Level-2-Core/

Differences from the Mozilla interface: method names in StudlyCaps have been
changed to underscore_style, and instead of passing values by pointer
the values are returned.

=cut

=begin comment

  /* nsIDOMText splitText (in unsigned long offset)  raises (DOMException); */
#=for apidoc Mozilla::DOM::Text::SplitText
#
#=signature $text->SplitText(PRUint32 offset, nsIDOMText **_retval)
#
#
#
#=cut
#
### SplitText(PRUint32 offset, nsIDOMText **_retval)
#somereturn *
#moz_dom_SplitText (text, offset, _retval)
#	nsIDOMtext *text;
#	PRUint32 offset ;
#	nsIDOMText **_retval ;
#    PREINIT:
#	
#    CODE:
#	text->SplitText(&);
#	RETVAL = ;
#    OUTPUT:
#	RETVAL


=end comment

=cut

# -----------------------------------------------------------------------------

MODULE = Mozilla::DOM	PACKAGE = Mozilla::DOM::DocumentFragment	PREFIX = moz_dom_

=for object Mozilla::DOM::DocumentFragment

Mozilla::DOM::DocumentFragment is a wrapper around an instance of Mozilla's
nsIDOMDocumentFragment interface. This inherits from
L<Mozilla::DOM::Node|Mozilla::DOM::Node>.

Differences from the Mozilla interface: method names in StudlyCaps have been
changed to underscore_style, and instead of passing values by pointer
the values are returned.

=cut

=begin comment

no methods

=end comment

=cut

# -----------------------------------------------------------------------------

MODULE = Mozilla::DOM	PACKAGE = Mozilla::DOM::DocumentType	PREFIX = moz_dom_

=for object Mozilla::DOM::DocumentType

Mozilla::DOM::DocumentType is a wrapper around an instance of Mozilla's
nsIDOMDocumentType interface. This inherits from
L<Mozilla::DOM::Node|Mozilla::DOM::Node>.

 * Each Document has a doctype attribute whose value is either null 
 * or a DocumentType object. 
 * The nsIDOMDocumentType interface in the DOM Core provides an 
 * interface to the list of entities that are defined for the document.
 *
 * For more information on this interface please see 
 * http://www.w3.org/TR/DOM-Level-2-Core/

Differences from the Mozilla interface: method names in StudlyCaps have been
changed to underscore_style, and instead of passing values by pointer
the values are returned.

=cut

=begin comment

  /* readonly attribute DOMString name; */
#=for apidoc Mozilla::DOM::DocumentType::GetName
#
#=signature $documenttype->GetName(nsAString & aName)
#
#
#
#=cut
#
### GetName(nsAString & aName)
#somereturn *
#moz_dom_GetName (documenttype, aName)
#	nsIDOMDocumenttype *documenttype;
#	nsEmbedString aName ;
#    PREINIT:
#	
#    CODE:
#	documenttype->GetName(&);
#	RETVAL = ;
#    OUTPUT:
#	RETVAL


  /* readonly attribute nsIDOMNamedNodeMap entities; */
#=for apidoc Mozilla::DOM::DocumentType::GetEntities
#
#=signature $documenttype->GetEntities(nsIDOMNamedNodeMap * *aEntities)
#
#
#
#=cut
#
### GetEntities(nsIDOMNamedNodeMap * *aEntities)
#somereturn *
#moz_dom_GetEntities (documenttype, aEntities)
#	nsIDOMDocumenttype *documenttype;
#	nsIDOMNamedNodeMap * *aEntities ;
#    PREINIT:
#	
#    CODE:
#	documenttype->GetEntities(&);
#	RETVAL = ;
#    OUTPUT:
#	RETVAL


  /* readonly attribute nsIDOMNamedNodeMap notations; */
#=for apidoc Mozilla::DOM::DocumentType::GetNotations
#
#=signature $documenttype->GetNotations(nsIDOMNamedNodeMap * *aNotations)
#
#
#
#=cut
#
### GetNotations(nsIDOMNamedNodeMap * *aNotations)
#somereturn *
#moz_dom_GetNotations (documenttype, aNotations)
#	nsIDOMDocumenttype *documenttype;
#	nsIDOMNamedNodeMap * *aNotations ;
#    PREINIT:
#	
#    CODE:
#	documenttype->GetNotations(&);
#	RETVAL = ;
#    OUTPUT:
#	RETVAL


  /* readonly attribute DOMString publicId; */
#=for apidoc Mozilla::DOM::DocumentType::GetPublicId
#
#=signature $documenttype->GetPublicId(nsAString & aPublicId)
#
#
#
#=cut
#
### GetPublicId(nsAString & aPublicId)
#somereturn *
#moz_dom_GetPublicId (documenttype, aPublicId)
#	nsIDOMDocumenttype *documenttype;
#	nsEmbedString aPublicId ;
#    PREINIT:
#	
#    CODE:
#	documenttype->GetPublicId(&);
#	RETVAL = ;
#    OUTPUT:
#	RETVAL


  /* readonly attribute DOMString systemId; */
#=for apidoc Mozilla::DOM::DocumentType::GetSystemId
#
#=signature $documenttype->GetSystemId(nsAString & aSystemId)
#
#
#
#=cut
#
### GetSystemId(nsAString & aSystemId)
#somereturn *
#moz_dom_GetSystemId (documenttype, aSystemId)
#	nsIDOMDocumenttype *documenttype;
#	nsEmbedString aSystemId ;
#    PREINIT:
#	
#    CODE:
#	documenttype->GetSystemId(&);
#	RETVAL = ;
#    OUTPUT:
#	RETVAL


  /* readonly attribute DOMString internalSubset; */
#=for apidoc Mozilla::DOM::DocumentType::GetInternalSubset
#
#=signature $documenttype->GetInternalSubset(nsAString & aInternalSubset)
#
#
#
#=cut
#
### GetInternalSubset(nsAString & aInternalSubset)
#somereturn *
#moz_dom_GetInternalSubset (documenttype, aInternalSubset)
#	nsIDOMDocumenttype *documenttype;
#	nsEmbedString aInternalSubset ;
#    PREINIT:
#	
#    CODE:
#	documenttype->GetInternalSubset(&);
#	RETVAL = ;
#    OUTPUT:
#	RETVAL


=end comment

=cut

# -----------------------------------------------------------------------------

MODULE = Mozilla::DOM	PACKAGE = Mozilla::DOM::DOMImplementation	PREFIX = moz_dom_

=for object Mozilla::DOM::DOMImplementation

Mozilla::DOM::DOMImplementation is a wrapper around an instance of Mozilla's
nsIDOMDOMImplementation interface.

 * The nsIDOMDOMImplementation interface provides a number of methods for 
 * performing operations that are independent of any particular instance 
 * of the document object model.
 *
 * For more information on this interface please see 
 * http://www.w3.org/TR/DOM-Level-2-Core/

Differences from the Mozilla interface: method names in StudlyCaps have been
changed to underscore_style, and instead of passing values by pointer
the values are returned.

=cut

=begin comment

  /* boolean hasFeature (in DOMString feature, in DOMString version); */
#=for apidoc Mozilla::DOM::DOMImplementation::HasFeature
#
#=signature $domimplementation->HasFeature(const nsAString & feature, const nsAString & version, PRBool *_retval)
#
#
#
#=cut
#
### HasFeature(const nsAString & feature, const nsAString & version, PRBool *_retval)
#somereturn *
#moz_dom_HasFeature (domimplementation, feature, version, _retval)
#	nsIDOMdomimplementation *domimplementation;
#	nsEmbedString feature ;
#	nsEmbedString version ;
#	PRBool *_retval ;
#    PREINIT:
#	
#    CODE:
#	domimplementation->HasFeature(&);
#	RETVAL = ;
#    OUTPUT:
#	RETVAL


  /* nsIDOMDocumentType createDocumentType (in DOMString qualifiedName, in DOMString publicId, in DOMString systemId)  raises (DOMException); */
#=for apidoc Mozilla::DOM::DOMImplementation::CreateDocumentType
#
#=signature $domimplementation->CreateDocumentType(const nsAString & qualifiedName, const nsAString & publicId, const nsAString & systemId, nsIDOMDocumentType **_retval)
#
#
#
#=cut
#
### CreateDocumentType(const nsAString & qualifiedName, const nsAString & publicId, const nsAString & systemId, nsIDOMDocumentType **_retval)
#somereturn *
#moz_dom_CreateDocumentType (domimplementation, qualifiedName, publicId, systemId, _retval)
#	nsIDOMdomimplementation *domimplementation;
#	nsEmbedString qualifiedName ;
#	nsEmbedString publicId ;
#	nsEmbedString systemId ;
#	nsIDOMDocumentType **_retval ;
#    PREINIT:
#	
#    CODE:
#	domimplementation->CreateDocumentType(&);
#	RETVAL = ;
#    OUTPUT:
#	RETVAL


  /* nsIDOMDocument createDocument (in DOMString namespaceURI, in DOMString qualifiedName, in nsIDOMDocumentType doctype)  raises (DOMException); */
#=for apidoc Mozilla::DOM::DOMImplementation::CreateDocument
#
#=signature $domimplementation->CreateDocument(const nsAString & namespaceURI, const nsAString & qualifiedName, nsIDOMDocumentType *doctype, nsIDOMDocument **_retval)
#
#
#
#=cut
#
### CreateDocument(const nsAString & namespaceURI, const nsAString & qualifiedName, nsIDOMDocumentType *doctype, nsIDOMDocument **_retval)
#somereturn *
#moz_dom_CreateDocument (domimplementation, namespaceURI, qualifiedName, doctype, _retval)
#	nsIDOMdomimplementation *domimplementation;
#	nsEmbedString namespaceURI ;
#	nsEmbedString qualifiedName ;
#	nsIDOMDocumentType *doctype ;
#	nsIDOMDocument **_retval ;
#    PREINIT:
#	
#    CODE:
#	domimplementation->CreateDocument(&);
#	RETVAL = ;
#    OUTPUT:
#	RETVAL


=end comment

=cut

# -----------------------------------------------------------------------------

MODULE = Mozilla::DOM	PACKAGE = Mozilla::DOM::WebBrowser	PREFIX = moz_dom_

=for object Mozilla::DOM::WebBrowser

Mozilla::DOM::WebBrowser is a wrapper around an instance of Mozilla's
nsIWebBrowser interface.

"The nsIWebBrowser interface is implemented by web browser objects.
Embedders use this interface during initialisation to associate
the new web browser instance with the embedders chrome and
to register any listeners. The interface may also be used at runtime
to obtain the content DOM window and from that the rest of the DOM."

Currently only the GetContentDOMWindow method is implemented.

=cut

=for apidoc Mozilla::DOM::WebBrowser::get_content_domwindow

=signature $domwindow = $browser->get_content_domwindow

Gets the top-level DOM L<Window|Mozilla::DOM::Window>.
The embedder may walk the entire DOM starting from this value.

=cut

## GetContentDOMWindow(nsIDOMWindow * *aContentDOMWindow)
nsIDOMWindow *
moz_dom_get_content_domwindow (browser)
	nsIWebBrowser *browser
    PREINIT:
	nsIDOMWindow *window;
    CODE:
	browser->GetContentDOMWindow(&window);
	if (!window)
		XSRETURN_UNDEF;
	else
		RETVAL = window;
    OUTPUT:
	RETVAL
