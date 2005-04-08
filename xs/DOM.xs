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
 * $CVSHeader: Mozilla-DOM/xs/DOM.xs,v 1.11 2005/04/08 03:01:14 slanning Exp $
 */

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
MOZDOM_DEF_DOM_TYPEMAPPERS(NamedNodeMap)
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

=cut

=for apidoc Mozilla::DOM::AbstractView::GetDocument

=for signature $docview = $view->GetDocument

Gets a Mozilla::DOM::DocumentView (not sure if this is necessary/useful).

I don't know what a "view" is.

=cut

## GetDocument(nsIDOMDocumentView * *aDocument)
nsIDOMDocumentView *
moz_dom_GetDocument (view)
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

=cut

=for apidoc Mozilla::DOM::DocumentView::GetDefaultView

=for signature $view = $docview->GetDefaultView

Gets a Mozilla::DOM::AbstractView (not sure if this is necessary/useful).

I don't know what a "view" is.

=cut

## GetDefaultView(nsIDOMAbstractView * *aDefaultView);
nsIDOMAbstractView *
moz_dom_GetDefaultView (docview)
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
 * L<http:E<sol>E<sol>www.w3.orgE<sol>TRE<sol>DOM-Level-2-EventsE<sol>>

The constants CAPTURING_PHASE, AT_TARGET, and BUBBLING_PHASE are available
for comparing with L</GetEventPhase>. Currently these are accessed through
the (mouse or key) event object, like $event->AT_TARGET, but maybe they
should be exportable class constants (if I can figure out how to do that).

=cut

=for apidoc Mozilla::DOM::Event::GetType

=for signature $type = $event->GetType

The name of the event (case-insensitive). The name must be an XML name.

=cut

## GetType(nsAString & aType)
nsEmbedString
moz_dom_GetType (event)
	nsIDOMEvent *event;
    PREINIT:
	nsEmbedString type;
    CODE:
	event->GetType(type);
	RETVAL = type;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::Event::GetTarget

=for signature $target = $event->GetTarget

Get the L<EventTarget|Mozilla::DOM::EventTarget>
to which the Event was originally dispatched.

=cut

=for apidoc Mozilla::DOM::Event::GetCurrentTarget

=for signature $target = $event->GetCurrentTarget

Get the L<EventTarget|Mozilla::DOM::EventTarget>
whose L<EventListener|Mozilla::DOM::EventListener>s
are currently being processed. This is particularly useful during capturing
and bubbling.

=cut

## GetTarget(nsIDOMEventTarget * *aTarget), etc.
nsIDOMEventTarget *
moz_dom_GetTarget (event)
	nsIDOMEvent *event
    ALIAS:
	Mozilla::DOM::Event::GetCurrentTarget = 1
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

=for apidoc Mozilla::DOM::Event::GetEventPhase

=for signature $phase = $event->GetEventPhase

Get which phase of event flow is currently being evaluated.

=cut

## GetEventPhase(PRUint16 *aEventPhase)
PRUint16
moz_dom_GetEventPhase (event)
	nsIDOMEvent *event;
    PREINIT:
	PRUint16 phase;
    CODE:
	event->GetEventPhase(&phase);
	RETVAL = phase;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::Event::GetBubbles

=for signature $bool = $event->GetBubbles

Indicates whether or not an event is a bubbling event. If the
event can bubble the value is true, else the value is false.

=cut

=for apidoc Mozilla::DOM::Event::GetCancelable

=for signature $bool = $event->GetCancelable

Indicates whether or not an event can have its default action
prevented. If the default action can be prevented the value is true,
else the value is false.

=cut

## GetBubbles(PRBool *aBubbles), etc.
PRBool
moz_dom_GetBubbles (event)
	nsIDOMEvent *event;
    ALIAS:
	Mozilla::DOM::Event::GetCancelable = 1
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

=for apidoc Mozilla::DOM::Event::GetTimeStamp

=for signature $event->GetTimeStamp

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
moz_dom_GetTimeStamp (event)
	nsIDOMEvent *event;
    PREINIT:
	DOMTimeStamp ts;
    CODE:
	event->GetTimeStamp(&ts);
	RETVAL = ts;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::Event::StopPropagation

=for signature $event->StopPropagation

This method is used prevent further propagation of an
event during event flow. If this method is called by any
L<EventListener|Mozilla::DOM::EventListener>
the event will cease propagating
through the tree. The event will complete dispatch to all listeners
on the current L<EventTarget|Mozilla::DOM::EventTarget>
before event flow stops.
This method may be used during any stage of event flow.

=cut

=for apidoc Mozilla::DOM::Event::PreventDefault

=for signature $event->PreventDefault

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
moz_dom_StopPropagation (event)
	nsIDOMEvent *event;
    ALIAS:
	Mozilla::DOM::Event::PreventDefault = 1
    CODE:
	switch (ix) {
		case 0: event->StopPropagation(); break;
		case 1: event->PreventDefault(); break;
		default: break;
	}

=for apidoc Mozilla::DOM::Event::InitEvent

=for signature $event->InitEvent($eventType, $canbubble, $cancelable)

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
L<CreateEvent|Mozilla::DOM::DocumentEvent/CreateEvent> method.
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
moz_dom_InitEvent (event, eventtype, canbubble, cancelable)
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
 * L<http:E<sol>E<sol>www.w3.orgE<sol>TRE<sol>DOM-Level-2-EventsE<sol>>

=cut

=for apidoc Mozilla::DOM::UIEvent::GetDetail

=for signature $int = $event->GetDetail

I don't know what a "detail" is. (Apparently it isn't used during
dom_mouse_over or dom_mouse_out signals.)

=cut

## GetDetail(PRInt32 *aDetail)
PRInt32
moz_dom_GetDetail (event)
	nsIDOMUIEvent *event;
    PREINIT:
	PRInt32 detail;
    CODE:
	event->GetDetail(&detail);
	RETVAL = detail;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::UIEvent::GetView

=for signature $abstract_view = $event->GetView

I don't know what a "view" is.

=cut

## GetView(nsIDOMAbstractView * *aView)
nsIDOMAbstractView *
moz_dom_GetView (event)
	nsIDOMUIEvent *event;
    PREINIT:
	nsIDOMAbstractView *view;
    CODE:
	event->GetView(&view);
	RETVAL = view;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::UIEvent::InitUievent

=for signature $event->InitUievent($eventType, $canbubble, $cancelable, $abstractView, $detail)

See L<Event::InitEvent|Mozilla::DOM::Event::InitEvent> for more
information. This method is basically the same, but with two
extra arguments.
(XXX: add docs for args)

=cut

## InitUIEvent(const nsAString & typeArg, PRBool canBubbleArg, PRBool cancelableArg, nsIDOMAbstractView *viewArg, PRInt32 detailArg)
void
moz_dom_InitUIEvent (event, eventtype, canbubble, cancelable, view, detail)
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
 * L<http:E<sol>E<sol>www.w3.orgE<sol>TRE<sol>DOM-Level-2-EventsE<sol>>

(In particular, sections 1.5 and 1.6. Very important to read that
if you want to understand how to create an L<Event|Mozilla::DOM::Event>.)

=cut

=for apidoc Mozilla::DOM::DocumentEvent::CreateEvent

=for signature $domevent = $docevent->CreateEvent($eventType)

Where do you get a "DocumentEvent" object from? It seems that
it's the same as a L<Document|Mozilla::DOM::Document> object,
but I didn't confirm that yet.

$event_type is a string, one of 'Events', 'UIEvents',
'HTMLEvents', 'MutationEvents', 'MouseEvents'. See section 1.6 of
the DOM Level 2 specs. Apparently 'KeyEvents' come later in
DOM Level 3; maybe nsIDOM3DocumentEvent is necessary for those.

The return value is an L<Event|Mozilla::DOM::Event> object.
You can then call L<InitEvent|Mozilla::DOM::Event/InitEvent>
(XXX: but what about InitUIEvent, InitMouseEvent, etc.) on that object,
followed by L<DispatchEvent|Mozilla::DOM::EventTarget/DispatchEvent>.

=cut

## CreateEvent(const nsAString & eventType, nsIDOMEvent **_retval)
nsIDOMEvent *
moz_dom_CreateEvent (docevent, eventtype)
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
 * L<http:E<sol>E<sol>www.w3.orgE<sol>TRE<sol>DOM-Level-2-EventsE<sol>>

=cut

=for see_also F<E<sol>usrE<sol>includeE<sol>mozillaE<sol>nsIDOMMouseEvent.h>
=cut

=for see_also section 1.6.2 of the DOM level 2 specification
=cut

=for apidoc Mozilla::DOM::MouseEvent::GetScreenX

=for signature $x = $event->GetScreenX

This function gets the X coordinate where the mouse was clicked
on the screen, i.e. your desktop. X = 0 is at the left and increases
to the right.

=cut

=for apidoc Mozilla::DOM::MouseEvent::GetScreenY

=for signature $y = $event->GetScreenY

This function gets the Y coordinate where the mouse was clicked
on the screen, i.e. your desktop. Y = 0 is at the top and increases
downward.

=cut

=for apidoc Mozilla::DOM::MouseEvent::GetClientX

=for signature $x = $event->GetClientX

This function gets the X coordinate where the mouse was clicked on the
client, i.e. the Gtk2::MozEmbed window. X = 0 is at the left and
increases to the right.

Note: this number might be negative on L<Gtk2::MozEmbed::main/dom_mouse_out>
events when the mouse leaves the Gtk2::MozEmbed widget but hasn't left the
application window.

=cut

=for apidoc Mozilla::DOM::MouseEvent::GetClientY

=for signature $y = $event->GetClientY

This function gets the Y coordinate where the mouse was clicked on the
client, i.e. the Gtk2::MozEmbed window. Y = 0 is at the top and increases
downward.

Note: this number might be negative on L<Gtk2::MozEmbed::main/dom_mouse_out>
events when the mouse leaves the Gtk2::MozEmbed widget but hasn't left the
application window.

=cut

## GetScreenX(PRInt32 *aScreenX), etc.
PRInt32
moz_dom_GetScreenX (event)
	nsIDOMMouseEvent *event;
    ALIAS:
	Mozilla::DOM::MouseEvent::GetScreenY = 1
	Mozilla::DOM::MouseEvent::GetClientX = 2
	Mozilla::DOM::MouseEvent::GetClientY = 3
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

=for apidoc Mozilla::DOM::MouseEvent::GetCtrlKey

=for signature $bool = $event->GetCtrlKey

This function returns true if the Ctrl key was held down
when the mouse event occured.

=cut

=for apidoc Mozilla::DOM::MouseEvent::GetShiftKey

=for signature $bool = $event->GetShiftKey

This function returns true if the Shift key was held down
when the mouse event occured.

=cut

=for apidoc Mozilla::DOM::MouseEvent::GetAltKey

=for signature $bool = $event->GetAltKey

This function returns true if the Alt key was held down
when the mouse event occured. (Note: I found this to not
be strictly true.)

=cut

=for apidoc Mozilla::DOM::MouseEvent::GetMetaKey

=for signature $bool = $event->GetMetaKey

This function returns true if the Meta key was held down
when the mouse event occured.

=cut

## GetCtrlKey(PRBool *aCtrlKey), etc.
PRBool
moz_dom_GetCtrlKey (event)
	nsIDOMMouseEvent *event;
    ALIAS:
	Mozilla::DOM::MouseEvent::GetShiftKey = 1
	Mozilla::DOM::MouseEvent::GetAltKey = 2
	Mozilla::DOM::MouseEvent::GetMetaKey = 3
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

=for apidoc Mozilla::DOM::MouseEvent::GetButton

=for signature $button = $event->GetButton

This function gets a number representing which mouse button was pressed.
With three-button mice: left button = 0, middle button = 1, and
right button = 2. (With two-button mice, there is no middle button,
and with one-button mice there is only a left button.)

Note: this is only valid for L<Gtk2::MozEmbed::main/dom_mouse_click> events.

=cut

## GetButton(PRUint16 *aButton)
PRUint16
moz_dom_GetButton (event)
	nsIDOMMouseEvent *event;
    PREINIT:
	PRUint16 button;
    CODE:
	event->GetButton(&button);
	RETVAL = button;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::MouseEvent::GetRelatedTarget

=for signature $target = $event->GetRelatedTarget

Gets an L<EventTarget|Mozilla::DOM::EventTarget>,
but I don't know what's "related" about it since I didn't
find any documentation.

=cut

## GetRelatedTarget(nsIDOMEventTarget * *aRelatedTarget)
nsIDOMEventTarget *
moz_dom_GetTarget (event)
	nsIDOMMouseEvent *event
    PREINIT:
	nsIDOMEventTarget *target;
    CODE:
	event->GetRelatedTarget(&target);
	RETVAL = target;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::MouseEvent::InitMouseEvent

=for signature $event->InitMouseEvent($eventType, $canbubble, $cancelable, $abstractView, $detail, $screenx, $screeny, $clientx, $clienty, $ctrlkey, $altkey, $shiftkey, $metakey, $button, $target)

See L<Event::InitEvent|Mozilla::DOM::Event::InitEvent> for more
information. This method is basically the same as L<InitUIEvent>,
but with ten extra arguments. (!)
(XXX: add docs for args)

=cut

## XXX: duh, this XSUB could be shortened, no doubt
## InitMouseEvent(const nsAString & typeArg, PRBool canBubbleArg, PRBool cancelableArg, nsIDOMAbstractView *viewArg, PRInt32 detailArg, PRInt32 screenXArg, PRInt32 screenYArg, PRInt32 clientXArg, PRInt32 clientYArg, PRBool ctrlKeyArg, PRBool altKeyArg, PRBool shiftKeyArg, PRBool metaKeyArg, PRUint16 buttonArg, nsIDOMEventTarget *relatedTargetArg)
void
moz_dom_InitMouseEvent (event, eventtype, canbubble, cancelable, view, detail, screenx, screeny, clientx, clienty, ctrlkey, altkey, shiftkey, metakey, button, target)
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

The following constants are available to be compared with L</GetKeyCode>.
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

=for apidoc Mozilla::DOM::KeyEvent::GetCharCode

=for signature $char_code = $event->GetCharCode

This function gets the character code, which is the Unicode number
representing that character (e.g. 'a' is 97). For example, you could
pass this number to the `chr' function in Perl.

=cut

=for apidoc Mozilla::DOM::KeyEvent::GetKeyCode

=for signature $key_code = $event->GetKeyCode

This function gets the key code for "special" keys, such as the function
keys (e.g., F3), caps lock, right arrow, etc.

=cut

## GetCharCode(PRUint32 *aCharCode), etc.
PRUint32
moz_dom_GetCharCode (event)
	nsIDOMKeyEvent *event;
    ALIAS:
	Mozilla::DOM::KeyEvent::GetKeyCode = 1
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

=for apidoc Mozilla::DOM::KeyEvent::GetCtrlKey

=for signature $bool = $event->GetCtrlKey

This function returns true if the Ctrl key was held down
when the key event occured.

=cut

=for apidoc Mozilla::DOM::KeyEvent::GetShiftKey

=for signature $bool = $event->GetShiftKey

This function returns true if the Shift key was held down
when the key event occured.

=cut

=for apidoc Mozilla::DOM::KeyEvent::GetAltKey

=for signature $bool = $event->GetAltKey

This function returns true if the Alt key was held down
when the key event occured. (Note: I found this to not
be strictly true.)

=cut

=for apidoc Mozilla::DOM::KeyEvent::GetMetaKey

=for signature $bool = $event->GetMetaKey

This function returns true if the Meta key was held down
when the key event occured.

=cut

## GetCtrlKey(PRBool *aCtrlKey), etc.
PRBool
moz_dom_GetCtrlKey (event)
	nsIDOMKeyEvent *event;
    ALIAS:
	Mozilla::DOM::KeyEvent::GetShiftKey = 1
	Mozilla::DOM::KeyEvent::GetAltKey = 2
	Mozilla::DOM::KeyEvent::GetMetaKey = 3
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

=for apidoc Mozilla::DOM::KeyEvent::InitKeyEvent

=for signature $event->InitKeyEvent($eventType, $canbubble, $cancelable, $abstractView, $ctrlkey, $altkey, $shiftkey, $metakey, $keycode, $charcode)

See L<Event::InitEvent|Mozilla::DOM::Event/InitEvent> for more
information. This method is basically the same as L<InitEvent>,
but with seven extra arguments.
(XXX: add docs for args)

=cut

## XXX: duh, this XSUB could be shortened, no doubt
## InitKeyEvent(const nsAString & typeArg, PRBool canBubbleArg, PRBool cancelableArg, nsIDOMAbstractView *viewArg, PRBool ctrlKeyArg, PRBool altKeyArg, PRBool shiftKeyArg, PRBool metaKeyArg, PRUint32 keyCodeArg, PRUint32 charCodeArg)
void
moz_dom_InitKeyEvent (event, eventtype, canbubble, cancelable, view, ctrlkey, altkey, shiftkey, metakey, keycode, charcode)
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

The following constants are available to be compared with L</GetAttrChange>.
XXX: This is currently buggy, because you have to call them as methods on the
mutation event object.

=over 4

=item MODIFICATION

=item ADDITION

=item REMOVAL

=back

=cut

=begin comment

  /* readonly attribute nsIDOMNode relatedNode; */
#=for apidoc Mozilla::DOM::MutationEvent::GetRelatedNode
#
#=for signature $mutationevent->GetRelatedNode(nsIDOMNode * *aRelatedNode)
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
#=for signature $mutationevent->GetPrevValue(nsAString & aPrevValue)
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
#=for signature $mutationevent->GetNewValue(nsAString & aNewValue)
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
#=for signature $mutationevent->GetAttrName(nsAString & aAttrName)
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
#=for signature $mutationevent->GetAttrChange(PRUint16 *aAttrChange)
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

=for apidoc Mozilla::DOM::MutationEvent::InitMutationEvent

=for signature $event->InitMutationEvent($eventType, $canbubble, $cancelable, $node, $prevValue, $newValue, $attrName, $attrChange)

See L<Event::InitEvent|Mozilla::DOM::Event/InitEvent> for more
information. This method is basically the same as InitEvent,
but with five extra arguments.
(XXX: add docs for args)

=cut

## XXX: duh, this XSUB could be shortened, no doubt
## InitMutationEvent(const nsAString & typeArg, PRBool canBubbleArg, PRBool cancelableArg, nsIDOMNode *relatedNodeArg, const nsAString & prevValueArg, const nsAString & newValueArg, const nsAString & attrNameArg, PRUint16 attrChangeArg)
void
moz_dom_InitMutationEvent (event, eventtype, canbubble, cancelable, node, prevval, newval, attrname, attrchange)
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
 * L<http:E<sol>E<sol>www.w3.orgE<sol>TRE<sol>DOM-Level-2-EventsE<sol>>

Section 1.3 of the DOM Level 2 Events specification says
"the EventTarget interface is implemented by all Nodes" and
"this interface can be obtained by using binding-specific
casting methods on an instance of the Node interface", but I'm
not sure how that works yet. I guess anywhere you'd pass in
an EventTarget argument to a method, you can pass in a
L<Node|Mozilla::DOM::Node> object, and the methods for EventTarget
can be called on Node objects. (?)

None of the methods are implemented yet.

=cut

=for apidoc Mozilla::DOM::EventTarget::AddEventListener

=for signature $target->AddEventListener($type, $listener, $useCapture)

This method allows the registration of EventListeners on the event target.
If an L<EventListener|Mozilla::DOM::EventListener> is added to an EventTarget
while it is processing an L<Event|Mozilla::DOM::Event>, it will not be triggered
by the current actions but may be triggered during a later stage of event flow,
such as the bubbling phase.

If multiple identical EventListeners are registered on the same
EventTarget with the same parameters, the duplicate instances are
discarded. They do not cause the EventListener to be called twice,
and since they are discarded they do not need to be removed with the
L</RemoveEventListener> method.

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

=for apidoc Mozilla::DOM::EventTarget::RemoveEventListener

=for signature $target->RemoveEventListener($type, $listener, $useCapture)

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
moz_dom_AddEventListener (target, type, listener, usecapture)
	nsIDOMEventTarget *target;
	nsEmbedString type;
	nsIDOMEventListener *listener;
	PRBool usecapture;
    ALIAS:
	Mozilla::DOM::EventTarget::RemoveEventListener = 1
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

=for apidoc Mozilla::DOM::EventTarget::DispatchEvent

=for signature $bool = $target->DispatchEvent($event)

This method allows the dispatch of an L<Event|Mozilla::DOM::Event>
into the implementation's event model. Events dispatched in this manner
will have the same capturing and bubbling behavior as events dispatched
directly by the implementation. The target of the event is the EventTarget
on which DispatchEvent is called.

=over 4

=item $event

An L<Event|Mozilla::DOM::Event> that specifies the event type, behavior,
and contextual information to be used in processing the event.

=back

The return value indicates whether any of the listeners which handled the
event called L<PreventDefault|Mozilla::DOM::Event/PreventDefault>.
If PreventDefault was called the value is false, else the value is true.

Throws: UNSPECIFIED_EVENT_TYPE_ERR. Raised if the Event's type was 
not specified by initializing the event before dispatch_event was called.
Specification of the Event's type as null or an empty string will also
trigger this exception.

=cut

## DispatchEvent(nsIDOMEvent *evt, PRBool *_retval)
PRBool
moz_dom_DispatchEvent (target, event)
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

Mozilla::DOM::EventListener is a wrapper around an instance of Mozilla's
nsIDOMEventListener interface.

 * The nsIDOMEventListener interface is a callback interface for
 * listening to events in the Document Object Model.
 *
 * For more information on this interface please see 
 * L<http:E<sol>E<sol>www.w3.orgE<sol>TRE<sol>DOM-Level-2-EventsE<sol>>

None of the methods are implemented yet.

=cut

=for apidoc Mozilla::DOM::EventListener::HandleEvent

=for signature $listener->HandleEvent($event)

This method is called whenever an event occurs of the type for which 
the EventListener interface was registered.

XXX: hooboy, how the hell's this going to work?

=over 4

=item $event

The L<Event|Mozilla::DOM::Event> contains contextual information about
the event. It also contains the
L<StopPropagation|Mozilla::DOM::Event/StopPropagation> and
L<PreventDefault|Mozilla::DOM::Event/PreventDefault> methods
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

=cut

=for apidoc Mozilla::DOM::Window::GetName

=for signature $name = $window->GetName()

Get the name of this window.

This corresponds to window.name in JavaScript.

=cut

## GetName(nsAString & aName)
nsEmbedString
moz_dom_GetName (window)
	nsIDOMWindow *window;
    PREINIT:
	nsEmbedString name;
    CODE:
	window->GetName(name);
	RETVAL = name;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::Window::SetName

=for signature $window->SetName($name)

Set the name of this window.

"This attribute is 'replaceable' in JavaScript";
where it corresponds to window.name.

=cut

## SetName(const nsAString & aName)
void
moz_dom_SetName (window, name)
	nsIDOMWindow *window;
	nsEmbedString name;
    CODE:
	/* XXX: can this thrown an exception? */
	window->SetName(name);

=for apidoc Mozilla::DOM::Window::SizeToContent

=for signature $window->SizeToContent()

   * Method for sizing this window to the content in the window.

XXX: doesn't seem to work. Maybe window resize is disabled,
or maybe Gtk2 prevents it.

=cut

## SizeToContent(void)
void
moz_dom_SizeToContent (window)
	nsIDOMWindow *window;
    CODE:
	window->SizeToContent();

=for apidoc Mozilla::DOM::Window::GetDocument

=for signature $document = $window->GetDocument()

   * Accessor for the document in this window.

=cut

## GetDocument(nsIDOMDocument * *aDocument)
nsIDOMDocument *
moz_dom_GetDocument (window)
	nsIDOMWindow *window;
    PREINIT:
	nsIDOMDocument *doc;
    CODE:
	window->GetDocument(&doc);
	RETVAL = doc;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::Window::GetFrames

=for signature $document_collection = $window->GetFrames()

   * Accessor for the child windows in this window.

=cut

## GetFrames(nsIDOMWindowCollection * *aFrames)
nsIDOMWindowCollection *
moz_dom_GetFrames (window)
	nsIDOMWindow *window;
    PREINIT:
	nsIDOMWindowCollection *frames;
    CODE:
	window->GetFrames(&frames);
	RETVAL = frames;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::Window::GetParent

=for signature $window = $window->GetParent()

   * Accessor for this window's parent window, or the window itself if
   * there is no parent, or if the parent is of different type
   * (i.e. this does not cross chrome-content boundaries).

=cut

=for apidoc Mozilla::DOM::Window::GetTop

=for signature $window = $window->GetTop()

   * Accessor for the root of this hierarchy of windows. This root may
   * be the window itself if there is no parent, or if the parent is
   * of different type (i.e. this does not cross chrome-content
   * boundaries).
   *
   * This property is "replaceable" in JavaScript */

=cut

## GetParent(nsIDOMWindow * *aParent), etc.
nsIDOMWindow *
moz_dom_GetParent (window)
	nsIDOMWindow *window;
    ALIAS:
	Mozilla::DOM::Window::GetTop = 1
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
#=for signature $window->GetScrollbars(nsIDOMBarProp * *aScrollbars)
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
#=for signature $window->GetTextZoom(float *aTextZoom)
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
#=for signature $window->SetTextZoom(float aTextZoom)
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
#=for signature $window->GetScrollX(PRInt32 *aScrollX)
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
#=for signature $window->GetScrollY(PRInt32 *aScrollY)
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
#=for signature $window->ScrollTo(PRInt32 xScroll, PRInt32 yScroll)
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
#=for signature $window->ScrollBy(PRInt32 xScrollDif, PRInt32 yScrollDif)
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
#=for signature $window->GetSelection(nsISelection **_retval)
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
#=for signature $window->ScrollByLines(PRInt32 numLines)
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
#=for signature $window->ScrollByPages(PRInt32 numPages)
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

=cut

=for apidoc Mozilla::DOM::WindowCollection::GetLength

=for signature $len = $coll->GetLength()

   * Accessor for the number of windows in this collection.

=cut

## GetLength(PRUint32 *aLength)
PRUint32
moz_dom_GetLength (coll)
	nsIDOMWindowCollection *coll;
    PREINIT:
	PRUint32 len;
    CODE:
	coll->GetLength(&len);
	RETVAL = len;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::WindowCollection::Item

=for signature $window = $coll->Item($i)

   * Method for accessing an item in this collection by index.

=cut

## Item(PRUint32 index, nsIDOMWindow **_retval)
nsIDOMWindow *
moz_dom_Item (coll, i)
	nsIDOMWindowCollection *coll;
	PRUint32 i;
    PREINIT:
	nsIDOMWindow *window;
    CODE:
	coll->Item(i, &window);
	RETVAL = window;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::WindowCollection::NamedItem

=for signature $window = $coll->NamedItem($name)

   * Method for accessing an item in this collection by window name.

=cut

## NamedItem(const nsAString & name, nsIDOMWindow **_retval)
nsIDOMWindow *
moz_dom_NamedItem (coll, name)
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
 * L<http:E<sol>E<sol>www.w3.orgE<sol>TRE<sol>DOM-Level-2-CoreE<sol>>

=cut

=for apidoc Mozilla::DOM::Document::GetDoctype

=for signature $document_type = $document->GetDoctype()



=cut

## GetDoctype(nsIDOMDocumentType * *aDoctype)
nsIDOMDocumentType *
moz_dom_GetDoctype (document)
	nsIDOMDocument *document;
    PREINIT:
	nsIDOMDocumentType *doctype ;
    CODE:
	document->GetDoctype(&doctype);
	RETVAL = doctype;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::Document::GetImplementation

=for signature $dom_implementation = $document->GetImplementation()



=cut

## GetImplementation(nsIDOMDOMImplementation * *aImplementation)
nsIDOMDOMImplementation *
moz_dom_GetImplementation (document)
	nsIDOMDocument *document;
    PREINIT:
	nsIDOMDOMImplementation *implementation;
    CODE:
	document->GetImplementation(&implementation);
	RETVAL = implementation;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::Document::GetDocumentElement

=for signature $element = $document->GetDocumentElement()



=cut

## GetDocumentElement(nsIDOMElement * *aDocumentElement)
nsIDOMElement *
moz_dom_GetDocumentElement (document)
	nsIDOMDocument *document;
    PREINIT:
	nsIDOMElement *element;
    CODE:
	document->GetDocumentElement(&element);
	RETVAL = element;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::Document::CreateElement

=for signature $element = $document->CreateElement($tagname)



=cut

## CreateElement(const nsAString & tagName, nsIDOMElement **_retval)
nsIDOMElement *
moz_dom_CreateElement (document, tagname)
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

=for apidoc Mozilla::DOM::Document::CreateDocumentFragment

=for signature $doc_fragment = $document->CreateDocumentFragment()



=cut

## CreateDocumentFragment(nsIDOMDocumentFragment **_retval)
nsIDOMDocumentFragment *
moz_dom_CreateDocumentFragment (document)
	nsIDOMDocument *document;
    PREINIT:
	nsIDOMDocumentFragment *fragment;
    CODE:
	document->CreateDocumentFragment(&fragment);
	RETVAL = fragment;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::Document::CreateTextNode

=for signature $textnode = $document->CreateTextNode($text)



=cut

## CreateTextNode(const nsAString & data, nsIDOMText **_retval)
nsIDOMText *
moz_dom_CreateTextNode (document, data)
	nsIDOMDocument *document;
	nsEmbedString data;
    PREINIT:
	nsIDOMText *node;
    CODE:
	document->CreateTextNode(data, &node);
	RETVAL = node;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::Document::CreateComment

=for signature $node = $document->CreateComment($text)



=cut

## CreateComment(const nsAString & data, nsIDOMComment **_retval)
nsIDOMComment *
moz_dom_CreateComment (document, data)
	nsIDOMDocument *document;
	nsEmbedString data;
    PREINIT:
	nsIDOMComment *comment;
    CODE:
	document->CreateComment(data, &comment);
	RETVAL = comment;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::Document::CreateCDATASection

=for signature $node = $document->CreateCDATASection($text)



=cut

## CreateCDATASection(const nsAString & data, nsIDOMCDATASection **_retval)
nsIDOMCDATASection *
moz_dom_CreateCDATASection (document, data)
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

=for apidoc Mozilla::DOM::Document::CreateProcessingInstruction

=for signature $node = $node = $document->CreateProcessingInstruction($target, $text)



=cut

## CreateProcessingInstruction(const nsAString & target, const nsAString & data, nsIDOMProcessingInstruction **_retval)
nsIDOMProcessingInstruction *
moz_dom_CreateProcessingInstruction (document, target, data)
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

=for apidoc Mozilla::DOM::Document::CreateAttribute

=for signature $node = $document->CreateAttribute($name)



=cut

## CreateAttribute(const nsAString & name, nsIDOMAttr **_retval)
nsIDOMAttr *
moz_dom_CreateAttribute (document, name)
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

=for apidoc Mozilla::DOM::Document::CreateEntityReference

=for signature $node = $document->CreateEntityReference($name)



=cut

## CreateEntityReference(const nsAString & name, nsIDOMEntityReference **_retval)
nsIDOMEntityReference *
moz_dom_CreateEntityReference (document, name)
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

=for apidoc Mozilla::DOM::Document::GetElementsByTagName

=for signature $domlist = $document->GetElementsByTagName($tagname)



=cut

## GetElementsByTagName(const nsAString & tagname, nsIDOMNodeList **_retval)
nsIDOMNodeList *
moz_dom_GetElementsByTagName (document, tagname)
	nsIDOMDocument *document;
	nsEmbedString tagname;
    PREINIT:
	nsIDOMNodeList *nodelist;
    CODE:
	document->GetElementsByTagName(tagname, &nodelist);
	RETVAL = nodelist;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::Document::ImportNode

=for signature $document->ImportNode($node, $deep)

$deep = boolean

=cut

## ImportNode(nsIDOMNode *importedNode, PRBool deep, nsIDOMNode **_retval)
nsIDOMNode *
moz_dom_ImportNode (document, importedNode, deep)
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

=for apidoc Mozilla::DOM::Document::CreateElementNS

=for signature $element = $document->CreateElementNS($namespaceURI, $qualifiedName)



=cut

## CreateElementNS(const nsAString & namespaceURI, const nsAString & qualifiedName, nsIDOMElement **_retval)
nsIDOMElement *
moz_dom_CreateElementNS (document, namespaceURI, qualifiedName)
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

=for apidoc Mozilla::DOM::Document::CreateAttributeNS

=for signature $attr = $document->CreateAttributeNS($namespaceURI, $qualifiedName)



=cut

## CreateAttributeNS(const nsAString & namespaceURI, const nsAString & qualifiedName, nsIDOMAttr **_retval)
nsIDOMAttr *
moz_dom_CreateAttributeNS (document, namespaceURI, qualifiedName)
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

=for apidoc Mozilla::DOM::Document::GetElementsByTagNameNS

=for signature $element = $document->GetElementsByTagNameNS($namespaceURI, $localName)



=cut

## GetElementsByTagNameNS(const nsAString & namespaceURI, const nsAString & localName, nsIDOMNodeList **_retval)
nsIDOMNodeList *
moz_dom_GetElementsByTagNameNS (document, namespaceURI, localName)
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

=for apidoc Mozilla::DOM::Document::GetElementById

=for signature $element = $document->GetElementById($elementId)



=cut

## GetElementById(const nsAString & elementId, nsIDOMElement **_retval)
nsIDOMElement *
moz_dom_GetElementById (document, elementId)
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
 * L<http:E<sol>E<sol>www.w3.orgE<sol>TRE<sol>DOM-Level-2-CoreE<sol>>

The following constants are available to be compared with L</GetNodeType>.
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

=cut

=for apidoc Mozilla::DOM::Node::GetNodeName

=for signature $name = $node->GetNodeName()



=cut

## GetNodeName(nsAString & aNodeName)
nsEmbedString
moz_dom_GetNodeName (node)
	nsIDOMNode *node;
    PREINIT:
	nsEmbedString name;
    CODE:
	node->GetNodeName(name);
	RETVAL = name;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::Node::GetNodeValue

=for signature $value = $node->GetNodeValue()

$value is a string

=cut

## GetNodeValue(nsAString & aNodeValue)
nsEmbedString
moz_dom_GetNodeValue (node)
	nsIDOMNode *node;
    PREINIT:
	nsEmbedString value;
    CODE:
	node->GetNodeValue(value);
	RETVAL = value;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::Node::SetNodeValue

=for signature $node->SetNodeValue($value)



=cut

## SetNodeValue(const nsAString & aNodeValue)
void
moz_dom_SetNodeValue (node, value)
	nsIDOMNode *node;
	nsEmbedString value;
    CODE:
	node->SetNodeValue(value);

=for apidoc Mozilla::DOM::Node::GetNodeType

=for signature $type = $node->GetNodeType()

$type is a number

=cut

## GetNodeType(PRUint16 *aNodeType)
PRUint16
moz_dom_GetNodeType (node)
	nsIDOMNode *node;
    PREINIT:
	PRUint16 type;
    CODE:
	node->GetNodeType(&type);
	RETVAL = type;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::Node::GetParentNode

=for signature $node = $node->GetParentNode()



=cut

## GetParentNode(nsIDOMNode * *aParentNode)
nsIDOMNode *
moz_dom_GetParentNode (node)
	nsIDOMNode *node;
    PREINIT:
	nsIDOMNode *parent;
    CODE:
	node->GetParentNode(&parent);
	RETVAL = parent;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::Node::GetChildNodes

=for signature $nodelist = $node->GetChildNodes()



=cut

## GetChildNodes(nsIDOMNodeList * *aChildNodes)
nsIDOMNodeList *
moz_dom_GetChildNodes (node)
	nsIDOMNode *node;
    PREINIT:
	nsIDOMNodeList *nodelist;
    CODE:
	node->GetChildNodes(&nodelist);
	RETVAL = nodelist;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::Node::GetFirstChild

=for signature $node = $node->GetFirstChild()



=cut

## GetFirstChild(nsIDOMNode * *aFirstChild)
nsIDOMNode *
moz_dom_GetFirstChild (node)
	nsIDOMNode *node;
    PREINIT:
	nsIDOMNode *child;
    CODE:
	node->GetFirstChild(&child);
	RETVAL = child;
    OUTPUT:
	RETVAL

=for apidoc $node = Mozilla::DOM::Node::GetLastChild

=for signature $node->GetLastChild()



=cut

## GetLastChild(nsIDOMNode * *aLastChild)
nsIDOMNode *
moz_dom_GetLastChild (node)
	nsIDOMNode *node;
    PREINIT:
	nsIDOMNode *child;
    CODE:
	node->GetLastChild(&child);
	RETVAL = child;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::Node::GetPreviousSibling

=for signature $node = $node->GetPreviousSibling()



=cut

## GetPreviousSibling(nsIDOMNode * *aPreviousSibling)
nsIDOMNode *
moz_dom_GetPreviousSibling (node)
	nsIDOMNode *node;
    PREINIT:
	nsIDOMNode *bro;
    CODE:
	node->GetPreviousSibling(&bro);
	RETVAL = bro;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::Node::GetNextSibling

=for signature $node = $node->GetNextSibling()



=cut

## GetNextSibling(nsIDOMNode * *aNextSibling)
nsIDOMNode *
moz_dom_GetNextSibling (node)
	nsIDOMNode *node;
    PREINIT:
	nsIDOMNode *bro;
    CODE:
	node->GetNextSibling(&bro);
	RETVAL = bro;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::Node::GetAttributes

=for signature $namednodemap = $node->GetAttributes()



=cut

## GetAttributes(nsIDOMNamedNodeMap * *aAttributes)
nsIDOMNamedNodeMap *
moz_dom_GetAttributes (node)
	nsIDOMNode *node;
    PREINIT:
	nsIDOMNamedNodeMap *nodemap;
    CODE:
	node->GetAttributes(&nodemap);
	RETVAL = nodemap;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::Node::GetOwnerDocument

=for signature $document = $node->GetOwnerDocument()



=cut

## GetOwnerDocument(nsIDOMDocument * *aOwnerDocument)
nsIDOMDocument *
moz_dom_GetOwnerDocument (node)
	nsIDOMNode *node;
    PREINIT:
	nsIDOMDocument *doc;
    CODE:
	node->GetOwnerDocument(&doc);
	RETVAL = doc;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::Node::InsertBefore

=for signature $node = $node->InsertBefore($newChildNode, $refChildNode)



=cut

## InsertBefore(nsIDOMNode *newChild, nsIDOMNode *refChild, nsIDOMNode **_retval)
nsIDOMNode *
moz_dom_InsertBefore (node, newChild, refChild=0)
	nsIDOMNode *node;
	nsIDOMNode *newChild;
	nsIDOMNode *refChild;
    PREINIT:
	nsIDOMNode *insert;
    CODE:
	/* raises (DOMException) */
	node->InsertBefore(newChild, refChild, &insert);
	RETVAL = insert;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::Node::ReplaceChild

=for signature $node = $node->ReplaceChild($newChildNode, $oldChildNode)



=cut

## ReplaceChild(nsIDOMNode *newChild, nsIDOMNode *oldChild, nsIDOMNode **_retval)
nsIDOMNode *
moz_dom_ReplaceChild (node, newChild, oldChild)
	nsIDOMNode *node;
	nsIDOMNode *newChild;
	nsIDOMNode *oldChild;
    PREINIT:
	nsIDOMNode *child;
    CODE:
	/* raises (DOMException) */
	node->ReplaceChild(newChild, oldChild, &child);
	RETVAL = child;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::Node::RemoveChild

=for signature $node = $node->RemoveChild($oldChildNode)



=cut

## RemoveChild(nsIDOMNode *oldChild, nsIDOMNode **_retval)
nsIDOMNode *
moz_dom_RemoveChild (node, oldChild)
	nsIDOMNode *node;
	nsIDOMNode *oldChild;
    PREINIT:
	nsIDOMNode *child;
    CODE:
	/* raises (DOMException) */
	node->RemoveChild(oldChild, &child);
	RETVAL = node;
    OUTPUT:
	RETVAL


=for apidoc Mozilla::DOM::Node::AppendChild

=for signature $node = $node->AppendChild($newChildNode)



=cut

## AppendChild(nsIDOMNode *newChild, nsIDOMNode **_retval)
nsIDOMNode *
moz_dom_AppendChild (node, newChild)
	nsIDOMNode *node;
	nsIDOMNode *newChild;
    PREINIT:
	nsIDOMNode *child;
    CODE:
	/* raises (DOMException) */
	node->AppendChild(newChild, &child);
	RETVAL = child;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::Node::HasChildNodes

=for signature $bool = $node->HasChildNodes()



=cut

## HasChildNodes(PRBool *_retval)
PRBool
moz_dom_HasChildNodes (node)
	nsIDOMNode *node;
    PREINIT:
	PRBool has;
    CODE:
	node->HasChildNodes(&has);
	RETVAL = has;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::Node::CloneNode

=for signature $node = $node->CloneNode($deep)

$deep is a boolean

=cut

## CloneNode(PRBool deep, nsIDOMNode **_retval)
nsIDOMNode *
moz_dom_CloneNode (node, deep)
	nsIDOMNode *node;
	PRBool deep;
    PREINIT:
	nsIDOMNode *clone;
    CODE:
	node->CloneNode(deep, &clone);
	RETVAL = clone;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::Node::Normalize

=for signature $node->Normalize()



=cut

## Normalize(void)
void
moz_dom_Normalize (node)
	nsIDOMNode *node;
    CODE:
	node->Normalize();

=for apidoc Mozilla::DOM::Node::IsSupported

=for signature $bool = $node->IsSupported($feature, $version)

two string args

=cut

## IsSupported(const nsAString & feature, const nsAString & version, PRBool *_retval)
PRBool
moz_dom_IsSupported (node, feature, version)
	nsIDOMNode *node;
	nsEmbedString feature;
	nsEmbedString version;
    PREINIT:
	PRBool is;
    CODE:
	node->IsSupported(feature, version, &is);
	RETVAL = is;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::Node::GetNamespaceURI

=for signature $uri = $node->GetNamespaceURI()



=cut

## GetNamespaceURI(nsAString & aNamespaceURI)
nsEmbedString
moz_dom_GetNamespaceURI (node)
	nsIDOMNode *node;
    PREINIT:
	nsEmbedString uri;
    CODE:
	node->GetNamespaceURI(uri);
	RETVAL = uri;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::Node::GetPrefix

=for signature $prefix = $node->GetPrefix()



=cut

## GetPrefix(nsAString & aPrefix)
nsEmbedString
moz_dom_GetPrefix (node)
	nsIDOMNode *node;
    PREINIT:
	nsEmbedString aPrefix;
    CODE:
	node->GetPrefix(aPrefix);
	RETVAL = aPrefix;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::Node::SetPrefix

=for signature $node->SetPrefix($prefix)



=cut

## SetPrefix(const nsAString & aPrefix)
void
moz_dom_SetPrefix (node, aPrefix)
	nsIDOMNode *node;
	nsEmbedString aPrefix;
    CODE:
	node->SetPrefix(aPrefix);

=for apidoc Mozilla::DOM::Node::GetLocalName

=for signature $name = $node->GetLocalName()



=cut

## GetLocalName(nsAString & aLocalName)
nsEmbedString
moz_dom_GetLocalName (node)
	nsIDOMNode *node;
    PREINIT:
	nsEmbedString name;
    CODE:
	node->GetLocalName(name);
	RETVAL = name;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::Node::HasAttributes

=for signature $bool = $node->HasAttributes()



=cut

## HasAttributes(PRBool *_retval)
PRBool
moz_dom_HasAttributes (node)
	nsIDOMNode *node;
    PREINIT:
	PRBool has;
    CODE:
	node->HasAttributes(&has);
	RETVAL = has;
    OUTPUT:
	RETVAL

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
 * L<http:E<sol>E<sol>www.w3.orgE<sol>TRE<sol>DOM-Level-2-CoreE<sol>>

=cut

=for apidoc Mozilla::DOM::NodeList::Item

=for signature $node = $nodelist->Item($index)



=cut

## Item(PRUint32 index, nsIDOMNode **_retval)
nsIDOMNode *
moz_dom_Item (nodelist, index)
	nsIDOMNodeList *nodelist;
	PRUint32 index;
    PREINIT:
	nsIDOMNode *node;
    CODE:
	nodelist->Item(index, &node);
	RETVAL = node;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::NodeList::GetLength

=for signature $nodelist->GetLength()



=cut

## GetLength(PRUint32 *aLength)
PRUint32
moz_dom_GetLength (nodelist)
	nsIDOMNodeList *nodelist;
    PREINIT:
	PRUint32 len;
    CODE:
	nodelist->GetLength(&len);
	RETVAL = len;
    OUTPUT:
	RETVAL

=end comment

=cut

# -----------------------------------------------------------------------------

MODULE = Mozilla::DOM	PACKAGE = Mozilla::DOM::NamedNodeMap	PREFIX = moz_dom_

=for object Mozilla::DOM::NamedNodeMap

Mozilla::DOM::NamedNodeMap is a wrapper around an instance of Mozilla's
nsIDOMNamedNodeMap interface.

 * Objects implementing the nsIDOMNamedNodeMap interface are used to 
 * represent collections of nodes that can be accessed by name.
 *
 * For more information on this interface please see 
 * http://www.w3.org/TR/DOM-Level-2-Core/

=cut

=begin comment

  /* nsIDOMNode getNamedItem (in DOMString name); */
  NS_IMETHOD GetNamedItem(const nsAString & name, nsIDOMNode **_retval) = 0;

  /* nsIDOMNode setNamedItem (in nsIDOMNode arg)  raises (DOMException); */
  NS_IMETHOD SetNamedItem(nsIDOMNode *arg, nsIDOMNode **_retval) = 0;

  /* nsIDOMNode removeNamedItem (in DOMString name)  raises (DOMException); */
  NS_IMETHOD RemoveNamedItem(const nsAString & name, nsIDOMNode **_retval) = 0;

  /* nsIDOMNode item (in unsigned long index); */
  NS_IMETHOD Item(PRUint32 index, nsIDOMNode **_retval) = 0;

  /* readonly attribute unsigned long length; */
  NS_IMETHOD GetLength(PRUint32 *aLength) = 0;

  /* nsIDOMNode getNamedItemNS (in DOMString namespaceURI, in DOMString localName); */
  NS_IMETHOD GetNamedItemNS(const nsAString & namespaceURI, const nsAString & localName, nsIDOMNode **_retval) = 0;

  /* nsIDOMNode setNamedItemNS (in nsIDOMNode arg)  raises (DOMException); */
  NS_IMETHOD SetNamedItemNS(nsIDOMNode *arg, nsIDOMNode **_retval) = 0;

  /* nsIDOMNode removeNamedItemNS (in DOMString namespaceURI, in DOMString localName)  raises (DOMException); */
  NS_IMETHOD RemoveNamedItemNS(const nsAString & namespaceURI, const nsAString & localName, nsIDOMNode **_retval) = 0;

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
 * L<http:E<sol>E<sol>www.w3.orgE<sol>TRE<sol>DOM-Level-2-CoreE<sol>>

=cut

=begin comment

=for apidoc Mozilla::DOM::Element::GetTagName

=for signature $tagname = $element->GetTagName()



=cut

## GetTagName(nsAString & aTagName)
nsEmbedString
moz_dom_GetTagName (element)
	nsIDOMElement *element;
    PREINIT:
	nsEmbedString tagname;
    CODE:
	element->GetTagName(tagname);
	RETVAL = tagname;
    OUTPUT:
	RETVAL


=for apidoc Mozilla::DOM::Element::GetAttribute

=for signature $attr = $element->GetAttribute($name)



=cut

## GetAttribute(const nsAString & name, nsAString & _retval)
nsEmbedString
moz_dom_GetAttribute (element, name)
	nsIDOMElement *element;
	nsEmbedString name;
    PREINIT:
	nsEmbedString attr;
    CODE:
	element->GetAttribute(name, attr);
	RETVAL = attr;
    OUTPUT:
	RETVAL


=for apidoc Mozilla::DOM::Element::SetAttribute

=for signature $element->SetAttribute($name, $value)



=cut

## SetAttribute(const nsAString & name, const nsAString & value)
void
moz_dom_SetAttribute (element, name, value)
	nsIDOMElement *element;
	nsEmbedString name;
	nsEmbedString value;
    CODE:
	/* raises (DOMException) */
	element->SetAttribute(name, value);

=for apidoc Mozilla::DOM::Element::RemoveAttribute

=for signature $element->RemoveAttribute($name)



=cut

## RemoveAttribute(const nsAString & name)
void
moz_dom_RemoveAttribute (element, name)
	nsIDOMElement *element;
	nsEmbedString name;
    CODE:
	/* raises (DOMException) */
	element->RemoveAttribute(name);

=for apidoc Mozilla::DOM::Element::GetAttributeNode

=for signature $attrnode = $element->GetAttributeNode($name)



=cut

## GetAttributeNode(const nsAString & name, nsIDOMAttr **_retval)
nsIDOMAttr *
moz_dom_GetAttributeNode (element, name)
	nsIDOMElement *element;
	nsEmbedString name;
    PREINIT:
	nsIDOMAttr *attrnode;
    CODE:
	element->GetAttributeNode(name, &attrnode);
	RETVAL = attrnode;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::Element::SetAttributeNode

=for signature $attrnode = $element->SetAttributeNode($attrnode)



=cut

## SetAttributeNode(nsIDOMAttr *newAttr, nsIDOMAttr **_retval)
nsIDOMAttr *
moz_dom_SetAttributeNode (element, newAttr)
	nsIDOMElement *element;
	nsIDOMAttr *newAttr;
    PREINIT:
	nsIDOMAttr *attrnode;
    CODE:
	/* raises (DOMException) */
	element->SetAttributeNode(newAttr, &attrnode);
	RETVAL = attrnode;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::Element::RemoveAttributeNode

=for signature $attrnode = $element->RemoveAttributeNode($attrnode)



=cut

## RemoveAttributeNode(nsIDOMAttr *oldAttr, nsIDOMAttr **_retval)
nsIDOMAttr *
moz_dom_RemoveAttributeNode (element, oldAttr)
	nsIDOMElement *element;
	nsIDOMAttr *oldAttr;
    PREINIT:
	nsIDOMAttr *attrnode;
    CODE:
	/* raises (DOMException) */
	element->RemoveAttributeNode(oldAttr, &attrnode);
	RETVAL = attrnode;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::Element::GetElementsByTagName

=for signature $nodelist = $element->GetElementsByTagName($name)



=cut

## GetElementsByTagName(const nsAString & name, nsIDOMNodeList **_retval)
nsIDOMNodeList *
moz_dom_GetElementsByTagName (element, name)
	nsIDOMElement *element;
	nsEmbedString name;
    PREINIT:
	nsIDOMNodeList *nodelist;
    CODE:
	element->GetElementsByTagName(name, &nodelist);
	RETVAL = nodelist;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::Element::GetAttributeNS

=for signature $attr = $element->GetAttributeNS($namespaceURI, $localName)



=cut

## GetAttributeNS(const nsAString & namespaceURI, const nsAString & localName, nsAString & _retval)
nsEmbedString
moz_dom_GetAttributeNS (element, namespaceURI, localName)
	nsIDOMElement *element;
	nsEmbedString namespaceURI;
	nsEmbedString localName;
    PREINIT:
	nsEmbedString attr;
    CODE:
	element->GetAttributeNS(namespaceURI, localName, attr);
	RETVAL = attr;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::Element::SetAttributeNS

=for signature $element->SetAttributeNS($namespaceURI, $qualifiedName, $value)



=cut

## SetAttributeNS(const nsAString & namespaceURI, const nsAString & qualifiedName, const nsAString & value)
void
moz_dom_SetAttributeNS (element, namespaceURI, qualifiedName, value)
	nsIDOMElement *element;
	nsEmbedString namespaceURI;
	nsEmbedString qualifiedName;
	nsEmbedString value;
    CODE:
	/* raises (DOMException) */
	element->SetAttributeNS(namespaceURI, qualifiedName, value);

=for apidoc Mozilla::DOM::Element::RemoveAttributeNS

=for signature $element->RemoveAttributeNS($namespaceURI, $localName)



=cut

## RemoveAttributeNS(const nsAString & namespaceURI, const nsAString & localName)
void
moz_dom_RemoveAttributeNS (element, namespaceURI, localName)
	nsIDOMElement *element;
	nsEmbedString namespaceURI;
	nsEmbedString localName;
    CODE:
	/* raises (DOMException) */
	element->RemoveAttributeNS(namespaceURI, localName);

=for apidoc Mozilla::DOM::Element::GetAttributeNodeNS

=for signature $attrnode = $element->GetAttributeNodeNS($namespaceURI, $localName)



=cut

## GetAttributeNodeNS(const nsAString & namespaceURI, const nsAString & localName, nsIDOMAttr **_retval)
nsIDOMAttr *
moz_dom_GetAttributeNodeNS (element, namespaceURI, localName)
	nsIDOMElement *element;
	nsEmbedString namespaceURI;
	nsEmbedString localName;
    PREINIT:
	nsIDOMAttr *attrnode;
	
    CODE:
	element->GetAttributeNodeNS(namespaceURI, localName, &attrnode);
	RETVAL = attrnode;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::Element::SetAttributeNodeNS

=for signature $attrnode = $element->SetAttributeNodeNS($newAttr)



=cut

## SetAttributeNodeNS(nsIDOMAttr *newAttr, nsIDOMAttr **_retval)
nsIDOMAttr *
moz_dom_SetAttributeNodeNS (element, newAttr)
	nsIDOMElement *element;
	nsIDOMAttr *newAttr;
    PREINIT:
	nsIDOMAttr *attrnode;
    CODE:
	/* raises (DOMException) */
	element->SetAttributeNodeNS(newAttr, &attrnode);
	RETVAL = attrnode;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::Element::GetElementsByTagNameNS

=for signature $nodelist = $element->GetElementsByTagNameNS($namespaceURI, $localName)



=cut

## GetElementsByTagNameNS(const nsAString & namespaceURI, const nsAString & localName, nsIDOMNodeList **_retval)
nsIDOMNodeList *
moz_dom_GetElementsByTagNameNS (element, namespaceURI, localName)
	nsIDOMElement *element;
	nsEmbedString namespaceURI;
	nsEmbedString localName;
    PREINIT:
	nsIDOMNodeList *nodelist;
    CODE:
	element->GetElementsByTagNameNS(namespaceURI, localName, &nodelist);
	RETVAL = nodelist;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::Element::HasAttribute

=for signature $bool = $element->HasAttribute($name)



=cut

## HasAttribute(const nsAString & name, PRBool *_retval)
PRBool
moz_dom_HasAttribute (element, name)
	nsIDOMElement *element;
	nsEmbedString name;
    PREINIT:
	PRBool has;
    CODE:
	element->HasAttribute(name, &has);
	RETVAL = has;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::Element::HasAttributeNS

=for signature $bool = $element->HasAttributeNS($namespaceURI, $localName)



=cut

## HasAttributeNS(const nsAString & namespaceURI, const nsAString & localName, PRBool *_retval)
PRBool
moz_dom_HasAttributeNS (element, namespaceURI, localName)
	nsIDOMElement *element;
	nsEmbedString namespaceURI;
	nsEmbedString localName;
    PREINIT:
	PRBool has;
    CODE:
	element->HasAttributeNS(namespaceURI, localName, &has);
	RETVAL = has;
    OUTPUT:
	RETVAL

# -----------------------------------------------------------------------------

MODULE = Mozilla::DOM	PACKAGE = Mozilla::DOM::EntityReference	PREFIX = moz_dom_

=for object Mozilla::DOM::EntityReference

Mozilla::DOM::EntityReference is a wrapper around an instance of Mozilla's
nsIDOMEntityReference interface. This inherits from
L<Mozilla::DOM::Node|Mozilla::DOM::Node>.

It has no methods of its own.

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
 * L<http:E<sol>E<sol>www.w3.orgE<sol>TRE<sol>DOM-Level-2-CoreE<sol>>

=cut

=begin comment

  /* readonly attribute DOMString name; */
#=for apidoc Mozilla::DOM::Attr::GetName
#
#=for signature $attr->GetName(nsAString & aName)
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
#=for signature $attr->GetSpecified(PRBool *aSpecified)
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
#=for signature $attr->GetValue(nsAString & aValue)
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
#=for signature $attr->SetValue(const nsAString & aValue)
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
#=for signature $attr->GetOwnerElement(nsIDOMElement * *aOwnerElement)
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
 * L<http:E<sol>E<sol>www.w3.orgE<sol>TRE<sol>DOM-Level-2-CoreE<sol>>

=cut

=begin comment

  /* readonly attribute DOMString target; */
#=for apidoc Mozilla::DOM::ProcessingInstruction::GetTarget
#
#=for signature $processinginstruction->GetTarget(nsAString & aTarget)
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
#=for signature $processinginstruction->GetData(nsAString & aData)
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
#=for signature $processinginstruction->SetData(const nsAString & aData)
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

It has no methods of its own.

=cut

# -----------------------------------------------------------------------------

MODULE = Mozilla::DOM	PACKAGE = Mozilla::DOM::Comment	PREFIX = moz_dom_

=for object Mozilla::DOM::Comment

Mozilla::DOM::Comment is a wrapper around an instance of Mozilla's
nsIDOMComment interface. This inherits from
L<Mozilla::DOM::CharacterData|Mozilla::DOM::CharacterData>.

It has no methods of its own.

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
 * L<http:E<sol>E<sol>www.w3.orgE<sol>TRE<sol>DOM-Level-2-CoreE<sol>>

=cut

=begin comment

  /* attribute DOMString data; */
#=for apidoc Mozilla::DOM::CharacterData::GetData
#
#=for signature $characterdata->GetData(nsAString & aData)
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
#=for signature $characterdata->SetData(const nsAString & aData)
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
#=for signature $characterdata->GetLength(PRUint32 *aLength)
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
#=for signature $characterdata->SubstringData(PRUint32 offset, PRUint32 count, nsAString & _retval)
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
#=for signature $characterdata->AppendData(const nsAString & arg)
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
#=for signature $characterdata->InsertData(PRUint32 offset, const nsAString & arg)
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
#=for signature $characterdata->DeleteData(PRUint32 offset, PRUint32 count)
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
#=for signature $characterdata->ReplaceData(PRUint32 offset, PRUint32 count, const nsAString & arg)
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
 * L<http:E<sol>E<sol>www.w3.orgE<sol>TRE<sol>DOM-Level-2-CoreE<sol>>

=cut

=begin comment

  /* nsIDOMText splitText (in unsigned long offset)  raises (DOMException); */
#=for apidoc Mozilla::DOM::Text::SplitText
#
#=for signature $text->SplitText(PRUint32 offset, nsIDOMText **_retval)
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

It has no methods of its own.

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
 * L<http:E<sol>E<sol>www.w3.orgE<sol>TRE<sol>DOM-Level-2-CoreE<sol>>

=cut

=begin comment

  /* readonly attribute DOMString name; */
#=for apidoc Mozilla::DOM::DocumentType::GetName
#
#=for signature $documenttype->GetName(nsAString & aName)
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
#=for signature $documenttype->GetEntities(nsIDOMNamedNodeMap * *aEntities)
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
#=for signature $documenttype->GetNotations(nsIDOMNamedNodeMap * *aNotations)
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
#=for signature $documenttype->GetPublicId(nsAString & aPublicId)
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
#=for signature $documenttype->GetSystemId(nsAString & aSystemId)
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
#=for signature $documenttype->GetInternalSubset(nsAString & aInternalSubset)
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
 * L<http:E<sol>E<sol>www.w3.orgE<sol>TRE<sol>DOM-Level-2-CoreE<sol>>

=cut

=begin comment

  /* boolean hasFeature (in DOMString feature, in DOMString version); */
#=for apidoc Mozilla::DOM::DOMImplementation::HasFeature
#
#=for signature $domimplementation->HasFeature(const nsAString & feature, const nsAString & version, PRBool *_retval)
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
#=for signature $domimplementation->CreateDocumentType(const nsAString & qualifiedName, const nsAString & publicId, const nsAString & systemId, nsIDOMDocumentType **_retval)
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
#=for signature $domimplementation->CreateDocument(const nsAString & namespaceURI, const nsAString & qualifiedName, nsIDOMDocumentType *doctype, nsIDOMDocument **_retval)
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

MODULE = Mozilla::DOM	PACKAGE = Mozilla::DOM::WebBrowser	PREFIX = moz_dom_webbrowser_

=for object Mozilla::DOM::WebBrowser

Mozilla::DOM::WebBrowser is a wrapper around an instance of Mozilla's
nsIWebBrowser interface.

 * The nsIWebBrowser interface is implemented by web browser objects.
 * Embedders use this interface during initialisation to associate
 * the new web browser instance with the embedders chrome and
 * to register any listeners. The interface may also be used at runtime
 * to obtain the content DOM window and from that the rest of the DOM.

Currently only the GetContentDOMWindow method is wrapped.

=cut

=for apidoc Mozilla::DOM::WebBrowser::GetContentDOMWindow

=for signature $window = $browser->GetContentDOMWindow

Gets the top-level DOM L<Window|Mozilla::DOM::Window>.
The embedder may walk the entire DOM starting from this value.

=cut

## GetContentDOMWindow(nsIDOMWindow * *aContentDOMWindow)
nsIDOMWindow *
moz_dom_webbrowser_GetContentDOMWindow (browser)
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
