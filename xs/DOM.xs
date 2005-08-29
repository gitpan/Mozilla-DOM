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
 * $CVSHeader: Mozilla-DOM/xs/DOM.xs,v 1.18 2005/08/28 19:30:22 slanning Exp $
 */

#include "mozilladom2perl.h"

/* ------------------------------------------------------------------------- */

/* conversion functions between Perl and C */

MOZDOM_DEF_I_TYPEMAPPERS(WebBrowser)
MOZDOM_DEF_I_TYPEMAPPERS(WebNavigation)
MOZDOM_DEF_I_TYPEMAPPERS(URI)
MOZDOM_DEF_I_TYPEMAPPERS(Selection)
MOZDOM_DEF_I_TYPEMAPPERS(Supports)

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
MOZDOM_DEF_DOM_TYPEMAPPERS(Window2)
MOZDOM_DEF_DOM_TYPEMAPPERS(WindowInternal)
MOZDOM_DEF_DOM_TYPEMAPPERS(WindowCollection)
MOZDOM_DEF_DOM_TYPEMAPPERS(Document)
MOZDOM_DEF_DOM_TYPEMAPPERS(DocumentFragment)
MOZDOM_DEF_DOM_TYPEMAPPERS(DocumentType)
MOZDOM_DEF_DOM_TYPEMAPPERS(DOMException)
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
MOZDOM_DEF_DOM_TYPEMAPPERS(Range)
MOZDOM_DEF_DOM_TYPEMAPPERS(History)
MOZDOM_DEF_DOM_TYPEMAPPERS(Location)
MOZDOM_DEF_DOM_TYPEMAPPERS(Navigator)
MOZDOM_DEF_DOM_TYPEMAPPERS(Screen)

MOZDOM_DEF_DOM_TYPEMAPPERS(HTMLAreaElement)
MOZDOM_DEF_DOM_TYPEMAPPERS(HTMLDirectoryElement)
MOZDOM_DEF_DOM_TYPEMAPPERS(HTMLAnchorElement)
MOZDOM_DEF_DOM_TYPEMAPPERS(HTMLAppletElement)
MOZDOM_DEF_DOM_TYPEMAPPERS(HTMLBRElement)
MOZDOM_DEF_DOM_TYPEMAPPERS(HTMLBaseElement)
MOZDOM_DEF_DOM_TYPEMAPPERS(HTMLBaseFontElement)
MOZDOM_DEF_DOM_TYPEMAPPERS(HTMLBodyElement)
MOZDOM_DEF_DOM_TYPEMAPPERS(HTMLButtonElement)
MOZDOM_DEF_DOM_TYPEMAPPERS(HTMLCollection)
MOZDOM_DEF_DOM_TYPEMAPPERS(HTMLDListElement)
MOZDOM_DEF_DOM_TYPEMAPPERS(HTMLDivElement)
MOZDOM_DEF_DOM_TYPEMAPPERS(HTMLElement)
MOZDOM_DEF_DOM_TYPEMAPPERS(HTMLEmbedElement)
MOZDOM_DEF_DOM_TYPEMAPPERS(HTMLFieldSetElement)
MOZDOM_DEF_DOM_TYPEMAPPERS(HTMLFontElement)
MOZDOM_DEF_DOM_TYPEMAPPERS(HTMLFrameElement)
MOZDOM_DEF_DOM_TYPEMAPPERS(HTMLFormElement)
MOZDOM_DEF_DOM_TYPEMAPPERS(HTMLFrameSetElement)
MOZDOM_DEF_DOM_TYPEMAPPERS(HTMLHRElement)
MOZDOM_DEF_DOM_TYPEMAPPERS(HTMLHeadElement)
MOZDOM_DEF_DOM_TYPEMAPPERS(HTMLHeadingElement)
MOZDOM_DEF_DOM_TYPEMAPPERS(HTMLHtmlElement)
MOZDOM_DEF_DOM_TYPEMAPPERS(HTMLIFrameElement)
MOZDOM_DEF_DOM_TYPEMAPPERS(HTMLImageElement)
MOZDOM_DEF_DOM_TYPEMAPPERS(HTMLInputElement)
MOZDOM_DEF_DOM_TYPEMAPPERS(HTMLIsIndexElement)
MOZDOM_DEF_DOM_TYPEMAPPERS(HTMLLIElement)
MOZDOM_DEF_DOM_TYPEMAPPERS(HTMLLabelElement)
MOZDOM_DEF_DOM_TYPEMAPPERS(HTMLLegendElement)
MOZDOM_DEF_DOM_TYPEMAPPERS(HTMLLinkElement)
MOZDOM_DEF_DOM_TYPEMAPPERS(HTMLMapElement)
MOZDOM_DEF_DOM_TYPEMAPPERS(HTMLMenuElement)
MOZDOM_DEF_DOM_TYPEMAPPERS(HTMLMetaElement)
MOZDOM_DEF_DOM_TYPEMAPPERS(HTMLModElement)
MOZDOM_DEF_DOM_TYPEMAPPERS(HTMLOListElement)
MOZDOM_DEF_DOM_TYPEMAPPERS(HTMLObjectElement)
MOZDOM_DEF_DOM_TYPEMAPPERS(HTMLOptGroupElement)
MOZDOM_DEF_DOM_TYPEMAPPERS(HTMLOptionElement)
MOZDOM_DEF_DOM_TYPEMAPPERS(HTMLOptionsCollection)
MOZDOM_DEF_DOM_TYPEMAPPERS(HTMLParagraphElement)
MOZDOM_DEF_DOM_TYPEMAPPERS(HTMLParamElement)
MOZDOM_DEF_DOM_TYPEMAPPERS(HTMLPreElement)
MOZDOM_DEF_DOM_TYPEMAPPERS(HTMLQuoteElement)
MOZDOM_DEF_DOM_TYPEMAPPERS(HTMLScriptElement)
MOZDOM_DEF_DOM_TYPEMAPPERS(HTMLSelectElement)
MOZDOM_DEF_DOM_TYPEMAPPERS(HTMLStyleElement)
MOZDOM_DEF_DOM_TYPEMAPPERS(HTMLTableCaptionElement)
MOZDOM_DEF_DOM_TYPEMAPPERS(HTMLTableCellElement)
MOZDOM_DEF_DOM_TYPEMAPPERS(HTMLTableColElement)
MOZDOM_DEF_DOM_TYPEMAPPERS(HTMLTableElement)
MOZDOM_DEF_DOM_TYPEMAPPERS(HTMLTableRowElement)
MOZDOM_DEF_DOM_TYPEMAPPERS(HTMLTableSectionElement)
MOZDOM_DEF_DOM_TYPEMAPPERS(HTMLTextAreaElement)
MOZDOM_DEF_DOM_TYPEMAPPERS(HTMLTitleElement)
MOZDOM_DEF_DOM_TYPEMAPPERS(HTMLUListElement)


/* ------------------------------------------------------------------------- */

/* I'm not a C++ or XS whiz, so let me know if I'm doing something stupid.
   Support for this is "experimental". It will only be enabled if you
   do `perl Makefile.PL DEFINE=MDEXP_EVENT_LISTENER`. */

#ifdef MDEXP_EVENT_LISTENER

NS_IMPL_ISUPPORTS1(MozDomEventListener, nsIDOMEventListener)

MozDomEventListener::MozDomEventListener()
{
	return;
}

MozDomEventListener::MozDomEventListener(SV *handler)
	: mHandler(newSVsv(handler))
{
	return;
}

MozDomEventListener::~MozDomEventListener()
{
	/* XXX: do we need sv_free(mHandler) or SvREFCNT ? */
	return;
}

NS_IMETHODIMP MozDomEventListener::HandleEvent(nsIDOMEvent *event) {
	dSP;

	ENTER;
	SAVETMPS;

	PUSHMARK(SP);
	XPUSHs(sv_2mortal(newSVnsIDOMEvent(event)));
	PUTBACK;

	/* call the subroutine passed to `new' */
	call_sv(mHandler, G_DISCARD);

	FREETMPS;
	LEAVE;
}

#endif /* MDEXP_EVENT_LISTENER */

/* ------------------------------------------------------------------------- */


MODULE = Mozilla::DOM	PACKAGE = Mozilla::DOM::AbstractView	PREFIX = moz_dom_

# /usr/include/mozilla/nsIDOMAbstractView.h

=for object Mozilla::DOM::AbstractView

Mozilla::DOM::UIEvent is a wrapper around an instance of Mozilla's
nsIDOMAbstractView interface. This inherits from
L<Supports|Mozilla::DOM::Supports>.

Note: I think the only way to get an AbstractView is
with L<UIEvent|Mozilla::DOM::UIEvent>'s GetView method.

=cut

=head1 CLASS METHODS

=head2 $iid = Mozilla::DOM::AbstractView->B<GetIID>()

Pass this to QueryInterface.

=cut

## NS_DEFINE_STATIC_IID_ACCESSOR(NS_IDOMABSTRACTVIEW_IID)
static nsIID
nsIDOMAbstractView::GetIID()
    CODE:
	const nsIID &id = nsIDOMAbstractView::GetIID();
	RETVAL = (nsIID) id;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::AbstractView::GetDocument

=for signature $docview = $view->GetDocument

Gets a Mozilla::DOM::DocumentView (not sure if this is necessary/useful).

See the DOM Level 2 Views spec.

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

# /usr/include/mozilla/nsIDOMDocumentView.h

=for object Mozilla::DOM::DocumentView

Mozilla::DOM::DocumentView is a wrapper around an instance of Mozilla's
nsIDOMDocumentView interface. This inherits from
L<Supports|Mozilla::DOM::Supports>.

=cut

=head1 CLASS METHODS

=head2 $iid = Mozilla::DOM::DocumentView->B<GetIID>()

Pass this to QueryInterface.

=cut

## NS_DEFINE_STATIC_IID_ACCESSOR(NS_IDOMDOCUMENTVIEW_IID)
static nsIID
nsIDOMDocumentView::GetIID()
    CODE:
	const nsIID &id = nsIDOMDocumentView::GetIID();
	RETVAL = (nsIID) id;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::DocumentView::GetDefaultView

=for signature $view = $docview->GetDefaultView

Gets a Mozilla::DOM::AbstractView (not sure if this is necessary/useful).

See the DOM Level 2 Views specification.

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

# /usr/include/mozilla/nsIDOMEvent.h

=for object Mozilla::DOM::Event

Mozilla::DOM::Event is a wrapper around an instance of Mozilla's
nsIDOMEvent interface, from which L<Mozilla::DOM::UIEvent|Mozilla::DOM::UIEvent>
inherits. This class inherits from L<Supports|Mozilla::DOM::Supports>.

 * The nsIDOMEvent interface is the primary datatype for all events in
 * the Document Object Model.
 *
 * For more information on this interface please see 
 * L<http:E<sol>E<sol>www.w3.orgE<sol>TRE<sol>DOM-Level-2-EventsE<sol>>

The constants CAPTURING_PHASE, AT_TARGET, and BUBBLING_PHASE are available
for comparing with L</GetEventPhase>. Currently these are accessed through
the (mouse or key) event object, like $event->AT_TARGET, but maybe they
should be exportable class constants (if I can figure out how to do that).
DEPRECATED: a little premature to deprecate, not having an alternative
(aside from using the numbers directly), but I really don't like how
they're currently implemented.

=cut

=head1 CLASS METHODS

=head2 $iid = Mozilla::DOM::Event->B<GetIID>()

Pass this to QueryInterface.

=cut

## NS_DEFINE_STATIC_IID_ACCESSOR(NS_IDOMEVENT_IID)
static nsIID
nsIDOMEvent::GetIID()
    CODE:
	const nsIID &id = nsIDOMEvent::GetIID();
	RETVAL = (nsIID) id;
    OUTPUT:
	RETVAL

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
are currently being processed. This is particularly useful
during capturing and bubbling.

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
You can morph that into a KeyEvent, etc., by calling
<QueryInterface|Mozilla::DOM::Supports/QueryInterface>.

The $event_type argument here depends on the argument you passed
to CreateEvent. Here is information obtained from section 1.6
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

Not provided with DOM Level 2, it says. However, see the Events example.

=item MutationEvents

The mutation event module is designed to allow notification of any
changes to the structure of a document, including attr and text
modifications. [...]

(I'm not sure why you'd create one of these. EventListeners?
Seems they'd be automatically generated, though, when you
modified the DOM somehow.)

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

I don't see anything in the Mozilla headers,
and I haven't wrapped a Mozilla::DOM::HTMLEvent class,
but here you go anyway.

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

# /usr/include/mozilla/nsIDOMUIEvent.h

=for object Mozilla::DOM::UIEvent

Mozilla::DOM::UIEvent is a wrapper around an instance of Mozilla's
nsIDOMUIEvent interface, from which L<Mozilla::DOM::KeyEvent|Mozilla::DOM::KeyEvent>
and L<Mozilla::DOM::MouseEvent|Mozilla::DOM::MouseEvent> inherit.
This class inherits from L<Event|Mozilla::DOM::Event>.

 * The nsIDOMUIEvent interface is the datatype for all UI events in the
 * Document Object Model.
 *
 * For more information on this interface please see
 * L<http:E<sol>E<sol>www.w3.orgE<sol>TRE<sol>DOM-Level-2-EventsE<sol>>

=cut

=head1 CLASS METHODS

=head2 $iid = Mozilla::DOM::UIEvent->B<GetIID>()

Pass this to QueryInterface.

=cut

## NS_DEFINE_STATIC_IID_ACCESSOR(NS_IDOMUIEVENT_IID)
static nsIID
nsIDOMUIEvent::GetIID()
    CODE:
	const nsIID &id = nsIDOMUIEvent::GetIID();
	RETVAL = (nsIID) id;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::UIEvent::GetDetail

=for signature $int = $event->GetDetail

I don't know what a "detail" is. (Apparently it isn't used during
dom_mouse_over or dom_mouse_out signals. When clicking the mouse,
it seems to be the number of consecutive clicks, up to 3.)

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

See the DOM Level 2 Views specification.

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

=for apidoc Mozilla::DOM::UIEvent::InitUIEvent

=for signature $event->InitUIEvent($eventType, $canbubble, $cancelable, $detail)

See L<Event::InitEvent|Mozilla::DOM::Event::InitEvent> for more
information. This method is basically the same, but with two
extra arguments.
(XXX: add docs for args)

Note: I don't see how you can Create or QueryInterface an AbstractView,
and trying to pass in C<0> or C<undef> was just causing a segfault,
so I've omitted what would normally be the 4th argument of this method.
If someone can explain why you'd need it and how you'd use it,
then I can put it back in.

=cut

## InitUIEvent(const nsAString & typeArg, PRBool canBubbleArg, PRBool cancelableArg, nsIDOMAbstractView *viewArg, PRInt32 detailArg)
void
moz_dom_InitUIEvent (event, eventtype, canbubble, cancelable, detail)
	nsIDOMUIEvent *event;
	nsEmbedString eventtype;
	PRBool canbubble;
	PRBool cancelable;
	PRInt32 detail;
    CODE:
	event->InitUIEvent(eventtype, canbubble, cancelable, nsnull, detail);

# -----------------------------------------------------------------------------

MODULE = Mozilla::DOM	PACKAGE = Mozilla::DOM::DocumentEvent	PREFIX = moz_dom_

# /usr/include/mozilla/nsIDOMDocumentEvent.h

=for object Mozilla::DOM::DocumentEvent

Mozilla::DOM::DocumentEvent is a wrapper around an instance of Mozilla's
nsIDOMDocumentEvent interface. This class inherits from
L<Supports|Mozilla::DOM::Supports>.

 * The nsIDOMDocumentEvent interface is the interface to the event
 * factory method on a DOM document object.
 *
 * For more information on this interface please see 
 * L<http:E<sol>E<sol>www.w3.orgE<sol>TRE<sol>DOM-Level-2-EventsE<sol>>

(In particular, sections 1.5 and 1.6. Very important to read that
if you want to understand how to create an L<Event|Mozilla::DOM::Event>.)

=cut

=head1 CLASS METHODS

=head2 $iid = Mozilla::DOM::DocumentEvent->B<GetIID>()

Pass this to QueryInterface on a L<Document|Mozilla::DOM::Document>
object to get back a DocumentEvent, like

  $window = $browser->GetContentDOMWindow;
  $doc = $window->GetDocument;
  $iid = Mozilla::DOM::DocumentEvent->GetIID
  $docevent = $doc->QueryInterface($iid);
  $event = $docevent->CreateEvent('MouseEvents');
  $event->InitEvent('click', 1, 1);
  ...

You can also print it out, and it will look like

  {46b91d66-28e2-11d4-ab1e-0010830123b4}

=cut

## NS_DEFINE_STATIC_IID_ACCESSOR(NS_IDOMDOCUMENTEVENT_IID)
static nsIID
nsIDOMDocumentEvent::GetIID()
    CODE:
	const nsIID &id = nsIDOMDocumentEvent::GetIID();
	RETVAL = (nsIID) id;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::DocumentEvent::CreateEvent

=for signature $domevent = $docevent->CreateEvent($eventType)

$event_type is a string, apparently one of 'Events', 'UIEvents',
'HTMLEvents', 'MutationEvents', 'KeyEvents', or 'MouseEvents'.
See section 1.6 of the DOM Level 2 specs. Apparently 'KeyEvents'
is not in DOM Level 2, but I was able to create them anyway.

The return value is an L<Event|Mozilla::DOM::Event> object.
You can then call L<InitEvent|Mozilla::DOM::Event/InitEvent>.
Or you can get the C<GetIID> of L<UIEvent|Mozilla::DOM::UIEvent>,
L<MouseEvent|Mozilla::DOM::MouseEvent>, or
L<MouseEvent|Mozilla::DOM::MouseEvent>, pass it to
$event->QueryInterface, call the corresponding Init(UI|Mouse|Key)Event
method. After that, call
L<DispatchEvent|Mozilla::DOM::EventTarget/DispatchEvent>
on an EventTarget.

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

# /usr/include/mozilla/nsIDOMMouseEvent.h

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

=head1 CLASS METHODS

=head2 $iid = Mozilla::DOM::MouseEvent->B<GetIID>()

Pass this to QueryInterface.

=cut

## NS_DEFINE_STATIC_IID_ACCESSOR(NS_IDOMMOUSEEVENT_IID)
static nsIID
nsIDOMMouseEvent::GetIID()
    CODE:
	const nsIID &id = nsIDOMMouseEvent::GetIID();
	RETVAL = (nsIID) id;
    OUTPUT:
	RETVAL

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

=for signature $event->InitMouseEvent($eventType, $canbubble, $cancelable, $detail, $screenx, $screeny, $clientx, $clienty, $ctrlkey, $altkey, $shiftkey, $metakey, $button, $target)

See L<Event::InitEvent|Mozilla::DOM::Event::InitEvent> for more
information. This method is basically the same as L<InitUIEvent>,
but with nine (ten normally) extra arguments. (!)
(XXX: add docs for args)

Note: I don't see how you can Create or QueryInterface an AbstractView,
and trying to pass in C<0> or C<undef> was just causing a segfault,
so I've omitted what would normally be the 4th argument of this method.
If someone can explain why you'd need it and how you'd use it,
then I can put it back in.

=cut

## InitMouseEvent(const nsAString & typeArg, PRBool canBubbleArg, PRBool cancelableArg, nsIDOMAbstractView *viewArg, PRInt32 detailArg, PRInt32 screenXArg, PRInt32 screenYArg, PRInt32 clientXArg, PRInt32 clientYArg, PRBool ctrlKeyArg, PRBool altKeyArg, PRBool shiftKeyArg, PRBool metaKeyArg, PRUint16 buttonArg, nsIDOMEventTarget *relatedTargetArg)
void
moz_dom_InitMouseEvent (event, eventtype, canbubble, cancelable, detail, screenx, screeny, clientx, clienty, ctrlkey, altkey, shiftkey, metakey, button, target)
	nsIDOMMouseEvent *event;
	nsEmbedString eventtype;
	PRBool canbubble;
	PRBool cancelable;
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
	event->InitMouseEvent(eventtype, canbubble, cancelable, nsnull, detail,
			      screenx, screeny, clientx, clienty,
			      ctrlkey, altkey, shiftkey, metakey,
 			      button, target);

# -----------------------------------------------------------------------------

MODULE = Mozilla::DOM	PACKAGE = Mozilla::DOM::KeyEvent	PREFIX = moz_dom_

# /usr/include/mozilla/dom/nsIDOMKeyEvent.h

=for object Mozilla::DOM::KeyEvent

The second argument of GtkMozEmbed's dom_key_* signal handlers will be a
Mozilla::DOM::KeyEvent object, which is a wrapper around an instance
of Mozilla's nsIDOMKeyEvent interface. This inherits from
L<UIEvent|Mozilla::DOM::UIEvent>.

Note: although <DOMImplementation|Mozilla::DOM::DOMImplementation>'s
HasFeature('KeyEvents', '2.0') (and '3.0' and '') claimed (on my
system) that KeyEvents were not supported, I found that you can in fact
do key events.

The following constants are available to be compared with L</GetKeyCode>.
XXX: This is currently buggy, because you have to call them as methods on the
key event object.
DEPRECATED: a little premature to deprecate, not having an alternative
(aside from using the numbers directly), but I really don't like how
they're currently implemented.

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

=head1 CLASS METHODS

=head2 $iid = Mozilla::DOM::KeyEvent->B<GetIID>()

Pass this to QueryInterface.

=cut

## NS_DEFINE_STATIC_IID_ACCESSOR(NS_IDOMKEYEVENT_IID)
static nsIID
nsIDOMKeyEvent::GetIID()
    CODE:
	const nsIID &id = nsIDOMKeyEvent::GetIID();
	RETVAL = (nsIID) id;
    OUTPUT:
	RETVAL

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

=for signature $event->InitKeyEvent($eventType, $canbubble, $cancelable, $ctrlkey, $altkey, $shiftkey, $metakey, $keycode, $charcode)

See L<Event::InitEvent|Mozilla::DOM::Event/InitEvent> for more
information. This method is basically the same as L<InitEvent>,
but with six (seven normally) extra arguments.
(XXX: add docs for args)

Note: I don't see how you can Create or QueryInterface an AbstractView,
and trying to pass in C<0> or C<undef> was just causing a segfault,
so I've omitted what would normally be the 4th argument of this method.
If someone can explain why you'd need it and how you'd use it,
then I can put it back in.

=cut

## InitKeyEvent(const nsAString & typeArg, PRBool canBubbleArg, PRBool cancelableArg, nsIDOMAbstractView *viewArg, PRBool ctrlKeyArg, PRBool altKeyArg, PRBool shiftKeyArg, PRBool metaKeyArg, PRUint32 keyCodeArg, PRUint32 charCodeArg)
void
moz_dom_InitKeyEvent (event, eventtype, canbubble, cancelable, ctrlkey, altkey, shiftkey, metakey, keycode, charcode)
	nsIDOMKeyEvent *event;
	nsEmbedString eventtype;
	PRBool canbubble;
	PRBool cancelable;
	PRBool ctrlkey;
	PRBool altkey;
	PRBool shiftkey;
	PRBool metakey;
	PRUint32 keycode;
	PRUint32 charcode;
    CODE:
	event->InitKeyEvent(eventtype, canbubble, cancelable, nsnull,
			    ctrlkey, altkey, shiftkey, metakey,
 			    keycode, charcode);

# -----------------------------------------------------------------------------

MODULE = Mozilla::DOM	PACKAGE = Mozilla::DOM::MutationEvent	PREFIX = moz_dom_

# /usr/include/mozilla/dom/nsIDOMMutationEvent.h

=for object Mozilla::DOM::MutationEvent

Mozilla::DOM::MutationEvent is a wrapper around an instance of Mozilla's
nsIDOMMutationEvent interface. This inherits from
L<UIEvent|Mozilla::DOM::Event>.

The following constants are available to be compared with L</GetAttrChange>.
XXX: This is currently buggy, because you have to call them as methods on the
mutation event object.
DEPRECATED: a little premature to deprecate, not having an alternative
(aside from using the numbers directly), but I really don't like how
they're currently implemented.

=over 4

=item MODIFICATION

=item ADDITION

=item REMOVAL

=back

=cut

=head1 CLASS METHODS

=head2 $iid = Mozilla::DOM::MutationEvent->B<GetIID>()

Pass this to QueryInterface.

=cut

## NS_DEFINE_STATIC_IID_ACCESSOR(NS_IDOMMUTATIONEVENT_IID)
static nsIID
nsIDOMMutationEvent::GetIID()
    CODE:
	const nsIID &id = nsIDOMMutationEvent::GetIID();
	RETVAL = (nsIID) id;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::MutationEvent::GetRelatedNode

=for signature $node = $mutationevent->GetRelatedNode()



=cut

## GetRelatedNode(nsIDOMNode * *aRelatedNode)
nsIDOMNode *
moz_dom_GetRelatedNode (mutationevent)
	nsIDOMMutationEvent *mutationevent;
    PREINIT:
	nsIDOMNode *node;
    CODE:
	mutationevent->GetRelatedNode(&node);
	RETVAL = node;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::MutationEvent::GetPrevValue

=for signature $value = $mutationevent->GetPrevValue()



=cut

## GetPrevValue(nsAString & aPrevValue)
nsEmbedString
moz_dom_GetPrevValue (mutationevent)
	nsIDOMMutationEvent *mutationevent;
    PREINIT:
	nsEmbedString value;
    CODE:
	mutationevent->GetPrevValue(value);
	RETVAL = value;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::MutationEvent::GetNewValue

=for signature $value = $mutationevent->GetNewValue()



=cut

## GetNewValue(nsAString & aNewValue)
nsEmbedString
moz_dom_GetNewValue (mutationevent)
	nsIDOMMutationEvent *mutationevent;
    PREINIT:
	nsEmbedString value;
    CODE:
	mutationevent->GetNewValue(value);
	RETVAL = value;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::MutationEvent::GetAttrName

=for signature $name = $mutationevent->GetAttrName()



=cut

## GetAttrName(nsAString & aAttrName)
nsEmbedString
moz_dom_GetAttrName (mutationevent)
	nsIDOMMutationEvent *mutationevent;
    PREINIT:
	nsEmbedString name;
    CODE:
	mutationevent->GetAttrName(name);
	RETVAL = name;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::MutationEvent::GetAttrChange

=for signature $mutationevent->GetAttrChange()



=cut

## GetAttrChange(PRUint16 *aAttrChange)
PRUint16
moz_dom_GetAttrChange (mutationevent)
	nsIDOMMutationEvent *mutationevent;
    PREINIT:
	PRUint16 change;
    CODE:
	mutationevent->GetAttrChange(&change);
	RETVAL = change;
    OUTPUT:
	RETVAL

=end comment

=cut

=for apidoc Mozilla::DOM::MutationEvent::InitMutationEvent

=for signature $event->InitMutationEvent($eventType, $canbubble, $cancelable, $node, $prevValue, $newValue, $attrName, $attrChange)

See L<Event::InitEvent|Mozilla::DOM::Event/InitEvent> for more
information. This method is basically the same as InitEvent,
but with five extra arguments.
(XXX: add docs for args)

=cut

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

# /usr/include/mozilla/nsIDOMEventTarget.h

=for object Mozilla::DOM::EventTarget

Mozilla::DOM::EventTarget is a wrapper around an instance of Mozilla's
nsIDOMEventTarget interface. This class inherits from
L<Supports|Mozilla::DOM::Supports>.

 * The nsIDOMEventTarget interface is the interface implemented by all
 * event targets in the Document Object Model.
 *
 * For more information on this interface please see 
 * L<http:E<sol>E<sol>www.w3.orgE<sol>TRE<sol>DOM-Level-2-EventsE<sol>>

Section 1.3 of the DOM Level 2 Events specification says
"the EventTarget interface is implemented by all Nodes" and
"this interface can be obtained by using binding-specific
casting methods on an instance of the Node interface".
What this means is you use QueryInterface to transform
a Node into an EventTarget. See the documentation below
for GetIID.

The AddEventListener and RemoveEventListener methods are only
implemented EXPERIMENTALLY. See README for how to enable
experimental features.

=cut

=head1 CLASS METHODS

=head2 $iid = Mozilla::DOM::EventTarget->B<GetIID>()

Pass this to QueryInterface on a L<Node|Mozilla::DOM::Node>
object to get back an EventTarget, like

  $iid = Mozilla::DOM::EventTarget->GetIID
  $target = $body->QueryInterface($iid);
  $target->DispatchEvent($event);

You can also print it out, and it will look like

  {1c773b30-d1cf-11d2-bd95-00805f8ae3f4}

=cut

## NS_DEFINE_STATIC_IID_ACCESSOR(NS_IDOMEVENTTARGET_IID)
static nsIID
nsIDOMEventTarget::GetIID()
    CODE:
	const nsIID id = nsIDOMEventTarget::GetIID();
	RETVAL = (nsIID) id;
    OUTPUT:
	RETVAL

# INCLUDE: perl -pe 's/XXXXX/DOMEventTarget/g' GetIID.xsh |

#ifdef MDEXP_EVENT_LISTENER

=for apidoc Mozilla::DOM::EventTarget::AddEventListener

=for signature $target->AddEventListener($type, $listener, $useCapture)

THIS METHOD IS EXPERIMENTAL. SEE README FOR HOW TO ENABLE EXPERIMENTAL FEATURES.

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
such as 'click'. See L<Mozilla::DOM::Event::InitEvent|Mozilla::DOM::Event::InitEvent>
for other types.

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

THIS METHOD IS EXPERIMENTAL. SEE README FOR HOW TO ENABLE EXPERIMENTAL FEATURES.

This method allows the removal of event listeners from the event 
target. If an L<EventListener|Mozilla::DOM::EventListener> is removed
from an EventTarget while it is processing an event, it will not be triggered
by the current actions. EventListeners can never be invoked after being
removed. Calling removeEventListener with arguments which do not identify
any currently registered EventListener on the EventTarget has no effect.

=over 4

=item $type

Specifies the event type of the L<EventListener|Mozilla::DOM::EventListener>
being removed. This is a string such as 'mouseover'. See
L<Mozilla::DOM::Event::InitEvent|Mozilla::DOM::Event::InitEvent>
for the possible types.

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
	MozDomEventListener *listener;
	PRBool usecapture;
    ALIAS:
	Mozilla::DOM::EventTarget::RemoveEventListener = 1
    CODE:
	switch (ix) {
		case 0:
			/* XXX: here is where we should probably actually create
				the MozDomEventListener */
			target->AddEventListener(type, listener, usecapture);
			break;
		case 1:
			target->RemoveEventListener(type, listener, usecapture);
			/* XXX: here is where we should probably actually destroy
				the MozDomEventListener */
			break;
		default: break;
	}

#endif /* MDEXP_EVENT_LISTENER */

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

# /usr/include/mozilla/nsIDOMEventListener.h

#ifdef MDEXP_EVENT_LISTENER

=for object Mozilla::DOM::EventListener

THIS CLASS IS EXPERIMENTAL. SEE README FOR HOW TO ENABLE EXPERIMENTAL FEATURES.

Mozilla::DOM::EventListener is a wrapper around an instance of Mozilla's
nsIDOMEventListener interface. This class inherits from
L<Supports|Mozilla::DOM::Supports>.

 * The nsIDOMEventListener interface is a callback interface for
 * listening to events in the Document Object Model.
 *
 * For more information on this interface please see 
 * L<http:E<sol>E<sol>www.w3.orgE<sol>TRE<sol>DOM-Level-2-EventsE<sol>>

From DOM 2 spec:
The EventListener interface is the primary method
for handling events. Users implement the EventListener interface and
register their listener on an EventTarget using the AddEventListener
method. The users should also remove their EventListener from its
EventTarget after they have completed using the listener.

Here is why support for EventListener is considered "experimental".
If your listener goes out of scope, HandleEvent will segfault
because the class's destructor gets called. (So you have to put
the listener in some "global" variable.) Obviously I need to prevent
the segfault from happening, but the current workaround is to make
sure there's always something pointing to an EventListener so that
it doesn't go out of scope.
  The ideal situation would be the following. Say that you
call AddEventListener in one signal handler with a certain
EventListener. You're not likely to want to also call RemoveEventListener
from the same handler. However, how would you access the original
EventListener if it's out of scope? You could create a new
EventListener with the same parameters as the one you previously
passed to AddEventListener. It wouldn't even matter what subref you
passed to it; calling RemoveEventListener with this EventListener
would have the same effect as calling it with the original EventListener.
  But the problem is keeping the internal event listener object alive
even after the Mozilla::DOM::EventListener object has been destroyed,
because otherwise when HandleEvent is called it will point to an
invalid event listener. I think the way to do this will be to only
create the internal event listener object when AddEventListener is
called, and only if no previous EventListener of the same type has
been added. Then only destroy the internal event listener when
RemoveEventListener is called, checking first that one exists to
be destroyed. I think these changes would be backwards compatible.

=cut

=head1 CLASS METHODS

=head2 $iid = Mozilla::DOM::EventListener->B<GetIID>()

Pass this to QueryInterface.

=cut

## NS_DEFINE_STATIC_IID_ACCESSOR(NS_IDOMEVENTLISTENER_IID)
static nsIID
nsIDOMEventListener::GetIID()
    CODE:
	const nsIID &id = nsIDOMEventListener::GetIID();
	RETVAL = (nsIID) id;
    OUTPUT:
	RETVAL

=head2 Mozilla::DOM::EventListener->B<new>(\&handler)

The constructor for this class. Pass a subroutine reference
as its argument. This subroutine will be called from the
HandleEvent method.

=cut

## See C++ class at the top of this file.
## MozDomEventListner isa nsIDOMEventListener.
MozDomEventListener *
MozDomEventListener::new(handler)
	SV *handler;
    PREINIT:
	MozDomEventListener *listener;
    CODE:
	listener = new MozDomEventListener(handler);
	RETVAL = listener;
    OUTPUT:
	RETVAL

void
MozDomEventListener::DESTROY()

=head2 $listener->HandleEvent($event)

Note: you cannot call this method from Perl. Instead you pass
a handler (subroutine reference) to this class's `new' method.
The handler's argument will be the event being handled by HandleEvent.

This method is called whenever an event occurs of the type for which 
the EventListener interface was registered.

The L<Event|Mozilla::DOM::Event> contains contextual information about
the event. It also contains the
L<StopPropagation|Mozilla::DOM::Event/StopPropagation> and
L<PreventDefault|Mozilla::DOM::Event/PreventDefault> methods
which are used in determining the event's flow and default action.

=cut

## HandleEvent(nsIDOMEvent *event)
## See the C++ class at the top of this file

#endif /* MDEXP_EVENT_LISTENER */

# -----------------------------------------------------------------------------

MODULE = Mozilla::DOM	PACKAGE = Mozilla::DOM::Window	PREFIX = moz_dom_

=for object Mozilla::DOM::Window

# /usr/include/mozilla/nsIDOMWindow.h

Mozilla::DOM::Window is a wrapper around an instance of Mozilla's
nsIDOMWindow interface. This class inherits from
L<Supports|Mozilla::DOM::Supports>.

 * The nsIDOMWindow interface is the primary interface for a DOM
 * window object. It represents a single window object that may
 * contain child windows if the document in the window contains a
 * HTML frameset document or if the document contains iframe elements.
 *
 * This interface is not officially defined by any standard bodies, it
 * originates from the defacto DOM Level 0 standard.

=cut

=head1 CLASS METHODS

=head2 $iid = Mozilla::DOM::Window->B<GetIID>()

Pass this to QueryInterface.

=cut

## NS_DEFINE_STATIC_IID_ACCESSOR(NS_IDOMWINDOW_IID)
static nsIID
nsIDOMWindow::GetIID()
    CODE:
	const nsIID &id = nsIDOMWindow::GetIID();
	RETVAL = (nsIID) id;
    OUTPUT:
	RETVAL

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

=for apidoc Mozilla::DOM::Window::GetTextZoom

=for signature $num = $window->GetTextZoom()

   * Set/Get the document scale factor as a multiplier on the default
   * size. When setting this attribute, a NS_ERROR_NOT_IMPLEMENTED
   * error may be returned by implementations not supporting
   * zoom. Implementations not supporting zoom should return 1.0 all
   * the time for the Get operation. 1.0 is equals normal size,
   * i.e. no zoom.

=cut

## GetTextZoom(float *aTextZoom)
float
moz_dom_GetTextZoom (window)
	nsIDOMWindow *window;
    PREINIT:
	float zoom;
    CODE:
	window->GetTextZoom(&zoom);
	RETVAL = zoom;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::Window::SetTextZoom

=for signature $window->SetTextZoom($num)



=cut

## SetTextZoom(float aTextZoom)
void
moz_dom_SetTextZoom (window, zoom)
	nsIDOMWindow *window;
	float zoom;
    CODE:
	window->SetTextZoom(zoom);

=for apidoc Mozilla::DOM::Window::GetSelection

=for signature $selection = $window->GetSelection()

   * Method for accessing this window's selection object.

=cut

## GetSelection(nsISelection **_retval)
nsISelection *
moz_dom_GetSelection (window)
	nsIDOMWindow *window;
    PREINIT:
	nsISelection *sel;
    CODE:
	window->GetSelection(&sel);
	RETVAL = sel;
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
#	nsIDOMWindow *window;
#	nsIDOMBarProp * *aScrollbars ;
#    PREINIT:
#	
#    CODE:
#	window->GetScrollbars(&);
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
#	nsIDOMWindow *window;
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
#	nsIDOMWindow *window;
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
#	nsIDOMWindow *window;
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
#	nsIDOMWindow *window;
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
#	nsIDOMWindow *window;
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
#	nsIDOMWindow *window;
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

MODULE = Mozilla::DOM	PACKAGE = Mozilla::DOM::Window2	PREFIX = moz_dom_

# /usr/include/mozilla/nsIDOMWindow2.h

=for object Mozilla::DOM::Window2

Mozilla::DOM::Window2 is a wrapper around an instance of Mozilla's
nsIDOMWindow2 interface. This class inherits from
L<Window|Mozilla::DOM::Window>.



=cut

=head1 CLASS METHODS

=head2 $iid = Mozilla::DOM::Window2->B<GetIID>()

Pass this to QueryInterface.

=cut

## NS_DEFINE_STATIC_IID_ACCESSOR(NS_IDOMWINDOW2_IID)
static nsIID
nsIDOMWindow2::GetIID()
    CODE:
	const nsIID &id = nsIDOMWindow2::GetIID();
	RETVAL = (nsIID) id;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::Window2::GetWindowRoot

=for signature $windowroot = $window2->GetWindowRoot()



=cut

## GetWindowRoot(nsIDOMEventTarget * *aWindowRoot)
nsIDOMEventTarget *
moz_dom_GetWindowRoot (window2)
	nsIDOMWindow2 *window2;
    PREINIT:
	nsIDOMEventTarget * aWindowRoot;
    CODE:
	window2->GetWindowRoot(&aWindowRoot);
	RETVAL = aWindowRoot;
    OUTPUT:
	RETVAL

# -----------------------------------------------------------------------------

MODULE = Mozilla::DOM	PACKAGE = Mozilla::DOM::WindowInternal	PREFIX = moz_dom_

# /usr/include/mozilla/dom/nsIDOMWindowInternal.h

=for object Mozilla::DOM::WindowInternal

Mozilla::DOM::WindowInternal is a wrapper around an instance of Mozilla's
nsIDOMWindowInternal interface. This class inherits from
L<Window2|Mozilla::DOM::Window2>.

Note: the following methods are not wrapped (yet?):
GetCrypto, GetPkcs11, GetControllers, GetPrompter,
GetMenubar, GetToolbar, GetLocationbar, GetPersonalbar,
GetStatusbar, GetDirectories.

=cut

=head1 CLASS METHODS

=head2 $iid = Mozilla::DOM::WindowInternal->B<GetIID>()

Pass this to QueryInterface.

=cut

## NS_DEFINE_STATIC_IID_ACCESSOR(NS_IDOMWINDOWINTERNAL_IID)
static nsIID
nsIDOMWindowInternal::GetIID()
    CODE:
	const nsIID &id = nsIDOMWindowInternal::GetIID();
	RETVAL = (nsIID) id;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::WindowInternal::GetWindow

=for signature $window = $windowinternal->GetWindow()



=cut

## GetWindow(nsIDOMWindowInternal * *aWindow)
nsIDOMWindowInternal *
moz_dom_GetWindow (windowinternal)
	nsIDOMWindowInternal *windowinternal;
    PREINIT:
	nsIDOMWindowInternal * aWindow;
    CODE:
	windowinternal->GetWindow(&aWindow);
	RETVAL = aWindow;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::WindowInternal::GetSelf

=for signature $self = $windowinternal->GetSelf()



=cut

## GetSelf(nsIDOMWindowInternal * *aSelf)
nsIDOMWindowInternal *
moz_dom_GetSelf (windowinternal)
	nsIDOMWindowInternal *windowinternal;
    PREINIT:
	nsIDOMWindowInternal * aSelf;
    CODE:
	windowinternal->GetSelf(&aSelf);
	RETVAL = aSelf;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::WindowInternal::GetNavigator

=for signature $navigator = $windowinternal->GetNavigator()



=cut

## GetNavigator(nsIDOMNavigator * *aNavigator)
nsIDOMNavigator *
moz_dom_GetNavigator (windowinternal)
	nsIDOMWindowInternal *windowinternal;
    PREINIT:
	nsIDOMNavigator * aNavigator;
    CODE:
	windowinternal->GetNavigator(&aNavigator);
	RETVAL = aNavigator;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::WindowInternal::GetScreen

=for signature $screen = $windowinternal->GetScreen()



=cut

## GetScreen(nsIDOMScreen * *aScreen)
nsIDOMScreen *
moz_dom_GetScreen (windowinternal)
	nsIDOMWindowInternal *windowinternal;
    PREINIT:
	nsIDOMScreen * aScreen;
    CODE:
	windowinternal->GetScreen(&aScreen);
	RETVAL = aScreen;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::WindowInternal::GetHistory

=for signature $history = $windowinternal->GetHistory()



=cut

## GetHistory(nsIDOMHistory * *aHistory)
nsIDOMHistory *
moz_dom_GetHistory (windowinternal)
	nsIDOMWindowInternal *windowinternal;
    PREINIT:
	nsIDOMHistory * aHistory;
    CODE:
	windowinternal->GetHistory(&aHistory);
	RETVAL = aHistory;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::WindowInternal::GetContent

=for signature $content = $windowinternal->GetContent()



=cut

## GetContent(nsIDOMWindow * *aContent)
nsIDOMWindow *
moz_dom_GetContent (windowinternal)
	nsIDOMWindowInternal *windowinternal;
    PREINIT:
	nsIDOMWindow * aContent;
    CODE:
	windowinternal->GetContent(&aContent);
	RETVAL = aContent;
    OUTPUT:
	RETVAL

#=for apidoc Mozilla::DOM::WindowInternal::GetPrompter
#
#=for signature $prompter = $windowinternal->GetPrompter()
#
#
#
#=cut
#
### GetPrompter(nsIPrompt * *aPrompter)
#nsIPrompt *
#moz_dom_GetPrompter (windowinternal)
#	nsIDOMWindowInternal *windowinternal;
#    PREINIT:
#	nsIPrompt * aPrompter;
#    CODE:
#	windowinternal->GetPrompter(&aPrompter);
#	RETVAL = aPrompter;
#    OUTPUT:
#	RETVAL
#
#=for apidoc Mozilla::DOM::WindowInternal::GetMenubar
#
#=for signature $menubar = $windowinternal->GetMenubar()
#
#
#
#=cut
#
### GetMenubar(nsIDOMBarProp * *aMenubar)
#nsIDOMBarProp *
#moz_dom_GetMenubar (windowinternal)
#	nsIDOMWindowInternal *windowinternal;
#    PREINIT:
#	nsIDOMBarProp * aMenubar;
#    CODE:
#	windowinternal->GetMenubar(&aMenubar);
#	RETVAL = aMenubar;
#    OUTPUT:
#	RETVAL
#
#=for apidoc Mozilla::DOM::WindowInternal::GetToolbar
#
#=for signature $toolbar = $windowinternal->GetToolbar()
#
#
#
#=cut
#
### GetToolbar(nsIDOMBarProp * *aToolbar)
#nsIDOMBarProp *
#moz_dom_GetToolbar (windowinternal)
#	nsIDOMWindowInternal *windowinternal;
#    PREINIT:
#	nsIDOMBarProp * aToolbar;
#    CODE:
#	windowinternal->GetToolbar(&aToolbar);
#	RETVAL = aToolbar;
#    OUTPUT:
#	RETVAL
#
#=for apidoc Mozilla::DOM::WindowInternal::GetLocationbar
#
#=for signature $locationbar = $windowinternal->GetLocationbar()
#
#
#
#=cut
#
### GetLocationbar(nsIDOMBarProp * *aLocationbar)
#nsIDOMBarProp *
#moz_dom_GetLocationbar (windowinternal)
#	nsIDOMWindowInternal *windowinternal;
#    PREINIT:
#	nsIDOMBarProp * aLocationbar;
#    CODE:
#	windowinternal->GetLocationbar(&aLocationbar);
#	RETVAL = aLocationbar;
#    OUTPUT:
#	RETVAL
#
#=for apidoc Mozilla::DOM::WindowInternal::GetPersonalbar
#
#=for signature $personalbar = $windowinternal->GetPersonalbar()
#
#
#
#=cut
#
### GetPersonalbar(nsIDOMBarProp * *aPersonalbar)
#nsIDOMBarProp *
#moz_dom_GetPersonalbar (windowinternal)
#	nsIDOMWindowInternal *windowinternal;
#    PREINIT:
#	nsIDOMBarProp * aPersonalbar;
#    CODE:
#	windowinternal->GetPersonalbar(&aPersonalbar);
#	RETVAL = aPersonalbar;
#    OUTPUT:
#	RETVAL
#
#=for apidoc Mozilla::DOM::WindowInternal::GetStatusbar
#
#=for signature $statusbar = $windowinternal->GetStatusbar()
#
#
#
#=cut
#
### GetStatusbar(nsIDOMBarProp * *aStatusbar)
#nsIDOMBarProp *
#moz_dom_GetStatusbar (windowinternal)
#	nsIDOMWindowInternal *windowinternal;
#    PREINIT:
#	nsIDOMBarProp * aStatusbar;
#    CODE:
#	windowinternal->GetStatusbar(&aStatusbar);
#	RETVAL = aStatusbar;
#    OUTPUT:
#	RETVAL
#
#=for apidoc Mozilla::DOM::WindowInternal::GetDirectories
#
#=for signature $directories = $windowinternal->GetDirectories()
#
#
#
#=cut
#
### GetDirectories(nsIDOMBarProp * *aDirectories)
#nsIDOMBarProp *
#moz_dom_GetDirectories (windowinternal)
#	nsIDOMWindowInternal *windowinternal;
#    PREINIT:
#	nsIDOMBarProp * aDirectories;
#    CODE:
#	windowinternal->GetDirectories(&aDirectories);
#	RETVAL = aDirectories;
#    OUTPUT:
#	RETVAL

=for apidoc Mozilla::DOM::WindowInternal::GetClosed

=for signature $bool = $windowinternal->GetClosed()



=cut

## GetClosed(PRBool *aClosed)
PRBool
moz_dom_GetClosed (windowinternal)
	nsIDOMWindowInternal *windowinternal;
    PREINIT:
	PRBool aClosed;
    CODE:
	windowinternal->GetClosed(&aClosed);
	RETVAL = aClosed;
    OUTPUT:
	RETVAL

#=for apidoc Mozilla::DOM::WindowInternal::GetCrypto
#
#=for signature $crypto = $windowinternal->GetCrypto()
#
#
#
#=cut
#
### GetCrypto(nsIDOMCrypto * *aCrypto)
#nsIDOMCrypto *
#moz_dom_GetCrypto (windowinternal)
#	nsIDOMWindowInternal *windowinternal;
#    PREINIT:
#	nsIDOMCrypto * aCrypto;
#    CODE:
#	windowinternal->GetCrypto(&aCrypto);
#	RETVAL = aCrypto;
#    OUTPUT:
#	RETVAL
#
#=for apidoc Mozilla::DOM::WindowInternal::GetPkcs11
#
#=for signature $pkcs11 = $windowinternal->GetPkcs11()
#
#
#
#=cut
#
### GetPkcs11(nsIDOMPkcs11 * *aPkcs11)
#nsIDOMPkcs11 *
#moz_dom_GetPkcs11 (windowinternal)
#	nsIDOMWindowInternal *windowinternal;
#    PREINIT:
#	nsIDOMPkcs11 * aPkcs11;
#    CODE:
#	windowinternal->GetPkcs11(&aPkcs11);
#	RETVAL = aPkcs11;
#    OUTPUT:
#	RETVAL
#
#=for apidoc Mozilla::DOM::WindowInternal::GetControllers
#
#=for signature $controllers = $windowinternal->GetControllers()
#
#
#
#=cut
#
### GetControllers(nsIControllers * *aControllers)
#nsIControllers *
#moz_dom_GetControllers (windowinternal)
#	nsIDOMWindowInternal *windowinternal;
#    PREINIT:
#	nsIControllers * aControllers;
#    CODE:
#	windowinternal->GetControllers(&aControllers);
#	RETVAL = aControllers;
#    OUTPUT:
#	RETVAL

=for apidoc Mozilla::DOM::WindowInternal::GetOpener

=for signature $opener = $windowinternal->GetOpener()



=cut

## GetOpener(nsIDOMWindowInternal * *aOpener)
nsIDOMWindowInternal *
moz_dom_GetOpener (windowinternal)
	nsIDOMWindowInternal *windowinternal;
    PREINIT:
	nsIDOMWindowInternal * aOpener;
    CODE:
	windowinternal->GetOpener(&aOpener);
	RETVAL = aOpener;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::WindowInternal::SetOpener

=for signature $windowinternal->SetOpener($opener)



=cut

## SetOpener(nsIDOMWindowInternal * aOpener)
void
moz_dom_SetOpener (windowinternal, aOpener)
	nsIDOMWindowInternal *windowinternal;
	nsIDOMWindowInternal *  aOpener;
    CODE:
	windowinternal->SetOpener(aOpener);

=for apidoc Mozilla::DOM::WindowInternal::GetStatus

=for signature $status = $windowinternal->GetStatus()



=cut

## GetStatus(nsAString & aStatus)
nsEmbedString
moz_dom_GetStatus (windowinternal)
	nsIDOMWindowInternal *windowinternal;
    PREINIT:
	nsEmbedString aStatus;
    CODE:
	windowinternal->GetStatus(aStatus);
	RETVAL = aStatus;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::WindowInternal::SetStatus

=for signature $windowinternal->SetStatus($status)



=cut

## SetStatus(const nsAString & aStatus)
void
moz_dom_SetStatus (windowinternal, aStatus)
	nsIDOMWindowInternal *windowinternal;
	nsEmbedString aStatus;
    CODE:
	windowinternal->SetStatus(aStatus);

=for apidoc Mozilla::DOM::WindowInternal::GetDefaultStatus

=for signature $defaultstatus = $windowinternal->GetDefaultStatus()



=cut

## GetDefaultStatus(nsAString & aDefaultStatus)
nsEmbedString
moz_dom_GetDefaultStatus (windowinternal)
	nsIDOMWindowInternal *windowinternal;
    PREINIT:
	nsEmbedString aDefaultStatus;
    CODE:
	windowinternal->GetDefaultStatus(aDefaultStatus);
	RETVAL = aDefaultStatus;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::WindowInternal::SetDefaultStatus

=for signature $windowinternal->SetDefaultStatus($defaultstatus)



=cut

## SetDefaultStatus(const nsAString & aDefaultStatus)
void
moz_dom_SetDefaultStatus (windowinternal, aDefaultStatus)
	nsIDOMWindowInternal *windowinternal;
	nsEmbedString aDefaultStatus;
    CODE:
	windowinternal->SetDefaultStatus(aDefaultStatus);

=for apidoc Mozilla::DOM::WindowInternal::GetLocation

=for signature $location = $windowinternal->GetLocation()



=cut

## GetLocation(nsIDOMLocation * *aLocation)
nsIDOMLocation *
moz_dom_GetLocation (windowinternal)
	nsIDOMWindowInternal *windowinternal;
    PREINIT:
	nsIDOMLocation * aLocation;
    CODE:
	windowinternal->GetLocation(&aLocation);
	RETVAL = aLocation;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::WindowInternal::GetInnerWidth

=for signature $innerwidth = $windowinternal->GetInnerWidth()



=cut

## GetInnerWidth(PRInt32 *aInnerWidth)
PRInt32
moz_dom_GetInnerWidth (windowinternal)
	nsIDOMWindowInternal *windowinternal;
    PREINIT:
	PRInt32 aInnerWidth;
    CODE:
	windowinternal->GetInnerWidth(&aInnerWidth);
	RETVAL = aInnerWidth;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::WindowInternal::SetInnerWidth

=for signature $windowinternal->SetInnerWidth($innerwidth)



=cut

## SetInnerWidth(PRInt32 aInnerWidth)
void
moz_dom_SetInnerWidth (windowinternal, aInnerWidth)
	nsIDOMWindowInternal *windowinternal;
	PRInt32  aInnerWidth;
    CODE:
	windowinternal->SetInnerWidth(aInnerWidth);

=for apidoc Mozilla::DOM::WindowInternal::GetInnerHeight

=for signature $innerheight = $windowinternal->GetInnerHeight()



=cut

## GetInnerHeight(PRInt32 *aInnerHeight)
PRInt32
moz_dom_GetInnerHeight (windowinternal)
	nsIDOMWindowInternal *windowinternal;
    PREINIT:
	PRInt32 aInnerHeight;
    CODE:
	windowinternal->GetInnerHeight(&aInnerHeight);
	RETVAL = aInnerHeight;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::WindowInternal::SetInnerHeight

=for signature $windowinternal->SetInnerHeight($innerheight)



=cut

## SetInnerHeight(PRInt32 aInnerHeight)
void
moz_dom_SetInnerHeight (windowinternal, aInnerHeight)
	nsIDOMWindowInternal *windowinternal;
	PRInt32  aInnerHeight;
    CODE:
	windowinternal->SetInnerHeight(aInnerHeight);

=for apidoc Mozilla::DOM::WindowInternal::GetOuterWidth

=for signature $outerwidth = $windowinternal->GetOuterWidth()



=cut

## GetOuterWidth(PRInt32 *aOuterWidth)
PRInt32
moz_dom_GetOuterWidth (windowinternal)
	nsIDOMWindowInternal *windowinternal;
    PREINIT:
	PRInt32 aOuterWidth;
    CODE:
	windowinternal->GetOuterWidth(&aOuterWidth);
	RETVAL = aOuterWidth;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::WindowInternal::SetOuterWidth

=for signature $windowinternal->SetOuterWidth($outerwidth)



=cut

## SetOuterWidth(PRInt32 aOuterWidth)
void
moz_dom_SetOuterWidth (windowinternal, aOuterWidth)
	nsIDOMWindowInternal *windowinternal;
	PRInt32  aOuterWidth;
    CODE:
	windowinternal->SetOuterWidth(aOuterWidth);

=for apidoc Mozilla::DOM::WindowInternal::GetOuterHeight

=for signature $outerheight = $windowinternal->GetOuterHeight()



=cut

## GetOuterHeight(PRInt32 *aOuterHeight)
PRInt32
moz_dom_GetOuterHeight (windowinternal)
	nsIDOMWindowInternal *windowinternal;
    PREINIT:
	PRInt32 aOuterHeight;
    CODE:
	windowinternal->GetOuterHeight(&aOuterHeight);
	RETVAL = aOuterHeight;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::WindowInternal::SetOuterHeight

=for signature $windowinternal->SetOuterHeight($outerheight)



=cut

## SetOuterHeight(PRInt32 aOuterHeight)
void
moz_dom_SetOuterHeight (windowinternal, aOuterHeight)
	nsIDOMWindowInternal *windowinternal;
	PRInt32  aOuterHeight;
    CODE:
	windowinternal->SetOuterHeight(aOuterHeight);

=for apidoc Mozilla::DOM::WindowInternal::GetScreenX

=for signature $screenx = $windowinternal->GetScreenX()



=cut

## GetScreenX(PRInt32 *aScreenX)
PRInt32
moz_dom_GetScreenX (windowinternal)
	nsIDOMWindowInternal *windowinternal;
    PREINIT:
	PRInt32 aScreenX;
    CODE:
	windowinternal->GetScreenX(&aScreenX);
	RETVAL = aScreenX;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::WindowInternal::SetScreenX

=for signature $windowinternal->SetScreenX($screenx)



=cut

## SetScreenX(PRInt32 aScreenX)
void
moz_dom_SetScreenX (windowinternal, aScreenX)
	nsIDOMWindowInternal *windowinternal;
	PRInt32  aScreenX;
    CODE:
	windowinternal->SetScreenX(aScreenX);

=for apidoc Mozilla::DOM::WindowInternal::GetScreenY

=for signature $screeny = $windowinternal->GetScreenY()



=cut

## GetScreenY(PRInt32 *aScreenY)
PRInt32
moz_dom_GetScreenY (windowinternal)
	nsIDOMWindowInternal *windowinternal;
    PREINIT:
	PRInt32 aScreenY;
    CODE:
	windowinternal->GetScreenY(&aScreenY);
	RETVAL = aScreenY;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::WindowInternal::SetScreenY

=for signature $windowinternal->SetScreenY($screeny)



=cut

## SetScreenY(PRInt32 aScreenY)
void
moz_dom_SetScreenY (windowinternal, aScreenY)
	nsIDOMWindowInternal *windowinternal;
	PRInt32  aScreenY;
    CODE:
	windowinternal->SetScreenY(aScreenY);

=for apidoc Mozilla::DOM::WindowInternal::GetPageXOffset

=for signature $pagexoffset = $windowinternal->GetPageXOffset()



=cut

## GetPageXOffset(PRInt32 *aPageXOffset)
PRInt32
moz_dom_GetPageXOffset (windowinternal)
	nsIDOMWindowInternal *windowinternal;
    PREINIT:
	PRInt32 aPageXOffset;
    CODE:
	windowinternal->GetPageXOffset(&aPageXOffset);
	RETVAL = aPageXOffset;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::WindowInternal::GetPageYOffset

=for signature $pageyoffset = $windowinternal->GetPageYOffset()



=cut

## GetPageYOffset(PRInt32 *aPageYOffset)
PRInt32
moz_dom_GetPageYOffset (windowinternal)
	nsIDOMWindowInternal *windowinternal;
    PREINIT:
	PRInt32 aPageYOffset;
    CODE:
	windowinternal->GetPageYOffset(&aPageYOffset);
	RETVAL = aPageYOffset;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::WindowInternal::GetScrollMaxX

=for signature $scrollmaxx = $windowinternal->GetScrollMaxX()



=cut

## GetScrollMaxX(PRInt32 *aScrollMaxX)
PRInt32
moz_dom_GetScrollMaxX (windowinternal)
	nsIDOMWindowInternal *windowinternal;
    PREINIT:
	PRInt32 aScrollMaxX;
    CODE:
	windowinternal->GetScrollMaxX(&aScrollMaxX);
	RETVAL = aScrollMaxX;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::WindowInternal::GetScrollMaxY

=for signature $scrollmaxy = $windowinternal->GetScrollMaxY()



=cut

## GetScrollMaxY(PRInt32 *aScrollMaxY)
PRInt32
moz_dom_GetScrollMaxY (windowinternal)
	nsIDOMWindowInternal *windowinternal;
    PREINIT:
	PRInt32 aScrollMaxY;
    CODE:
	windowinternal->GetScrollMaxY(&aScrollMaxY);
	RETVAL = aScrollMaxY;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::WindowInternal::GetLength

=for signature $length = $windowinternal->GetLength()



=cut

## GetLength(PRUint32 *aLength)
PRUint32
moz_dom_GetLength (windowinternal)
	nsIDOMWindowInternal *windowinternal;
    PREINIT:
	PRUint32 aLength;
    CODE:
	windowinternal->GetLength(&aLength);
	RETVAL = aLength;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::WindowInternal::GetFullScreen

=for signature $bool = $windowinternal->GetFullScreen()



=cut

## GetFullScreen(PRBool *aFullScreen)
PRBool
moz_dom_GetFullScreen (windowinternal)
	nsIDOMWindowInternal *windowinternal;
    PREINIT:
	PRBool aFullScreen;
    CODE:
	windowinternal->GetFullScreen(&aFullScreen);
	RETVAL = aFullScreen;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::WindowInternal::SetFullScreen

=for signature $windowinternal->SetFullScreen($fullscreen)



=cut

## SetFullScreen(PRBool aFullScreen)
void
moz_dom_SetFullScreen (windowinternal, aFullScreen)
	nsIDOMWindowInternal *windowinternal;
	PRBool  aFullScreen;
    CODE:
	windowinternal->SetFullScreen(aFullScreen);

=for apidoc Mozilla::DOM::WindowInternal::Alert

=for signature $windowinternal->Alert($text)



=cut

## Alert(const nsAString & text)
void
moz_dom_Alert (windowinternal, text)
	nsIDOMWindowInternal *windowinternal;
	nsEmbedString text;
    CODE:
	windowinternal->Alert(text);

=for apidoc Mozilla::DOM::WindowInternal::Confirm

=for signature $bool = $windowinternal->Confirm($text)



=cut

## Confirm(const nsAString & text, PRBool *_retval)
PRBool
moz_dom_Confirm (windowinternal, text)
	nsIDOMWindowInternal *windowinternal;
	nsEmbedString text;
    PREINIT:
	PRBool _retval;
    CODE:
	windowinternal->Confirm(text, &_retval);
	RETVAL = _retval;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::WindowInternal::Prompt

=for signature $retval = $windowinternal->Prompt($message, $initial, $title, $savepassword)



=cut

## Prompt(const nsAString & aMessage, const nsAString & aInitial, const nsAString & aTitle, PRUint32 aSavePassword, nsAString & _retval)
nsEmbedString
moz_dom_Prompt (windowinternal, aMessage, aInitial, aTitle, aSavePassword)
	nsIDOMWindowInternal *windowinternal;
	nsEmbedString aMessage;
	nsEmbedString aInitial;
	nsEmbedString aTitle;
	PRUint32  aSavePassword;
    PREINIT:
	nsEmbedString _retval;
    CODE:
	windowinternal->Prompt(aMessage, aInitial, aTitle, aSavePassword, _retval);
	RETVAL = _retval;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::WindowInternal::Focus

=for signature $windowinternal->Focus()



=cut

## Focus(void)
void
moz_dom_Focus (windowinternal)
	nsIDOMWindowInternal *windowinternal;
    CODE:
	windowinternal->Focus();

=for apidoc Mozilla::DOM::WindowInternal::Blur

=for signature $windowinternal->Blur()



=cut

## Blur(void)
void
moz_dom_Blur (windowinternal)
	nsIDOMWindowInternal *windowinternal;
    CODE:
	windowinternal->Blur();

=for apidoc Mozilla::DOM::WindowInternal::Back

=for signature $windowinternal->Back()



=cut

## Back(void)
void
moz_dom_Back (windowinternal)
	nsIDOMWindowInternal *windowinternal;
    CODE:
	windowinternal->Back();

=for apidoc Mozilla::DOM::WindowInternal::Forward

=for signature $windowinternal->Forward()



=cut

## Forward(void)
void
moz_dom_Forward (windowinternal)
	nsIDOMWindowInternal *windowinternal;
    CODE:
	windowinternal->Forward();

=for apidoc Mozilla::DOM::WindowInternal::Home

=for signature $windowinternal->Home()



=cut

## Home(void)
void
moz_dom_Home (windowinternal)
	nsIDOMWindowInternal *windowinternal;
    CODE:
	windowinternal->Home();

=for apidoc Mozilla::DOM::WindowInternal::Stop

=for signature $windowinternal->Stop()



=cut

## Stop(void)
void
moz_dom_Stop (windowinternal)
	nsIDOMWindowInternal *windowinternal;
    CODE:
	windowinternal->Stop();

=for apidoc Mozilla::DOM::WindowInternal::Print

=for signature $windowinternal->Print()



=cut

## Print(void)
void
moz_dom_Print (windowinternal)
	nsIDOMWindowInternal *windowinternal;
    CODE:
	windowinternal->Print();

=for apidoc Mozilla::DOM::WindowInternal::MoveTo

=for signature $windowinternal->MoveTo($pos, $pos)



=cut

## MoveTo(PRInt32 xPos, PRInt32 yPos)
void
moz_dom_MoveTo (windowinternal, xPos, yPos)
	nsIDOMWindowInternal *windowinternal;
	PRInt32  xPos;
	PRInt32  yPos;
    CODE:
	windowinternal->MoveTo(xPos, yPos);

=for apidoc Mozilla::DOM::WindowInternal::MoveBy

=for signature $windowinternal->MoveBy($dif, $dif)



=cut

## MoveBy(PRInt32 xDif, PRInt32 yDif)
void
moz_dom_MoveBy (windowinternal, xDif, yDif)
	nsIDOMWindowInternal *windowinternal;
	PRInt32  xDif;
	PRInt32  yDif;
    CODE:
	windowinternal->MoveBy(xDif, yDif);

=for apidoc Mozilla::DOM::WindowInternal::ResizeTo

=for signature $windowinternal->ResizeTo($width, $height)



=cut

## ResizeTo(PRInt32 width, PRInt32 height)
void
moz_dom_ResizeTo (windowinternal, width, height)
	nsIDOMWindowInternal *windowinternal;
	PRInt32  width;
	PRInt32  height;
    CODE:
	windowinternal->ResizeTo(width, height);

=for apidoc Mozilla::DOM::WindowInternal::ResizeBy

=for signature $windowinternal->ResizeBy($widthdif, $heightdif)



=cut

## ResizeBy(PRInt32 widthDif, PRInt32 heightDif)
void
moz_dom_ResizeBy (windowinternal, widthDif, heightDif)
	nsIDOMWindowInternal *windowinternal;
	PRInt32  widthDif;
	PRInt32  heightDif;
    CODE:
	windowinternal->ResizeBy(widthDif, heightDif);

=for apidoc Mozilla::DOM::WindowInternal::Scroll

=for signature $windowinternal->Scroll($scroll, $scroll)



=cut

## Scroll(PRInt32 xScroll, PRInt32 yScroll)
void
moz_dom_Scroll (windowinternal, xScroll, yScroll)
	nsIDOMWindowInternal *windowinternal;
	PRInt32  xScroll;
	PRInt32  yScroll;
    CODE:
	windowinternal->Scroll(xScroll, yScroll);

=for apidoc Mozilla::DOM::WindowInternal::Open

=for signature $retval = $windowinternal->Open($url, $name, $options)



=cut

## Open(const nsAString & url, const nsAString & name, const nsAString & options, nsIDOMWindow **_retval)
nsIDOMWindow *
moz_dom_Open (windowinternal, url, name, options)
	nsIDOMWindowInternal *windowinternal;
	nsEmbedString url;
	nsEmbedString name;
	nsEmbedString options;
    PREINIT:
	nsIDOMWindow * _retval;
    CODE:
	windowinternal->Open(url, name, options, &_retval);
	RETVAL = _retval;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::WindowInternal::OpenDialog

=for signature $retval = $windowinternal->OpenDialog($url, $name, $options, $extraargument)



=cut

## OpenDialog(const nsAString & url, const nsAString & name, const nsAString & options, nsISupports *aExtraArgument, nsIDOMWindow **_retval)
nsIDOMWindow *
moz_dom_OpenDialog (windowinternal, url, name, options, aExtraArgument)
	nsIDOMWindowInternal *windowinternal;
	nsEmbedString url;
	nsEmbedString name;
	nsEmbedString options;
	nsISupports * aExtraArgument;
    PREINIT:
	nsIDOMWindow * _retval;
    CODE:
	windowinternal->OpenDialog(url, name, options, aExtraArgument, &_retval);
	RETVAL = _retval;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::WindowInternal::Close

=for signature $windowinternal->Close()



=cut

## Close(void)
void
moz_dom_Close (windowinternal)
	nsIDOMWindowInternal *windowinternal;
    CODE:
	windowinternal->Close();

=for apidoc Mozilla::DOM::WindowInternal::UpdateCommands

=for signature $windowinternal->UpdateCommands($action)



=cut

## UpdateCommands(const nsAString & action)
void
moz_dom_UpdateCommands (windowinternal, action)
	nsIDOMWindowInternal *windowinternal;
	nsEmbedString action;
    CODE:
	windowinternal->UpdateCommands(action);

=for apidoc Mozilla::DOM::WindowInternal::Find

=for signature $bool = $windowinternal->Find($str, $casesensitive, $backwards, $wraparound, $wholeword, $searchinframes, $showdialog)



=cut

## Find(const nsAString & str, PRBool caseSensitive, PRBool backwards, PRBool wrapAround, PRBool wholeWord, PRBool searchInFrames, PRBool showDialog, PRBool *_retval)
PRBool
moz_dom_Find (windowinternal, str, caseSensitive, backwards, wrapAround, wholeWord, searchInFrames, showDialog)
	nsIDOMWindowInternal *windowinternal;
	nsEmbedString str;
	PRBool  caseSensitive;
	PRBool  backwards;
	PRBool  wrapAround;
	PRBool  wholeWord;
	PRBool  searchInFrames;
	PRBool  showDialog;
    PREINIT:
	PRBool _retval;
    CODE:
	windowinternal->Find(str, caseSensitive, backwards, wrapAround, wholeWord, searchInFrames, showDialog, &_retval);
	RETVAL = _retval;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::WindowInternal::Atob

=for signature $retval = $windowinternal->Atob($asciistring)



=cut

## Atob(const nsAString & aAsciiString, nsAString & _retval)
nsEmbedString
moz_dom_Atob (windowinternal, aAsciiString)
	nsIDOMWindowInternal *windowinternal;
	nsEmbedString aAsciiString;
    PREINIT:
	nsEmbedString _retval;
    CODE:
	windowinternal->Atob(aAsciiString, _retval);
	RETVAL = _retval;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::WindowInternal::Btoa

=for signature $retval = $windowinternal->Btoa($base64data)



=cut

## Btoa(const nsAString & aBase64Data, nsAString & _retval)
nsEmbedString
moz_dom_Btoa (windowinternal, aBase64Data)
	nsIDOMWindowInternal *windowinternal;
	nsEmbedString aBase64Data;
    PREINIT:
	nsEmbedString _retval;
    CODE:
	windowinternal->Btoa(aBase64Data, _retval);
	RETVAL = _retval;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::WindowInternal::GetFrameElement

=for signature $frameelement = $windowinternal->GetFrameElement()



=cut

## GetFrameElement(nsIDOMElement * *aFrameElement)
nsIDOMElement *
moz_dom_GetFrameElement (windowinternal)
	nsIDOMWindowInternal *windowinternal;
    PREINIT:
	nsIDOMElement * aFrameElement;
    CODE:
	windowinternal->GetFrameElement(&aFrameElement);
	RETVAL = aFrameElement;
    OUTPUT:
	RETVAL

# -----------------------------------------------------------------------------

MODULE = Mozilla::DOM	PACKAGE = Mozilla::DOM::WindowCollection	PREFIX = moz_dom_

# /usr/include/mozilla/nsIDOMWindowCollection.h

=for object Mozilla::DOM::WindowCollection

Mozilla::DOM::WindowCollection is a wrapper around an instance of Mozilla's
nsIDOMWindowCollection interface. This class inherits from
L<Supports|Mozilla::DOM::Supports>.

 * The nsIDOMWindowCollection interface is an interface for a
 * collection of DOM window objects.

=cut

=head1 CLASS METHODS

=head2 $iid = Mozilla::DOM::WindowCollection->B<GetIID>()

Pass this to QueryInterface.

=cut

## NS_DEFINE_STATIC_IID_ACCESSOR(NS_IDOMWINDOWCOLLECTION_IID)
static nsIID
nsIDOMWindowCollection::GetIID()
    CODE:
	const nsIID &id = nsIDOMWindowCollection::GetIID();
	RETVAL = (nsIID) id;
    OUTPUT:
	RETVAL

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

MODULE = Mozilla::DOM	PACKAGE = Mozilla::DOM::Node	PREFIX = moz_dom_

# /usr/include/mozilla/nsIDOMNode.h

=for object Mozilla::DOM::Node

Mozilla::DOM::Node is a wrapper around an instance of Mozilla's
nsIDOMNode interface. This class inherits from
L<Supports|Mozilla::DOM::Supports>.

 * The nsIDOMNode interface is the primary datatype for the entire 
 * Document Object Model.
 * It represents a single node in the document tree.
 *
 * For more information on this interface please see 
 * L<http:E<sol>E<sol>www.w3.orgE<sol>TRE<sol>DOM-Level-2-CoreE<sol>>

The following constants are available to be compared with L</GetNodeType>.
XXX: This is currently buggy, because you have to call them as methods on the
node object.
DEPRECATED: a little premature to deprecate, not having an alternative
(aside from using the numbers directly), but I really don't like how
they're currently implemented.

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

=head1 CLASS METHODS

=head2 $iid = Mozilla::DOM::Node->B<GetIID>()

Pass this to QueryInterface.

=cut

## NS_DEFINE_STATIC_IID_ACCESSOR(NS_IDOMNODE_IID)
static nsIID
nsIDOMNode::GetIID()
    CODE:
	const nsIID &id = nsIDOMNode::GetIID();
	RETVAL = (nsIID) id;
    OUTPUT:
	RETVAL

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

XXX: I'm thinking that methods like this should also return
a list in list context. It's kinda gimpy having to call GetLength
and loop over index numbers calling Item.
Also, why does everything return NamedNodeMap or NodeList?
I'd rather get a list of Attr.

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

DOM 2 spec:
When a Node is copied using the cloneNode method the EventListeners
attached to the source Node are not attached to the copied Node. If
the user wishes the same EventListeners to be added to the newly
created copy the user must add them manually.

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

# /usr/include/mozilla/nsIDOMNodeList.h

=for object Mozilla::DOM::NodeList

Mozilla::DOM::NodeList is a wrapper around an instance of Mozilla's
nsIDOMNodeList interface. This class inherits from
L<Supports|Mozilla::DOM::Supports>.

 * The nsIDOMNodeList interface provides the abstraction of an ordered 
 * collection of nodes, without defining or constraining how this collection 
 * is implemented.
 * The items in the list are accessible via an integral index, starting from 0.
 *
 * For more information on this interface please see 
 * L<http:E<sol>E<sol>www.w3.orgE<sol>TRE<sol>DOM-Level-2-CoreE<sol>>

=cut

=head1 CLASS METHODS

=head2 $iid = Mozilla::DOM::NodeList->B<GetIID>()

Pass this to QueryInterface.

=cut

## NS_DEFINE_STATIC_IID_ACCESSOR(NS_IDOMNODELIST_IID)
static nsIID
nsIDOMNodeList::GetIID()
    CODE:
	const nsIID &id = nsIDOMNodeList::GetIID();
	RETVAL = (nsIID) id;
    OUTPUT:
	RETVAL

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

# -----------------------------------------------------------------------------

MODULE = Mozilla::DOM	PACKAGE = Mozilla::DOM::NamedNodeMap	PREFIX = moz_dom_

# /usr/include/mozilla/nsIDOMNamedNodeMap.h

=for object Mozilla::DOM::NamedNodeMap

Mozilla::DOM::NamedNodeMap is a wrapper around an instance of Mozilla's
nsIDOMNamedNodeMap interface. This class inherits from
L<Supports|Mozilla::DOM::Supports>.

 * Objects implementing the nsIDOMNamedNodeMap interface are used to 
 * represent collections of nodes that can be accessed by name.
 *
 * For more information on this interface please see 
 * http://www.w3.org/TR/DOM-Level-2-Core/

=cut

=head1 CLASS METHODS

=head2 $iid = Mozilla::DOM::NamedNodeMap->B<GetIID>()

Pass this to QueryInterface.

=cut

## NS_DEFINE_STATIC_IID_ACCESSOR(NS_IDOMNAMEDNODEMAP_IID)
static nsIID
nsIDOMNamedNodeMap::GetIID()
    CODE:
	const nsIID &id = nsIDOMNamedNodeMap::GetIID();
	RETVAL = (nsIID) id;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::NamedNodeMap::GetNamedItem

=signature $node = $namednodemap->GetNamedItem($name)



=cut

## GetNamedItem(const nsAString & name, nsIDOMNode **_retval)
nsIDOMNode *
moz_dom_GetNamedItem (namednodemap, name)
	nsIDOMNamedNodeMap *namednodemap;
	nsEmbedString name;
    PREINIT:
	nsIDOMNode *node;
    CODE:
	namednodemap->GetNamedItem(name, &node);
	RETVAL = node;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::NamedNodeMap::SetNamedItem

=signature $node = $namednodemap->SetNamedItem($node)

what is named about this?

=cut

## SetNamedItem(nsIDOMNode *arg, nsIDOMNode **_retval)
nsIDOMNode *
moz_dom_SetNamedItem (namednodemap, arg)
	nsIDOMNamedNodeMap *namednodemap;
	nsIDOMNode *arg;
    PREINIT:
	nsIDOMNode *node;
    CODE:
	/* raises (DOMException) */
	namednodemap->SetNamedItem(arg, &node);
	RETVAL = node;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::NamedNodeMap::RemoveNamedItem

=signature $node = $namednodemap->RemoveNamedItem($name)



=cut

## RemoveNamedItem(const nsAString & name, nsIDOMNode **_retval)
nsIDOMNode *
moz_dom_RemoveNamedItem (namednodemap, name)
	nsIDOMNamedNodeMap *namednodemap;
	nsEmbedString name;
    PREINIT:
	nsIDOMNode *node;
    CODE:
	/* raises (DOMException) */
	namednodemap->RemoveNamedItem(name, &node);
	RETVAL = node;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::NamedNodeMap::Item

=signature $node = $namednodemap->Item(PRUint32 index)



=cut

## Item(PRUint32 index, nsIDOMNode **_retval)
nsIDOMNode *
moz_dom_Item (namednodemap, index)
	nsIDOMNamedNodeMap *namednodemap;
	PRUint32 index;
    PREINIT:
	nsIDOMNode *node;
    CODE:
	namednodemap->Item(index, &node);
	RETVAL = node;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::NamedNodeMap::GetLength

=signature $len = $namednodemap->GetLength()



=cut

## GetLength(PRUint32 *aLength)
PRUint32
moz_dom_GetLength (namednodemap)
	nsIDOMNamedNodeMap *namednodemap;
    PREINIT:
	PRUint32 len;
    CODE:
	namednodemap->GetLength(&len);
	RETVAL = len;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::NamedNodeMap::GetNamedItemNS

=signature $node = $namednodemap->GetNamedItemNS($namespaceURI, $localName)



=cut

## GetNamedItemNS(const nsAString & namespaceURI, const nsAString & localName, nsIDOMNode **_retval)
nsIDOMNode *
moz_dom_GetNamedItemNS (namednodemap, namespaceURI, localName)
	nsIDOMNamedNodeMap *namednodemap;
	nsEmbedString namespaceURI;
	nsEmbedString localName;
    PREINIT:
	nsIDOMNode *node;
    CODE:
	namednodemap->GetNamedItemNS(namespaceURI, localName, &node);
	RETVAL = node;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::NamedNodeMap::SetNamedItemNS

=signature $node = $namednodemap->SetNamedItemNS($node)



=cut

## SetNamedItemNS(nsIDOMNode *arg, nsIDOMNode **_retval)
nsIDOMNode *
moz_dom_SetNamedItemNS (namednodemap, arg)
	nsIDOMNamedNodeMap *namednodemap;
	nsIDOMNode *arg;
    PREINIT:
	nsIDOMNode *node;
    CODE:
	/* raises (DOMException) */
	namednodemap->SetNamedItemNS(arg, &node);
	RETVAL = node;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::NamedNodeMap::RemoveNamedItemNS

=signature $node = $namednodemap->RemoveNamedItemNS($namespaceURI, $localName)



=cut

## RemoveNamedItemNS(const nsAString & namespaceURI, const nsAString & localName, nsIDOMNode **_retval)
nsIDOMNode *
moz_dom_RemoveNamedItemNS (namednodemap, namespaceURI, localName)
	nsIDOMNamedNodeMap *namednodemap;
	nsEmbedString namespaceURI;
	nsEmbedString localName;
    PREINIT:
	nsIDOMNode *node;
    CODE:
	/* raises (DOMException) */
	namednodemap->RemoveNamedItemNS(namespaceURI, localName, &node);
	RETVAL = node;
    OUTPUT:
	RETVAL

# -----------------------------------------------------------------------------

MODULE = Mozilla::DOM	PACKAGE = Mozilla::DOM::Document	PREFIX = moz_dom_

# /usr/include/mozilla/nsIDOMDocument.h

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

=head1 CLASS METHODS

=head2 $iid = Mozilla::DOM::Document->B<GetIID>()

Pass this to QueryInterface.

=cut

## NS_DEFINE_STATIC_IID_ACCESSOR(NS_IDOMDOCUMENT_IID)
static nsIID
nsIDOMDocument::GetIID()
    CODE:
	const nsIID &id = nsIDOMDocument::GetIID();
	RETVAL = (nsIID) id;
    OUTPUT:
	RETVAL

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

Gah, this returns a NodeList, not a list of Elements.
Which is lame because you can't call Element methods on Nodes...
(Maybe in list context, a list of elements could be returned instead?)

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

MODULE = Mozilla::DOM	PACKAGE = Mozilla::DOM::Element	PREFIX = moz_dom_

# /usr/include/mozilla/nsIDOMElement.h

=for object Mozilla::DOM::Element

Mozilla::DOM::Element is a wrapper around an instance of Mozilla's
nsIDOMElement interface. This inherits from
L<Mozilla::DOM::Node|Mozilla::DOM::Node>.

 * The nsIDOMElement interface represents an element in an HTML or 
 * XML document. 
 *
 * For more information on this interface please see 
 * L<http:E<sol>E<sol>www.w3.orgE<sol>TRE<sol>DOM-Level-2-CoreE<sol>>

Note: you can QueryInterface an Element object to a subclass like
L<HTMLSelectElement|Mozilla::DOM::HTMLSelectElement> (from which
of course you can call Element methods).

=cut

=head1 CLASS METHODS

=head2 $iid = Mozilla::DOM::Element->B<GetIID>()

Pass this to QueryInterface.

=cut

## NS_DEFINE_STATIC_IID_ACCESSOR(NS_IDOMELEMENT_IID)
static nsIID
nsIDOMElement::GetIID()
    CODE:
	const nsIID &id = nsIDOMElement::GetIID();
	RETVAL = (nsIID) id;
    OUTPUT:
	RETVAL

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

=for signature $attrnode = $element->SetAttributeNode($newAttr)



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

# /usr/include/mozilla/nsIDOMEntityReference.h

=for object Mozilla::DOM::EntityReference

Mozilla::DOM::EntityReference is a wrapper around an instance of Mozilla's
nsIDOMEntityReference interface. This inherits from
L<Mozilla::DOM::Node|Mozilla::DOM::Node>.

=cut

=head1 CLASS METHODS

=head2 $iid = Mozilla::DOM::EntityReference->B<GetIID>()

Pass this to QueryInterface.

=cut

## NS_DEFINE_STATIC_IID_ACCESSOR(NS_IDOMENTITYREFERENCE_IID)
static nsIID
nsIDOMEntityReference::GetIID()
    CODE:
	const nsIID &id = nsIDOMEntityReference::GetIID();
	RETVAL = (nsIID) id;
    OUTPUT:
	RETVAL

# -----------------------------------------------------------------------------

MODULE = Mozilla::DOM	PACKAGE = Mozilla::DOM::Attr	PREFIX = moz_dom_

# /usr/include/mozilla/nsIDOMAttr.h

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

=head1 CLASS METHODS

=head2 $iid = Mozilla::DOM::Attr->B<GetIID>()

Pass this to QueryInterface.

=cut

## NS_DEFINE_STATIC_IID_ACCESSOR(NS_IDOMATTR_IID)
static nsIID
nsIDOMAttr::GetIID()
    CODE:
	const nsIID &id = nsIDOMAttr::GetIID();
	RETVAL = (nsIID) id;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::Attr::GetName

=for signature $name = $attr->GetName()



=cut

## GetName(nsAString & aName)
nsEmbedString
moz_dom_GetName (attr)
	nsIDOMAttr *attr;
    PREINIT:
	nsEmbedString name;
    CODE:
	attr->GetName(name);
	RETVAL = name;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::Attr::GetSpecified

=for signature $bool = $attr->GetSpecified()



=cut

## GetSpecified(PRBool *aSpecified)
PRBool
moz_dom_GetSpecified (attr)
	nsIDOMAttr *attr;
    PREINIT:
	PRBool spec;
    CODE:
	attr->GetSpecified(&spec);
	RETVAL = spec;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::Attr::GetValue

=for signature $value = $attr->GetValue()



=cut

## GetValue(nsAString & aValue)
nsEmbedString
moz_dom_GetValue (attr)
	nsIDOMAttr *attr;
    PREINIT:
	nsEmbedString value;
    CODE:
	attr->GetValue(value);
	RETVAL = value;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::Attr::SetValue

=for signature $attr->SetValue($value)



=cut

## SetValue(const nsAString & aValue)
void
moz_dom_SetValue (attr, value)
	nsIDOMAttr *attr;
	nsEmbedString value;
    CODE:
	attr->SetValue(value);

=for apidoc Mozilla::DOM::Attr::GetOwnerElement

=for signature $element = $attr->GetOwnerElement()



=cut

## GetOwnerElement(nsIDOMElement * *aOwnerElement)
nsIDOMElement *
moz_dom_GetOwnerElement (attr)
	nsIDOMAttr *attr;
    PREINIT:
	nsIDOMElement *element;
    CODE:
	attr->GetOwnerElement(&element);
	RETVAL = element;
    OUTPUT:
	RETVAL

# -----------------------------------------------------------------------------

MODULE = Mozilla::DOM	PACKAGE = Mozilla::DOM::ProcessingInstruction	PREFIX = moz_dom_

# /usr/include/mozilla/nsIDOMProcessingInstruction.h

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

=head1 CLASS METHODS

=head2 $iid = Mozilla::DOM::ProcessingInstruction->B<GetIID>()

Pass this to QueryInterface.

=cut

## NS_DEFINE_STATIC_IID_ACCESSOR(NS_IDOMPROCESSINGINSTRUCTION_IID)
static nsIID
nsIDOMProcessingInstruction::GetIID()
    CODE:
	const nsIID &id = nsIDOMProcessingInstruction::GetIID();
	RETVAL = (nsIID) id;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::ProcessingInstruction::GetTarget

=for signature $str = $processinginstruction->GetTarget()



=cut

=for apidoc Mozilla::DOM::ProcessingInstruction::GetData

=for signature $data = $processinginstruction->GetData()



=cut

## GetTarget(nsAString & aTarget), etc..
nsEmbedString
moz_dom_GetTarget (pi)
	nsIDOMProcessingInstruction *pi;
    ALIAS:
	Mozilla::DOM::ProcessingInstruction::GetData = 1
    PREINIT:
	nsEmbedString str;
    CODE:
	switch (ix) {
		case 0: pi->GetTarget(str); break;
		case 1: pi->GetData(str); break;
		default: XSRETURN_UNDEF;
	}
	RETVAL = str;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::ProcessingInstruction::SetData

=for signature $processinginstruction->SetData($data)



=cut

## SetData(const nsAString & aData)
void
moz_dom_SetData (pi, data)
	nsIDOMProcessingInstruction *pi;
	nsEmbedString data;
    CODE:
	pi->SetData(data);

# -----------------------------------------------------------------------------

MODULE = Mozilla::DOM	PACKAGE = Mozilla::DOM::CDATASection	PREFIX = moz_dom_

# /usr/include/mozilla/nsIDOMCDATASection.h

=for object Mozilla::DOM::CDATASection

Mozilla::DOM::CDATASection is a wrapper around an instance of Mozilla's
nsIDOMCDATASection interface. This inherits from
L<Mozilla::DOM::Text|Mozilla::DOM::Text>.

=cut

=head1 CLASS METHODS

=head2 $iid = Mozilla::DOM::CDATASection->B<GetIID>()

Pass this to QueryInterface.

=cut

## NS_DEFINE_STATIC_IID_ACCESSOR(NS_IDOMCDATASECTION_IID)
static nsIID
nsIDOMCDATASection::GetIID()
    CODE:
	const nsIID &id = nsIDOMCDATASection::GetIID();
	RETVAL = (nsIID) id;
    OUTPUT:
	RETVAL

# -----------------------------------------------------------------------------

MODULE = Mozilla::DOM	PACKAGE = Mozilla::DOM::Comment	PREFIX = moz_dom_

# /usr/include/mozilla/nsIDOMComment.h

=for object Mozilla::DOM::Comment

Mozilla::DOM::Comment is a wrapper around an instance of Mozilla's
nsIDOMComment interface. This inherits from
L<Mozilla::DOM::CharacterData|Mozilla::DOM::CharacterData>.

=cut

=head1 CLASS METHODS

=head2 $iid = Mozilla::DOM::Comment->B<GetIID>()

Pass this to QueryInterface.

=cut

## NS_DEFINE_STATIC_IID_ACCESSOR(NS_IDOMCOMMENT_IID)
static nsIID
nsIDOMComment::GetIID()
    CODE:
	const nsIID &id = nsIDOMComment::GetIID();
	RETVAL = (nsIID) id;
    OUTPUT:
	RETVAL

# -----------------------------------------------------------------------------

MODULE = Mozilla::DOM	PACKAGE = Mozilla::DOM::CharacterData	PREFIX = moz_dom_

# /usr/include/mozilla/nsIDOMCharacterData.h

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

=head1 CLASS METHODS

=head2 $iid = Mozilla::DOM::CharacterData->B<GetIID>()

Pass this to QueryInterface.

=cut

## NS_DEFINE_STATIC_IID_ACCESSOR(NS_IDOMCHARACTERDATA_IID)
static nsIID
nsIDOMCharacterData::GetIID()
    CODE:
	const nsIID &id = nsIDOMCharacterData::GetIID();
	RETVAL = (nsIID) id;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::CharacterData::GetData

=for signature $data = $characterdata->GetData()



=cut

## GetData(nsAString & aData)
nsEmbedString
moz_dom_GetData (characterdata)
	nsIDOMCharacterData *characterdata;
    PREINIT:
	nsEmbedString data;
    CODE:
	characterdata->GetData(data);
	RETVAL = data;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::CharacterData::SetData

=for signature $characterdata->SetData($data)



=cut

## SetData(const nsAString & aData)
void
moz_dom_SetData (characterdata, data)
	nsIDOMCharacterData *characterdata;
	nsEmbedString data;
    CODE:
	characterdata->SetData(data);

=for apidoc Mozilla::DOM::CharacterData::GetLength

=for signature $len = $characterdata->GetLength()



=cut

## GetLength(PRUint32 *aLength)
PRUint32
moz_dom_GetLength (characterdata)
	nsIDOMCharacterData *characterdata;
    PREINIT:
	PRUint32 len;
    CODE:
	characterdata->GetLength(&len);
	RETVAL = len;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::CharacterData::SubstringData

=for signature $characterdata->SubstringData($offset, $count)



=cut

## SubstringData(PRUint32 offset, PRUint32 count, nsAString & _retval)
nsEmbedString
moz_dom_SubstringData (characterdata, offset, count)
	nsIDOMCharacterData *characterdata;
	PRUint32 offset;
	PRUint32 count;
    PREINIT:
	nsEmbedString data;
    CODE:
	/* raises (DOMException) */
	characterdata->SubstringData(offset, count, data);
	RETVAL = data;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::CharacterData::AppendData

=for signature $characterdata->AppendData($data)



=cut

## AppendData(const nsAString & arg)
void
moz_dom_AppendData (characterdata, data)
	nsIDOMCharacterData *characterdata;
	nsEmbedString data;
    CODE:
	/* raises (DOMException) */
	characterdata->AppendData(data);

=for apidoc Mozilla::DOM::CharacterData::InsertData

=for signature $characterdata->InsertData($offset, $data)



=cut

## InsertData(PRUint32 offset, const nsAString & arg)
void
moz_dom_InsertData (characterdata, offset, data)
	nsIDOMCharacterData *characterdata;
	PRUint32 offset;
	nsEmbedString data;
    CODE:
	/* raises (DOMException) */
	characterdata->InsertData(offset, data);

=for apidoc Mozilla::DOM::CharacterData::DeleteData

=for signature $characterdata->DeleteData($offset, $count)



=cut

## DeleteData(PRUint32 offset, PRUint32 count)
void
moz_dom_DeleteData (characterdata, offset, count)
	nsIDOMCharacterData *characterdata;
	PRUint32 offset;
	PRUint32 count;
    CODE:
	/* raises (DOMException) */
	characterdata->DeleteData(offset, count);

=for apidoc Mozilla::DOM::CharacterData::ReplaceData

=for signature $characterdata->ReplaceData($offset, $count, data)



=cut

## ReplaceData(PRUint32 offset, PRUint32 count, const nsAString & arg)
void
moz_dom_ReplaceData (characterdata, offset, count, data)
	nsIDOMCharacterData *characterdata;
	PRUint32 offset;
	PRUint32 count;
	nsEmbedString data;
    CODE:
	/* raises (DOMException) */
	characterdata->ReplaceData(offset, count, data);

# -----------------------------------------------------------------------------

MODULE = Mozilla::DOM	PACKAGE = Mozilla::DOM::Text	PREFIX = moz_dom_

# /usr/include/mozilla/nsIDOMText.h

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

=head1 CLASS METHODS

=head2 $iid = Mozilla::DOM::Text->B<GetIID>()

Pass this to QueryInterface.

=cut

## NS_DEFINE_STATIC_IID_ACCESSOR(NS_IDOMTEXT_IID)
static nsIID
nsIDOMText::GetIID()
    CODE:
	const nsIID &id = nsIDOMText::GetIID();
	RETVAL = (nsIID) id;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::Text::SplitText

=for signature $str = $text->SplitText($offset)



=cut

## SplitText(PRUint32 offset, nsIDOMText **_retval)
nsIDOMText *
moz_dom_SplitText (text, offset)
	nsIDOMText *text;
	PRUint32 offset;
    PREINIT:
	nsIDOMText *splittext;
    CODE:
	/* raises (DOMException) */
	text->SplitText(offset, &splittext);
	RETVAL = splittext;
    OUTPUT:
	RETVAL

=end comment

=cut

# -----------------------------------------------------------------------------

MODULE = Mozilla::DOM	PACKAGE = Mozilla::DOM::DocumentFragment	PREFIX = moz_dom_

# /usr/include/mozilla/nsIDOMDocumentFragment.h

=for object Mozilla::DOM::DocumentFragment

Mozilla::DOM::DocumentFragment is a wrapper around an instance of Mozilla's
nsIDOMDocumentFragment interface. This inherits from
L<Mozilla::DOM::Node|Mozilla::DOM::Node>.

=cut

=head1 CLASS METHODS

=head2 $iid = Mozilla::DOM::DocumentFragment->B<GetIID>()

Pass this to QueryInterface.

=cut

## NS_DEFINE_STATIC_IID_ACCESSOR(NS_IDOMDOCUMENTFRAGMENT_IID)
static nsIID
nsIDOMDocumentFragment::GetIID()
    CODE:
	const nsIID &id = nsIDOMDocumentFragment::GetIID();
	RETVAL = (nsIID) id;
    OUTPUT:
	RETVAL

# -----------------------------------------------------------------------------

MODULE = Mozilla::DOM	PACKAGE = Mozilla::DOM::DocumentType	PREFIX = moz_dom_

# /usr/include/mozilla/nsIDOMDocumentType.h

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

=head1 CLASS METHODS

=head2 $iid = Mozilla::DOM::DocumentType->B<GetIID>()

Pass this to QueryInterface.

=cut

## NS_DEFINE_STATIC_IID_ACCESSOR(NS_IDOMDOCUMENTTYPE_IID)
static nsIID
nsIDOMDocumentType::GetIID()
    CODE:
	const nsIID &id = nsIDOMDocumentType::GetIID();
	RETVAL = (nsIID) id;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::DocumentType::GetName

=for signature $name = $documenttype->GetName()



=cut

## GetName(nsAString & aName)
nsEmbedString
moz_dom_GetName (documenttype)
	nsIDOMDocumentType *documenttype;
    PREINIT:
	nsEmbedString name;
    CODE:
	documenttype->GetName(name);
	RETVAL = name;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::DocumentType::GetEntities

=for signature $namednodemap = $documenttype->GetEntities()



=cut

## GetEntities(nsIDOMNamedNodeMap * *aEntities)
nsIDOMNamedNodeMap *
moz_dom_GetEntities (documenttype)
	nsIDOMDocumentType *documenttype;
    PREINIT:
	nsIDOMNamedNodeMap *nodemap;
    CODE:
	documenttype->GetEntities(&nodemap);
	RETVAL = nodemap;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::DocumentType::GetNotations

=for signature $namednodemap = $documenttype->GetNotations()



=cut

## GetNotations(nsIDOMNamedNodeMap * *aNotations)
nsIDOMNamedNodeMap *
moz_dom_GetNotations (documenttype)
	nsIDOMDocumentType *documenttype;
    PREINIT:
	nsIDOMNamedNodeMap *nodemap;
    CODE:
	documenttype->GetNotations(&nodemap);
	RETVAL = nodemap;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::DocumentType::GetPublicId

=for signature $id = $documenttype->GetPublicId()



=cut

## GetPublicId(nsAString & aPublicId)
nsEmbedString
moz_dom_GetPublicId (documenttype)
	nsIDOMDocumentType *documenttype;
    PREINIT:
	nsEmbedString id;
    CODE:
	documenttype->GetPublicId(id);
	RETVAL = id;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::DocumentType::GetSystemId

=for signature $id = $documenttype->GetSystemId()



=cut

## GetSystemId(nsAString & aSystemId)
nsEmbedString
moz_dom_GetSystemId (documenttype)
	nsIDOMDocumentType *documenttype;
    PREINIT:
	nsEmbedString id;
    CODE:
	documenttype->GetSystemId(id);
	RETVAL = id;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::DocumentType::GetInternalSubset

=for signature $str = $documenttype->GetInternalSubset()



=cut

## GetInternalSubset(nsAString & aInternalSubset)
nsEmbedString
moz_dom_GetInternalSubset (documenttype)
	nsIDOMDocumentType *documenttype;
    PREINIT:
	nsEmbedString subset;
    CODE:
	documenttype->GetInternalSubset(subset);
	RETVAL = subset;
    OUTPUT:
	RETVAL

# -----------------------------------------------------------------------------

MODULE = Mozilla::DOM	PACKAGE = Mozilla::DOM::DOMImplementation	PREFIX = moz_dom_

# /usr/include/mozilla/nsIDOMDOMImplementation.h

=for object Mozilla::DOM::DOMImplementation

Mozilla::DOM::DOMImplementation is a wrapper around an instance of Mozilla's
nsIDOMDOMImplementation interface. This class inherits from
L<Supports|Mozilla::DOM::Supports>.

 * The nsIDOMDOMImplementation interface provides a number of methods for 
 * performing operations that are independent of any particular instance 
 * of the document object model.
 *
 * For more information on this interface please see 
 * L<http:E<sol>E<sol>www.w3.orgE<sol>TRE<sol>DOM-Level-2-CoreE<sol>>

=cut

=head1 CLASS METHODS

=head2 $iid = Mozilla::DOM::DOMImplementation->B<GetIID>()

Pass this to QueryInterface.

=cut

## NS_DEFINE_STATIC_IID_ACCESSOR(NS_IDOMDOMIMPLEMENTATION_IID)
static nsIID
nsIDOMDOMImplementation::GetIID()
    CODE:
	const nsIID &id = nsIDOMDOMImplementation::GetIID();
	RETVAL = (nsIID) id;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::DOMImplementation::HasFeature

=for signature $bool = $domimplementation->HasFeature($feature, $version)



=cut

## HasFeature(const nsAString & feature, const nsAString & version, PRBool *_retval)
PRBool
moz_dom_HasFeature (domimplementation, feature, version)
	nsIDOMDOMImplementation *domimplementation;
	nsEmbedString feature;
	nsEmbedString version;
    PREINIT:
	PRBool has;
    CODE:
	domimplementation->HasFeature(feature, version, &has);
	RETVAL = has;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::DOMImplementation::CreateDocumentType

=for signature $documenttype = $domimplementation->CreateDocumentType($qualifiedName, $publicId, $systemId)



=cut

## CreateDocumentType(const nsAString & qualifiedName, const nsAString & publicId, const nsAString & systemId, nsIDOMDocumentType **_retval)
nsIDOMDocumentType *
moz_dom_CreateDocumentType (domimplementation, qualifiedName, publicId, systemId)
	nsIDOMDOMImplementation *domimplementation;
	nsEmbedString qualifiedName;
	nsEmbedString publicId;
	nsEmbedString systemId;
    PREINIT:
	nsIDOMDocumentType *type;
    CODE:
	/* raises (DOMException) */
	domimplementation->CreateDocumentType(qualifiedName, publicId, systemId, &type);
	RETVAL = type;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::DOMImplementation::CreateDocument

=for signature $doc = $domimplementation->CreateDocument($namespaceURI, $qualifiedName, $doctype)



=cut

## CreateDocument(const nsAString & namespaceURI, const nsAString & qualifiedName, nsIDOMDocumentType *doctype, nsIDOMDocument **_retval)
nsIDOMDocument *
moz_dom_CreateDocument (domimplementation, namespaceURI, qualifiedName, doctype)
	nsIDOMDOMImplementation *domimplementation;
	nsEmbedString namespaceURI;
	nsEmbedString qualifiedName;
	nsIDOMDocumentType *doctype;
    PREINIT:
	nsIDOMDocument *doc;
    CODE:
	/* raises (DOMException) */
	domimplementation->CreateDocument(namespaceURI, qualifiedName, doctype, &doc);
	RETVAL = doc;
    OUTPUT:
	RETVAL

# -----------------------------------------------------------------------------

MODULE = Mozilla::DOM	PACKAGE = Mozilla::DOM::DOMException	PREFIX = moz_dom_

# /usr/include/mozilla/nsIDOMDOMException.h

=for object Mozilla::DOM::DOMException

Mozilla::DOM::DOMException is a wrapper around an instance of Mozilla's
nsIDOMDOMException interface. This class inherits from
L<Supports|Mozilla::DOM::Supports>.

 * In general, DOM methods return specific error values in ordinary 
 * processing situations, such as out-of-bound errors.
 * However, DOM operations can raise exceptions in "exceptional" 
 * circumstances, i.e., when an operation is impossible to perform 
 * (either for logical reasons, because data is lost, or because the 
 * implementation has become unstable)
 *
 * For more information on this interface please see 
 * http://www.w3.org/TR/DOM-Level-2-Core/

XXX: this isn't supported yet here, as I've ignored catching
any exceptions that are raised (though they are all noted
in comments). Will soon.

=cut

=begin comment

  If you want to throw an exception object, assign the object to $@ and then pass
  "Nullch" to croak():

    errsv = get_sv("@", TRUE);
    sv_setsv(errsv, exception_object);
    croak(Nullch);

  But how do I create a nsIDOMDOMException object? Is one thrown
  when an exception occurs? (I was under the impression that
  methods generally just return error codes.)

=end comment

=cut

=head1 CLASS METHODS

=head2 $iid = Mozilla::DOM::DOMException->B<GetIID>()

Pass this to QueryInterface.

=cut

## NS_DEFINE_STATIC_IID_ACCESSOR(NS_IDOMDOMEXCEPTION_IID)
static nsIID
nsIDOMDOMException::GetIID()
    CODE:
	const nsIID &id = nsIDOMDOMException::GetIID();
	RETVAL = (nsIID) id;
    OUTPUT:
	RETVAL

=begin comment

# found code:
nsresult rv;
rv=aTarget->GetValue(&Url);
if (NS_FAILED(rv)) return 2;
(also have NS_SUCCEEDED)

  enum { INDEX_SIZE_ERR = 1U };

  enum { DOMSTRING_SIZE_ERR = 2U };

  enum { HIERARCHY_REQUEST_ERR = 3U };

  enum { WRONG_DOCUMENT_ERR = 4U };

  enum { INVALID_CHARACTER_ERR = 5U };

  enum { NO_DATA_ALLOWED_ERR = 6U };

  enum { NO_MODIFICATION_ALLOWED_ERR = 7U };

  enum { NOT_FOUND_ERR = 8U };

  enum { NOT_SUPPORTED_ERR = 9U };

  enum { INUSE_ATTRIBUTE_ERR = 10U };

  enum { INVALID_STATE_ERR = 11U };

  enum { SYNTAX_ERR = 12U };

  enum { INVALID_MODIFICATION_ERR = 13U };

  enum { NAMESPACE_ERR = 14U };

  enum { INVALID_ACCESS_ERR = 15U };

  /* readonly attribute unsigned long code; */
#=for apidoc Mozilla::DOM::DOMException::GetCode
#
#=for signature $exception->GetCode(PRUint32 *aCode)
#
#
#
#=cut
#
### GetCode(PRUint32 *aCode)
#somereturn *
#moz_dom_GetCode (exception, aCode)
#	nsIDOMexception *exception;
#	PRUint32 *aCode ;
#    PREINIT:
#	
#    CODE:
#	exception->GetCode(&);
#	RETVAL = ;
#    OUTPUT:
#	RETVAL

=end comment

=cut


# -----------------------------------------------------------------------------


MODULE = Mozilla::DOM	PACKAGE = Mozilla::DOM::Selection	PREFIX = moz_dom_

# /usr/include/mozilla/nsISelection.h

=for object Mozilla::DOM::Selection

Mozilla::DOM::Selection is a wrapper around an instance of Mozilla's
nsISelection interface. This class inherits from
L<Supports|Mozilla::DOM::Supports>.

 * Interface for manipulating and querying the current selected range
 * of nodes within the document.

=cut

=head1 CLASS METHODS

=head2 $iid = Mozilla::DOM::Selection->B<GetIID>()

Pass this to QueryInterface.

=cut

## NS_DEFINE_STATIC_IID_ACCESSOR(NS_ISELECTION_IID)
static nsIID
nsISelection::GetIID()
    CODE:
	const nsIID &id = nsISelection::GetIID();
	RETVAL = (nsIID) id;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::Selection::GetAnchorNode

=for signature $node = $selection->GetAnchorNode()

     * The node representing one end of the selection.

=cut

## GetAnchorNode(nsIDOMNode * *aAnchorNode)
nsIDOMNode *
moz_dom_GetAnchorNode (selection)
	nsISelection *selection;
    PREINIT:
	nsIDOMNode *node;
    CODE:
	selection->GetAnchorNode(&node);
	RETVAL = node;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::Selection::GetAnchorOffset

=for signature $offset = $selection->GetAnchorOffset()

     * The offset within the (text) node where the selection begins.

=cut

## GetAnchorOffset(PRInt32 *aAnchorOffset)
PRInt32
moz_dom_GetAnchorOffset (selection)
	nsISelection *selection;
    PREINIT:
	PRInt32 offset;
    CODE:
	selection->GetAnchorOffset(&offset);
	RETVAL = offset;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::Selection::GetFocusNode

=for signature $node = $selection->GetFocusNode()

     * The node with keyboard focus.

=cut

## GetFocusNode(nsIDOMNode * *aFocusNode)
nsIDOMNode *
moz_dom_GetFocusNode (selection)
	nsISelection *selection;
    PREINIT:
	nsIDOMNode *node;
    CODE:
	selection->GetFocusNode(&node);
	RETVAL = node;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::Selection::GetFocusOffset

=for signature $offset = $selection->GetFocusOffset()

     * The offset within the (text) node where focus starts.

=cut

## GetFocusOffset(PRInt32 *aFocusOffset)
PRInt32
moz_dom_GetFocusOffset (selection)
	nsISelection *selection;
    PREINIT:
	PRInt32 offset;
    CODE:
	selection->GetFocusOffset(&offset);
	RETVAL = offset;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::Selection::GetIsCollapsed

=for signature $bool = $selection->GetIsCollapsed()

     * Indicates if the selection is collapsed or not.

=cut

## GetIsCollapsed(PRBool *aIsCollapsed)
PRBool
moz_dom_GetIsCollapsed (selection)
	nsISelection *selection;
    PREINIT:
	PRBool is;
    CODE:
	selection->GetIsCollapsed(&is);
	RETVAL = is;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::Selection::GetRangeCount

=for signature $count = $selection->GetRangeCount()

     * Returns the number of ranges in the selection.

=cut

## GetRangeCount(PRInt32 *aRangeCount)
PRInt32
moz_dom_GetRangeCount (selection)
	nsISelection *selection;
    PREINIT:
	PRInt32 count;
    CODE:
	selection->GetRangeCount(&count);
	RETVAL = count;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::Selection::GetRangeAt

=for signature $range = $selection->GetRangeAt($index)

     * Returns the range at the specified index.

=cut

## GetRangeAt(PRInt32 index, nsIDOMRange **_retval)
nsIDOMRange *
moz_dom_GetRangeAt (selection, index)
	nsISelection *selection;
	PRInt32 index;
    PREINIT:
	nsIDOMRange *range;
    CODE:
	selection->GetRangeAt(index, &range);
	RETVAL = range;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::Selection::Collapse

=for signature $selection->Collapse($parentNode, $offset)

     * Collapses the selection to a single point, at the specified offset
     * in the given DOM node. When the selection is collapsed, and the content
     * is focused and editable, the caret will blink there.
     *
     * @param parentNode      The given dom node where the selection will be set
     * @param offset          Where in given dom node to place the selection
                              (the offset into the given node)

=cut

## Collapse(nsIDOMNode *parentNode, PRInt32 offset)
void
moz_dom_Collapse (selection, parentNode, offset)
	nsISelection *selection;
	nsIDOMNode *parentNode;
	PRInt32 offset;
    CODE:
	selection->Collapse(parentNode, offset);

=for apidoc Mozilla::DOM::Selection::Extend

=for signature $selection->Extend($parentNode, $offset)

     * Extends the selection by moving the focus to the specified node and offset,
     * preserving the anchor postion.  The new selection end result will always
     * be from the anchor to the new focus, regardless of direction.
     *
     * @param parentNode      The node where the selection will be extended to
     * @param offset          Where in node to place the offset in the new focused node

=cut

# Extend(nsIDOMNode *parentNode, PRInt32 offset)
void
moz_dom_Extend (selection, parentNode, offset)
	nsISelection *selection;
	nsIDOMNode *parentNode;
	PRInt32 offset;
    CODE:
	selection->Extend(parentNode, offset);

=for apidoc Mozilla::DOM::Selection::CollapseToStart

=for signature $selection->CollapseToStart()

     * Collapses the whole selection to a single point at the start
     * of the current selection (irrespective of direction).  If content
     * is focused and editable, the caret will blink there.

=cut

## CollapseToStart(void)
void
moz_dom_CollapseToStart (selection)
	nsISelection *selection;
    CODE:
	selection->CollapseToStart();

=for apidoc Mozilla::DOM::Selection::CollapseToEnd

=for signature $selection->CollapseToEnd()

     * Collapses the whole selection to a single point at the end
     * of the current selection (irrespective of direction).  If content
     * is focused and editable, the caret will blink there.

=cut

## CollapseToEnd(void)
void
moz_dom_CollapseToEnd (selection)
	nsISelection *selection;
    CODE:
	selection->CollapseToEnd();

=for apidoc Mozilla::DOM::Selection::ContainsNode

=for signature $bool = $selection->ContainsNode($node, $entirelyContained)

     * The value of entirelyContained determines the detail of the search to determine if
     * the selection contains the node.  If entirelyContained is set to PR_TRUE, t
     * or false if
     *
     * @param node      The node where the selection will be extended to
     * @param entirelyContained Whether

=cut

## ContainsNode(nsIDOMNode *node, PRBool entirelyContained, PRBool *_retval)
PRBool
moz_dom_ContainsNode (selection, node, entirelyContained)
	nsISelection *selection;
	nsIDOMNode *node;
	PRBool entirelyContained;
    PREINIT:
	PRBool has;
    CODE:
	selection->ContainsNode(node, entirelyContained, &has);
	RETVAL = has;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::Selection::SelectAllChildren

=for signature $selection->SelectAllChildren($parentnode)

     * Adds all children of the specified node to the selection.
     *
     * @param parentNode  the parent of the children to be added to the selection.

=cut

## SelectAllChildren(nsIDOMNode *parentNode)
void
moz_dom_SelectAllChildren (selection, parentNode)
	nsISelection *selection;
	nsIDOMNode *parentNode;
    CODE:
	selection->SelectAllChildren(parentNode);

=for apidoc Mozilla::DOM::Selection::AddRange

=for signature $selection->AddRange($range)

     * Adds a range to the current selection.

=cut

## AddRange(nsIDOMRange *range)
void
moz_dom_AddRange (selection, range)
	nsISelection *selection;
	nsIDOMRange *range;
    CODE:
	selection->AddRange(range);

=for apidoc Mozilla::DOM::Selection::RemoveRange

=for signature $selection->RemoveRange($range)

     * Removes a range from the current selection.

=cut

## RemoveRange(nsIDOMRange *range)
void
moz_dom_RemoveRange (selection, range)
	nsISelection *selection;
	nsIDOMRange *range;
    CODE:
	selection->RemoveRange(range);

=for apidoc Mozilla::DOM::Selection::RemoveAllRanges

=for signature $selection->RemoveAllRanges()

     * Removes all ranges from the current selection.

=cut

## RemoveAllRanges(void)
void
moz_dom_RemoveAllRanges (selection)
	nsISelection *selection;
    CODE:
	selection->RemoveAllRanges();

=for apidoc Mozilla::DOM::Selection::DeleteFromDocument

=for signature $selection->DeleteFromDocument()

     * Deletes this selection from document the nodes belong to.

=cut

## DeleteFromDocument(void)
void
moz_dom_DeleteFromDocument (selection)
	nsISelection *selection;
    CODE:
	selection->DeleteFromDocument();

=for apidoc Mozilla::DOM::Selection::SelectionLanguageChange

=for signature $selection->SelectionLanguageChange($langRTL)

     * Modifies the cursor Bidi level after a change in keyboard direction
     *
     * @param langRTL is PR_TRUE if the new language is right-to-left or
     *                PR_FALSE if the new language is left-to-right.

=cut

## SelectionLanguageChange(PRBool langRTL)
void
moz_dom_SelectionLanguageChange (selection, langRTL)
	nsISelection *selection;
	PRBool langRTL;
    CODE:
	selection->SelectionLanguageChange(langRTL);

=for apidoc Mozilla::DOM::Selection::ToString

=for signature $str = $selection->ToString()

     * Returns the whole selection into a plain text string.

=cut

## ToString(PRUnichar **_retval)
nsEmbedString
moz_dom_ToString (selection)
	nsISelection *selection;
    PREINIT:
	PRUnichar *u16str;
    CODE:
	selection->ToString(&u16str);
	nsEmbedString str(u16str);
	RETVAL = str;
    OUTPUT:
	RETVAL


# -----------------------------------------------------------------------------


MODULE = Mozilla::DOM	PACKAGE = Mozilla::DOM::Range	PREFIX = moz_dom_

# /usr/include/mozilla/nsIDOMRange.h

=for object Mozilla::DOM::Range

Mozilla::DOM::Range is a wrapper around an instance of Mozilla's
nsIDOMRange interface. This class inherits from
L<Supports|Mozilla::DOM::Supports>.

 * The nsIDOMRange interface is an interface to a DOM range object.
 *
 * For more information on this interface please see
 * http://www.w3.org/TR/DOM-Level-2-Traversal-Range/

The constants START_TO_START, START_TO_END, END_TO_END, and END_TO_START
are available for the "how" argument to L</CompareBoundaryPoints>.
XXX: Currently these are accessed through methods on the object; this will
change when I figure out how to export them as constants or class methods.
DEPRECATED: a little premature to deprecate, not having an alternative
(aside from using the numbers directly), but I really don't like how
they're currently implemented.

=cut

=head1 CLASS METHODS

=head2 $iid = Mozilla::DOM::Range->B<GetIID>()

Pass this to QueryInterface.

=cut

## NS_DEFINE_STATIC_IID_ACCESSOR(NS_IDOMRANGE_IID)
static nsIID
nsIDOMRange::GetIID()
    CODE:
	const nsIID &id = nsIDOMRange::GetIID();
	RETVAL = (nsIID) id;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::Range::GetStartContainer

=for signature $node = $range->GetStartContainer()



=cut

## GetStartContainer(nsIDOMNode * *aStartContainer)
nsIDOMNode *
moz_dom_GetStartContainer (range)
	nsIDOMRange *range;
    PREINIT:
	nsIDOMNode *node;
    CODE:
	range->GetStartContainer(&node);
	RETVAL = node;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::Range::GetStartOffset

=for signature $offset = $range->GetStartOffset()



=cut

## GetStartOffset(PRInt32 *aStartOffset)
PRInt32
moz_dom_GetStartOffset (range)
	nsIDOMRange *range;
    PREINIT:
	PRInt32 offset;
    CODE:
	range->GetStartOffset(&offset);
	RETVAL = offset;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::Range::GetEndContainer

=for signature $node = $range->GetEndContainer()



=cut

## GetEndContainer(nsIDOMNode * *aEndContainer)
nsIDOMNode *
moz_dom_GetEndContainer (range)
	nsIDOMRange *range;
    PREINIT:
	nsIDOMNode *node;
    CODE:
	range->GetEndContainer(&node);
	RETVAL = node;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::Range::GetEndOffset

=for signature $offset = $range->GetEndOffset()



=cut

## GetEndOffset(PRInt32 *aEndOffset)
PRInt32
moz_dom_GetEndOffset (range)
	nsIDOMRange *range;
    PREINIT:
	PRInt32 offset;
    CODE:
	range->GetEndOffset(&offset);
	RETVAL = offset;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::Range::GetCollapsed

=for signature $bool = $range->GetCollapsed()



=cut

## GetCollapsed(PRBool *aCollapsed)
PRBool
moz_dom_GetCollapsed (range)
	nsIDOMRange *range;
    PREINIT:
	PRBool collapsed;
    CODE:
	range->GetCollapsed(&collapsed);
	RETVAL = collapsed;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::Range::GetCommonAncestorContainer

=for signature $node = $range->GetCommonAncestorContainer()



=cut

## GetCommonAncestorContainer(nsIDOMNode * *aCommonAncestorContainer)
nsIDOMNode *
moz_dom_GetCommonAncestorContainer (range)
	nsIDOMRange *range;
    PREINIT:
	nsIDOMNode *node;
    CODE:
	range->GetCommonAncestorContainer(&node);
	RETVAL = node;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::Range::SetStart

=for signature $range->SetStart($node, $offset)



=cut

## SetStart(nsIDOMNode *refNode, PRInt32 offset)
void
moz_dom_SetStart (range, refNode, offset)
	nsIDOMRange *range;
	nsIDOMNode *refNode;
	PRInt32 offset;
    CODE:
	/* raises (RangeException, DOMException) */
	range->SetStart(refNode, offset);

=for apidoc Mozilla::DOM::Range::SetEnd

=for signature $range->SetEnd($node, $offset)



=cut

## SetEnd(nsIDOMNode *refNode, PRInt32 offset)
void
moz_dom_SetEnd (range, refNode, offset)
	nsIDOMRange *range;
	nsIDOMNode *refNode;
	PRInt32 offset;
    CODE:
	/* raises (RangeException, DOMException) */
	range->SetEnd(refNode, offset);

=for apidoc Mozilla::DOM::Range::SetStartBefore

=for signature $range->SetStartBefore($node)



=cut

## SetStartBefore(nsIDOMNode *refNode)
void
moz_dom_SetStartBefore (range, refNode)
	nsIDOMRange *range;
	nsIDOMNode *refNode;
    CODE:
	/* raises (RangeException, DOMException) */
	range->SetStartBefore(refNode);

=for apidoc Mozilla::DOM::Range::SetStartAfter

=for signature $range->SetStartAfter($node)



=cut

## SetStartAfter(nsIDOMNode *refNode)
void
moz_dom_SetStartAfter (range, refNode)
	nsIDOMRange *range;
	nsIDOMNode *refNode;
    CODE:
	/* raises (RangeException, DOMException) */
	range->SetStartAfter(refNode);

=for apidoc Mozilla::DOM::Range::SetEndBefore

=for signature $range->SetEndBefore($node)



=cut

## SetEndBefore(nsIDOMNode *refNode)
void
moz_dom_SetEndBefore (range, refNode)
	nsIDOMRange *range;
	nsIDOMNode *refNode;
    CODE:
	/* raises (RangeException, DOMException) */
	range->SetEndBefore(refNode);

=for apidoc Mozilla::DOM::Range::SetEndAfter

=for signature $range->SetEndAfter($node)



=cut

## SetEndAfter(nsIDOMNode *refNode)
void
moz_dom_SetEndAfter (range, refNode)
	nsIDOMRange *range;
	nsIDOMNode *refNode;
    CODE:
	/* raises (RangeException, DOMException) */
	range->SetEndAfter(refNode);

=for apidoc Mozilla::DOM::Range::Collapse

=for signature $range->Collapse($bool)



=cut

## Collapse(PRBool toStart)
void
moz_dom_Collapse (range, toStart)
	nsIDOMRange *range;
	PRBool toStart;
    CODE:
	/* raises (DOMException) */
	range->Collapse(toStart);

=for apidoc Mozilla::DOM::Range::SelectNode

=for signature $range->SelectNode($node)



=cut

## SelectNode(nsIDOMNode *refNode)
void
moz_dom_SelectNode (range, refNode)
	nsIDOMRange *range;
	nsIDOMNode *refNode;
    CODE:
	/* raises (RangeException, DOMException) */
	range->SelectNode(refNode);

=for apidoc Mozilla::DOM::Range::SelectNodeContents

=for signature $range->SelectNodeContents($node)



=cut

## SelectNodeContents(nsIDOMNode *refNode)
void
moz_dom_SelectNodeContents (range, refNode)
	nsIDOMRange *range;
	nsIDOMNode *refNode;
    CODE:
	/* raises (RangeException, DOMException) */
	range->SelectNodeContents(refNode);

=for apidoc Mozilla::DOM::Range::CompareBoundaryPoints

=for signature $num = $range->CompareBoundaryPoints($how, $sourceRange)



=cut

## CompareBoundaryPoints(PRUint16 how, nsIDOMRange *sourceRange, PRInt16 *_retval)
PRInt16
moz_dom_CompareBoundaryPoints (range, how, sourceRange)
	nsIDOMRange *range;
	PRUint16 how;
	nsIDOMRange *sourceRange;
    PREINIT:
	PRInt16 num;
    CODE:
	/* raises (DOMException) */
	range->CompareBoundaryPoints(how, sourceRange, &num);
	RETVAL = num;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::Range::DeleteContents

=for signature $range->DeleteContents()



=cut

## DeleteContents(void)
void
moz_dom_DeleteContents (range)
	nsIDOMRange *range;
    CODE:
	/* raises (DOMException) */
	range->DeleteContents();

=for apidoc Mozilla::DOM::Range::ExtractContents

=for signature $documentfragment = $range->ExtractContents()



=cut

## ExtractContents(nsIDOMDocumentFragment **_retval)
nsIDOMDocumentFragment *
moz_dom_ExtractContents (range)
	nsIDOMRange *range;
    PREINIT:
	nsIDOMDocumentFragment *frag;
    CODE:
	/* raises (DOMException) */
	range->ExtractContents(&frag);
	RETVAL = frag;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::Range::CloneContents

=for signature $documentfragment = $range->CloneContents()



=cut

## CloneContents(nsIDOMDocumentFragment **_retval)
nsIDOMDocumentFragment *
moz_dom_CloneContents (range)
	nsIDOMRange *range;
    PREINIT:
	nsIDOMDocumentFragment *frag;
    CODE:
	/* raises (DOMException) */
	range->CloneContents(&frag);
	RETVAL = frag;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::Range::InsertNode

=for signature $range->InsertNode($node)



=cut

## InsertNode(nsIDOMNode *newNode)
void
moz_dom_InsertNode (range, newNode)
	nsIDOMRange *range;
	nsIDOMNode *newNode;
    CODE:
	/* raises (RangeException, DOMException) */
	range->InsertNode(newNode);

=for apidoc Mozilla::DOM::Range::SurroundContents

=for signature $range->SurroundContents($newParentNode)



=cut

## SurroundContents(nsIDOMNode *newParent)
void
moz_dom_SurroundContents (range, newParent)
	nsIDOMRange *range;
	nsIDOMNode *newParent;
    CODE:
	/* raises (RangeException, DOMException) */
	range->SurroundContents(newParent);

=for apidoc Mozilla::DOM::Range::CloneRange

=for signature $range->CloneRange($range)



=cut

## CloneRange(nsIDOMRange **_retval)
nsIDOMRange *
moz_dom_CloneRange (range)
	nsIDOMRange *range;
    PREINIT:
	nsIDOMRange *newrange;
    CODE:
	/* raises (DOMException) */
	range->CloneRange(&newrange);
	RETVAL = newrange;

=for apidoc Mozilla::DOM::Range::ToString

=for signature $str = $range->ToString()



=cut

## ToString(nsAString & _retval)
nsEmbedString
moz_dom_ToString (range)
	nsIDOMRange *range;
    PREINIT:
	nsEmbedString str;
    CODE:
	/* raises (DOMException) */
	range->ToString(str);
	RETVAL = str;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::Range::Detach

=for signature $range->Detach()



=cut

## Detach(void)
void
moz_dom_Detach (range)
	nsIDOMRange *range;
    CODE:
	/* raises (DOMException) */
	range->Detach();


# -----------------------------------------------------------------------------


MODULE = Mozilla::DOM	PACKAGE = Mozilla::DOM::Supports	PREFIX = moz_dom_

=for object Mozilla::DOM::Supports

Mozilla::DOM::Supports is a wrapper around an instance of Mozilla's
nsISupports interface, from which everything else inherits.

=cut

=for apidoc Mozilla::DOM::Supports::QueryInterface

=for signature $obj = $supports->QueryInterface($uuid);

This is how you can get different interfaces from
an object. Basically that means a way to get different
methods from the same object.

The $obj return value will be blessed into the class corresponding to
whatever interface you requested.

The $uuid argument is just a string which looks something like

  {69e5df00-7b8b-11d3-af61-00a024ffc08c}

which you can find in the Mozilla header files, but it's
better to use a GetIID class method, like

  $uuid = Mozilla::DOM::EventTarget->GetIID();

=cut

## QueryInterface(const nsIID & uuid, void * *result)
SV *
moz_dom_QueryInterface (supports, uuid)
	nsISupports *supports;
	nsIID uuid;
    PREINIT:
	void *res;
	nsresult rv;
    CODE:
	rv = supports->QueryInterface((const nsIID)uuid, (void **)&res);
	if (NS_FAILED(rv))
		croak("QueryInterface failed, rv=%d\n", rv);

	/* XXX: let me know if there's a better way to do this... */
	if (uuid.Equals(nsIDOMAbstractView::GetIID())) {
		RETVAL = newSVnsIDOMAbstractView((nsIDOMAbstractView *)res);
	} else if (uuid.Equals(nsIDOMAttr::GetIID())) {
		RETVAL = newSVnsIDOMAttr((nsIDOMAttr *)res);
	} else if (uuid.Equals(nsIDOMCDATASection::GetIID())) {
		RETVAL = newSVnsIDOMCDATASection((nsIDOMCDATASection *)res);
	} else if (uuid.Equals(nsIDOMCharacterData::GetIID())) {
		RETVAL = newSVnsIDOMCharacterData((nsIDOMCharacterData *)res);
	} else if (uuid.Equals(nsIDOMComment::GetIID())) {
		RETVAL = newSVnsIDOMComment((nsIDOMComment *)res);
	} else if (uuid.Equals(nsIDOMDOMException::GetIID())) {
		RETVAL = newSVnsIDOMDOMException((nsIDOMDOMException *)res);
	} else if (uuid.Equals(nsIDOMDOMImplementation::GetIID())) {
		RETVAL = newSVnsIDOMDOMImplementation((nsIDOMDOMImplementation *)res);
	} else if (uuid.Equals(nsIDOMDocument::GetIID())) {
		RETVAL = newSVnsIDOMDocument((nsIDOMDocument *)res);
	} else if (uuid.Equals(nsIDOMDocumentEvent::GetIID())) {
		RETVAL = newSVnsIDOMDocumentEvent((nsIDOMDocumentEvent *)res);
	} else if (uuid.Equals(nsIDOMDocumentFragment::GetIID())) {
		RETVAL = newSVnsIDOMDocumentFragment((nsIDOMDocumentFragment *)res);
	} else if (uuid.Equals(nsIDOMDocumentType::GetIID())) {
		RETVAL = newSVnsIDOMDocumentType((nsIDOMDocumentType *)res);
	} else if (uuid.Equals(nsIDOMDocumentView::GetIID())) {
		RETVAL = newSVnsIDOMDocumentView((nsIDOMDocumentView *)res);
	} else if (uuid.Equals(nsIDOMElement::GetIID())) {
		RETVAL = newSVnsIDOMElement((nsIDOMElement *)res);
	} else if (uuid.Equals(nsIDOMEntityReference::GetIID())) {
		RETVAL = newSVnsIDOMEntityReference((nsIDOMEntityReference *)res);
	} else if (uuid.Equals(nsIDOMEvent::GetIID())) {
		RETVAL = newSVnsIDOMEvent((nsIDOMEvent *)res);
	} else if (uuid.Equals(nsIDOMEventListener::GetIID())) {
		RETVAL = newSVnsIDOMEventListener((nsIDOMEventListener *)res);
	} else if (uuid.Equals(nsIDOMEventTarget::GetIID())) {
		RETVAL = newSVnsIDOMEventTarget((nsIDOMEventTarget *)res);
	} else if (uuid.Equals(nsIDOMKeyEvent::GetIID())) {
		RETVAL = newSVnsIDOMKeyEvent((nsIDOMKeyEvent *)res);
	} else if (uuid.Equals(nsIDOMMouseEvent::GetIID())) {
		RETVAL = newSVnsIDOMMouseEvent((nsIDOMMouseEvent *)res);
	} else if (uuid.Equals(nsIDOMMutationEvent::GetIID())) {
		RETVAL = newSVnsIDOMMutationEvent((nsIDOMMutationEvent *)res);
	} else if (uuid.Equals(nsIDOMNamedNodeMap::GetIID())) {
		RETVAL = newSVnsIDOMNamedNodeMap((nsIDOMNamedNodeMap *)res);
	} else if (uuid.Equals(nsIDOMNode::GetIID())) {
		RETVAL = newSVnsIDOMNode((nsIDOMNode *)res);
	} else if (uuid.Equals(nsIDOMNodeList::GetIID())) {
		RETVAL = newSVnsIDOMNodeList((nsIDOMNodeList *)res);
	} else if (uuid.Equals(nsIDOMProcessingInstruction::GetIID())) {
		RETVAL = newSVnsIDOMProcessingInstruction((nsIDOMProcessingInstruction *)res);
	} else if (uuid.Equals(nsIDOMRange::GetIID())) {
		RETVAL = newSVnsIDOMRange((nsIDOMRange *)res);
	} else if (uuid.Equals(nsISelection::GetIID())) {
		RETVAL = newSVnsISelection((nsISelection *)res);
	} else if (uuid.Equals(nsIDOMText::GetIID())) {
		RETVAL = newSVnsIDOMText((nsIDOMText *)res);
	} else if (uuid.Equals(nsIDOMUIEvent::GetIID())) {
		RETVAL = newSVnsIDOMUIEvent((nsIDOMUIEvent *)res);
	} else if (uuid.Equals(nsIWebBrowser::GetIID())) {
		RETVAL = newSVnsIWebBrowser((nsIWebBrowser *)res);
	} else if (uuid.Equals(nsIWebNavigation::GetIID())) {
		RETVAL = newSVnsIWebNavigation((nsIWebNavigation *)res);
	} else if (uuid.Equals(nsIURI::GetIID())) {
		RETVAL = newSVnsIURI((nsIURI *)res);
	} else if (uuid.Equals(nsIDOMWindow::GetIID())) {
		RETVAL = newSVnsIDOMWindow((nsIDOMWindow *)res);
	} else if (uuid.Equals(nsIDOMWindow2::GetIID())) {
		RETVAL = newSVnsIDOMWindow2((nsIDOMWindow2 *)res);
	} else if (uuid.Equals(nsIDOMWindowInternal::GetIID())) {
		RETVAL = newSVnsIDOMWindowInternal((nsIDOMWindowInternal *)res);
	} else if (uuid.Equals(nsIDOMWindowCollection::GetIID())) {
		RETVAL = newSVnsIDOMWindowCollection((nsIDOMWindowCollection *)res);
	} else if (uuid.Equals(nsIDOMHistory::GetIID())) {
		RETVAL = newSVnsIDOMHistory((nsIDOMHistory *)res);
	} else if (uuid.Equals(nsIDOMLocation::GetIID())) {
		RETVAL = newSVnsIDOMLocation((nsIDOMLocation *)res);
	} else if (uuid.Equals(nsIDOMNavigator::GetIID())) {
		RETVAL = newSVnsIDOMNavigator((nsIDOMNavigator *)res);
	} else if (uuid.Equals(nsIDOMScreen::GetIID())) {
		RETVAL = newSVnsIDOMScreen((nsIDOMScreen *)res);

	/* nsIDOMHTML* */
	} else if (uuid.Equals(nsIDOMHTMLAnchorElement::GetIID())) {
		RETVAL = newSVnsIDOMHTMLAnchorElement((nsIDOMHTMLAnchorElement *)res);
	} else if (uuid.Equals(nsIDOMHTMLAppletElement::GetIID())) {
		RETVAL = newSVnsIDOMHTMLAppletElement((nsIDOMHTMLAppletElement *)res);
	} else if (uuid.Equals(nsIDOMHTMLAreaElement::GetIID())) {
		RETVAL = newSVnsIDOMHTMLAreaElement((nsIDOMHTMLAreaElement *)res);
	} else if (uuid.Equals(nsIDOMHTMLBRElement::GetIID())) {
		RETVAL = newSVnsIDOMHTMLBRElement((nsIDOMHTMLBRElement *)res);
	} else if (uuid.Equals(nsIDOMHTMLBaseElement::GetIID())) {
		RETVAL = newSVnsIDOMHTMLBaseElement((nsIDOMHTMLBaseElement *)res);
	} else if (uuid.Equals(nsIDOMHTMLBaseFontElement::GetIID())) {
		RETVAL = newSVnsIDOMHTMLBaseFontElement((nsIDOMHTMLBaseFontElement *)res);
	} else if (uuid.Equals(nsIDOMHTMLBodyElement::GetIID())) {
		RETVAL = newSVnsIDOMHTMLBodyElement((nsIDOMHTMLBodyElement *)res);
	} else if (uuid.Equals(nsIDOMHTMLButtonElement::GetIID())) {
		RETVAL = newSVnsIDOMHTMLButtonElement((nsIDOMHTMLButtonElement *)res);
	} else if (uuid.Equals(nsIDOMHTMLCollection::GetIID())) {
		RETVAL = newSVnsIDOMHTMLCollection((nsIDOMHTMLCollection *)res);
	} else if (uuid.Equals(nsIDOMHTMLDListElement::GetIID())) {
		RETVAL = newSVnsIDOMHTMLDListElement((nsIDOMHTMLDListElement *)res);
	} else if (uuid.Equals(nsIDOMHTMLDirectoryElement::GetIID())) {
		RETVAL = newSVnsIDOMHTMLDirectoryElement((nsIDOMHTMLDirectoryElement *)res);
	} else if (uuid.Equals(nsIDOMHTMLDivElement::GetIID())) {
		RETVAL = newSVnsIDOMHTMLDivElement((nsIDOMHTMLDivElement *)res);
	} else if (uuid.Equals(nsIDOMHTMLElement::GetIID())) {
		RETVAL = newSVnsIDOMHTMLElement((nsIDOMHTMLElement *)res);
	} else if (uuid.Equals(nsIDOMHTMLEmbedElement::GetIID())) {
		RETVAL = newSVnsIDOMHTMLEmbedElement((nsIDOMHTMLEmbedElement *)res);
	} else if (uuid.Equals(nsIDOMHTMLFieldSetElement::GetIID())) {
		RETVAL = newSVnsIDOMHTMLFieldSetElement((nsIDOMHTMLFieldSetElement *)res);
	} else if (uuid.Equals(nsIDOMHTMLFontElement::GetIID())) {
		RETVAL = newSVnsIDOMHTMLFontElement((nsIDOMHTMLFontElement *)res);
	} else if (uuid.Equals(nsIDOMHTMLFormElement::GetIID())) {
		RETVAL = newSVnsIDOMHTMLFormElement((nsIDOMHTMLFormElement *)res);
	} else if (uuid.Equals(nsIDOMHTMLFrameElement::GetIID())) {
		RETVAL = newSVnsIDOMHTMLFrameElement((nsIDOMHTMLFrameElement *)res);
	} else if (uuid.Equals(nsIDOMHTMLFrameSetElement::GetIID())) {
		RETVAL = newSVnsIDOMHTMLFrameSetElement((nsIDOMHTMLFrameSetElement *)res);
	} else if (uuid.Equals(nsIDOMHTMLHRElement::GetIID())) {
		RETVAL = newSVnsIDOMHTMLHRElement((nsIDOMHTMLHRElement *)res);
	} else if (uuid.Equals(nsIDOMHTMLHeadElement::GetIID())) {
		RETVAL = newSVnsIDOMHTMLHeadElement((nsIDOMHTMLHeadElement *)res);
	} else if (uuid.Equals(nsIDOMHTMLHeadingElement::GetIID())) {
		RETVAL = newSVnsIDOMHTMLHeadingElement((nsIDOMHTMLHeadingElement *)res);
	} else if (uuid.Equals(nsIDOMHTMLHtmlElement::GetIID())) {
		RETVAL = newSVnsIDOMHTMLHtmlElement((nsIDOMHTMLHtmlElement *)res);
	} else if (uuid.Equals(nsIDOMHTMLIFrameElement::GetIID())) {
		RETVAL = newSVnsIDOMHTMLIFrameElement((nsIDOMHTMLIFrameElement *)res);
	} else if (uuid.Equals(nsIDOMHTMLImageElement::GetIID())) {
		RETVAL = newSVnsIDOMHTMLImageElement((nsIDOMHTMLImageElement *)res);
	} else if (uuid.Equals(nsIDOMHTMLInputElement::GetIID())) {
		RETVAL = newSVnsIDOMHTMLInputElement((nsIDOMHTMLInputElement *)res);
	} else if (uuid.Equals(nsIDOMHTMLIsIndexElement::GetIID())) {
		RETVAL = newSVnsIDOMHTMLIsIndexElement((nsIDOMHTMLIsIndexElement *)res);
	} else if (uuid.Equals(nsIDOMHTMLLIElement::GetIID())) {
		RETVAL = newSVnsIDOMHTMLLIElement((nsIDOMHTMLLIElement *)res);
	} else if (uuid.Equals(nsIDOMHTMLLabelElement::GetIID())) {
		RETVAL = newSVnsIDOMHTMLLabelElement((nsIDOMHTMLLabelElement *)res);
	} else if (uuid.Equals(nsIDOMHTMLLegendElement::GetIID())) {
		RETVAL = newSVnsIDOMHTMLLegendElement((nsIDOMHTMLLegendElement *)res);
	} else if (uuid.Equals(nsIDOMHTMLLinkElement::GetIID())) {
		RETVAL = newSVnsIDOMHTMLLinkElement((nsIDOMHTMLLinkElement *)res);
	} else if (uuid.Equals(nsIDOMHTMLMapElement::GetIID())) {
		RETVAL = newSVnsIDOMHTMLMapElement((nsIDOMHTMLMapElement *)res);
	} else if (uuid.Equals(nsIDOMHTMLMenuElement::GetIID())) {
		RETVAL = newSVnsIDOMHTMLMenuElement((nsIDOMHTMLMenuElement *)res);
	} else if (uuid.Equals(nsIDOMHTMLMetaElement::GetIID())) {
		RETVAL = newSVnsIDOMHTMLMetaElement((nsIDOMHTMLMetaElement *)res);
	} else if (uuid.Equals(nsIDOMHTMLModElement::GetIID())) {
		RETVAL = newSVnsIDOMHTMLModElement((nsIDOMHTMLModElement *)res);
	} else if (uuid.Equals(nsIDOMHTMLOListElement::GetIID())) {
		RETVAL = newSVnsIDOMHTMLOListElement((nsIDOMHTMLOListElement *)res);
	} else if (uuid.Equals(nsIDOMHTMLObjectElement::GetIID())) {
		RETVAL = newSVnsIDOMHTMLObjectElement((nsIDOMHTMLObjectElement *)res);
	} else if (uuid.Equals(nsIDOMHTMLOptGroupElement::GetIID())) {
		RETVAL = newSVnsIDOMHTMLOptGroupElement((nsIDOMHTMLOptGroupElement *)res);
	} else if (uuid.Equals(nsIDOMHTMLOptionElement::GetIID())) {
		RETVAL = newSVnsIDOMHTMLOptionElement((nsIDOMHTMLOptionElement *)res);
	} else if (uuid.Equals(nsIDOMHTMLOptionsCollection::GetIID())) {
		RETVAL = newSVnsIDOMHTMLOptionsCollection((nsIDOMHTMLOptionsCollection *)res);
	} else if (uuid.Equals(nsIDOMHTMLParagraphElement::GetIID())) {
		RETVAL = newSVnsIDOMHTMLParagraphElement((nsIDOMHTMLParagraphElement *)res);
	} else if (uuid.Equals(nsIDOMHTMLParamElement::GetIID())) {
		RETVAL = newSVnsIDOMHTMLParamElement((nsIDOMHTMLParamElement *)res);
	} else if (uuid.Equals(nsIDOMHTMLPreElement::GetIID())) {
		RETVAL = newSVnsIDOMHTMLPreElement((nsIDOMHTMLPreElement *)res);
	} else if (uuid.Equals(nsIDOMHTMLQuoteElement::GetIID())) {
		RETVAL = newSVnsIDOMHTMLQuoteElement((nsIDOMHTMLQuoteElement *)res);
	} else if (uuid.Equals(nsIDOMHTMLScriptElement::GetIID())) {
		RETVAL = newSVnsIDOMHTMLScriptElement((nsIDOMHTMLScriptElement *)res);
	} else if (uuid.Equals(nsIDOMHTMLSelectElement::GetIID())) {
		RETVAL = newSVnsIDOMHTMLSelectElement((nsIDOMHTMLSelectElement *)res);
	} else if (uuid.Equals(nsIDOMHTMLStyleElement::GetIID())) {
		RETVAL = newSVnsIDOMHTMLStyleElement((nsIDOMHTMLStyleElement *)res);
	} else if (uuid.Equals(nsIDOMHTMLTableCaptionElement::GetIID())) {
		RETVAL = newSVnsIDOMHTMLTableCaptionElement((nsIDOMHTMLTableCaptionElement *)res);
	} else if (uuid.Equals(nsIDOMHTMLTableCellElement::GetIID())) {
		RETVAL = newSVnsIDOMHTMLTableCellElement((nsIDOMHTMLTableCellElement *)res);
	} else if (uuid.Equals(nsIDOMHTMLTableColElement::GetIID())) {
		RETVAL = newSVnsIDOMHTMLTableColElement((nsIDOMHTMLTableColElement *)res);
	} else if (uuid.Equals(nsIDOMHTMLTableElement::GetIID())) {
		RETVAL = newSVnsIDOMHTMLTableElement((nsIDOMHTMLTableElement *)res);
	} else if (uuid.Equals(nsIDOMHTMLTableRowElement::GetIID())) {
		RETVAL = newSVnsIDOMHTMLTableRowElement((nsIDOMHTMLTableRowElement *)res);
	} else if (uuid.Equals(nsIDOMHTMLTableSectionElement::GetIID())) {
		RETVAL = newSVnsIDOMHTMLTableSectionElement((nsIDOMHTMLTableSectionElement *)res);
	} else if (uuid.Equals(nsIDOMHTMLTextAreaElement::GetIID())) {
		RETVAL = newSVnsIDOMHTMLTextAreaElement((nsIDOMHTMLTextAreaElement *)res);
	} else if (uuid.Equals(nsIDOMHTMLTitleElement::GetIID())) {
		RETVAL = newSVnsIDOMHTMLTitleElement((nsIDOMHTMLTitleElement *)res);
	} else if (uuid.Equals(nsIDOMHTMLUListElement::GetIID())) {
		RETVAL = newSVnsIDOMHTMLUListElement((nsIDOMHTMLUListElement *)res);
	}
    OUTPUT:
	RETVAL


# -----------------------------------------------------------------------------

MODULE = Mozilla::DOM	PACKAGE = Mozilla::DOM::WebBrowser	PREFIX = moz_dom_

# /usr/include/mozilla/nsIWebBrowser.h

=for object Mozilla::DOM::WebBrowser

Mozilla::DOM::WebBrowser is a wrapper around an instance of Mozilla's
nsIWebBrowser interface. This class inherits from
L<Supports|Mozilla::DOM::Supports>.

 * The nsIWebBrowser interface is implemented by web browser objects.
 * Embedders use this interface during initialisation to associate
 * the new web browser instance with the embedders chrome and
 * to register any listeners. The interface may also be used at runtime
 * to obtain the content DOM window and from that the rest of the DOM.

Currently only the GetContentDOMWindow method is wrapped.

=cut

=head1 CLASS METHODS

=head2 $iid = Mozilla::DOM::WebBrowser->B<GetIID>()

Pass this to QueryInterface.

=cut

## NS_DEFINE_STATIC_IID_ACCESSOR(NS_IWEBBROWSER_IID)
static nsIID
nsIWebBrowser::GetIID()
    CODE:
	const nsIID &id = nsIWebBrowser::GetIID();
	RETVAL = (nsIID) id;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::WebBrowser::GetContentDOMWindow

=for signature $window = $browser->GetContentDOMWindow

Gets the top-level DOM L<Window|Mozilla::DOM::Window>.
The embedder may walk the entire DOM starting from this value.

=cut

## GetContentDOMWindow(nsIDOMWindow * *aContentDOMWindow)
nsIDOMWindow *
moz_dom_GetContentDOMWindow (browser)
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

# -----------------------------------------------------------------------------

MODULE = Mozilla::DOM	PACKAGE = Mozilla::DOM::WebNavigation	PREFIX = moz_dom_

# /usr/include/mozilla/docshell/nsIWebNavigation.h

=for object Mozilla::DOM::WebNavigation

Mozilla::DOM::WebNavigation is a wrapper around an instance of Mozilla's
nsIWebNavigation interface. This class inherits from
L<Supports|Mozilla::DOM::Supports>.

Note: the nsIWebNavigation interface isn't marked FROZEN in Gecko,
so it can change.

You can get this object by QueryInterfacing WebBrowser:

  $iid = Mozilla::DOM::WebNavigation->GetIID;
  $navigation = $browser->QueryInterface($iid);

XXX: The following methods are unfortunately not wrapped yet:
LoadURI, GetSessionHistory, SetSessionHistory. I'd especially
like to have LoadURI, but I don't know how to do nsIInputStream
for its last two arguments.

=cut

=begin enums

The following constants are available.
XXX: This is currently buggy, because you have to call them
as instance methods. This will change soon.

=over 4

=item LOAD_FLAGS_MASK => 65535

=item LOAD_FLAGS_NONE => 0

  * Normal load flag.

=item LOAD_FLAGS_IS_REFRESH => 16

  * Meta-refresh flag.  The cache is bypassed.  This type of load is
  *                     usually the result of a meta-refresh tag, or a HTTP
  *                     'refresh' header.

=item LOAD_FLAGS_IS_LINK => 32

  * Link-click flag. 

=item LOAD_FLAGS_BYPASS_HISTORY => 64

  * Bypass history flag.

=item LOAD_FLAGS_REPLACE_HISTORY => 128

  * Replace history entry flag.

=item LOAD_FLAGS_BYPASS_CACHE => 256

=item LOAD_FLAGS_BYPASS_PROXY => 512

=item LOAD_FLAGS_CHARSET_CHANGE => 1024

=item STOP_NETWORK => 1

  * Stop all network activity.  This includes both active network loads and
  * pending meta-refreshes.

=item STOP_CONTENT => 2

  * Stop all content activity.  This includes animated images, plugins and
  * pending Javascript timeouts.

=item STOP_ALL => 3

  * Stop all activity.

=back

=end enums

=cut

=head1 CLASS METHODS

=head2 $iid = Mozilla::DOM::WebNavigation->B<GetIID>()

Pass this to QueryInterface.

=cut

## NS_DEFINE_STATIC_IID_ACCESSOR(NS_IWEBNAVIGATION_IID)
static nsIID
nsIWebNavigation::GetIID()
    CODE:
	const nsIID &id = nsIWebNavigation::GetIID();
	RETVAL = (nsIID) id;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::WebNavigation::GetCanGoBack

=for signature $bool = $webnavigation->GetCanGoBack()

  * Indicates if the object can go back.  If true this indicates that
  * there is back session history available for navigation.

Note: this method is available in Gtk2::MozEmbed:

  $embed->can_go_back

=cut

## GetCanGoBack(PRBool *aCanGoBack)
PRBool
moz_dom_GetCanGoBack (webnavigation)
	nsIWebNavigation *webnavigation;
    PREINIT:
	PRBool aCanGoBack;
    CODE:
	webnavigation->GetCanGoBack(&aCanGoBack);
	RETVAL = aCanGoBack;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::WebNavigation::GetCanGoForward

=for signature $bool = $webnavigation->GetCanGoForward()

  * Indicates if the object can go forward.  If true this indicates that
  * there is forward session history available for navigation

Note: this method is available in Gtk2::MozEmbed:

  $embed->can_go_forward

=cut

## GetCanGoForward(PRBool *aCanGoForward)
PRBool
moz_dom_GetCanGoForward (webnavigation)
	nsIWebNavigation *webnavigation;
    PREINIT:
	PRBool aCanGoForward;
    CODE:
	webnavigation->GetCanGoForward(&aCanGoForward);
	RETVAL = aCanGoForward;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::WebNavigation::GoBack

=for signature $webnavigation->GoBack()

  * Tells the object to navigate to the previous session history item.  When
  * a page is loaded from session history, all content is loaded from the
  * cache (if available) and page state (such as form values, scroll position)
  * is restored.
  *
  * @return NS_OK               - Backward navigation was successful.
  *         NS_ERROR_UNEXPECTED - This call was unexpected at this time.  Most
  *                               likely you can't go back right now.

Note: this method is available in Gtk2::MozEmbed:

  $embed->go_back()

=cut

## GoBack(void)
void
moz_dom_GoBack (webnavigation)
	nsIWebNavigation *webnavigation;
    CODE:
	webnavigation->GoBack();

=for apidoc Mozilla::DOM::WebNavigation::GoForward

=for signature $webnavigation->GoForward()

  * Tells the object to navigate to the next Forward session history item.
  * When a page is loaded from session history, all content is loaded from
  * the cache (if available) and page state (such as form values, scroll
  * position) is restored.
  *
  * @return NS_OK               - Forward was successful.
  *         NS_ERROR_UNEXPECTED - This call was unexpected at this time.  Most
  *                               likely you can't go forward right now.

Note: this method is available in Gtk2::MozEmbed:

  $embed->go_forward()

=cut

## GoForward(void)
void
moz_dom_GoForward (webnavigation)
	nsIWebNavigation *webnavigation;
    CODE:
	webnavigation->GoForward();

=for apidoc Mozilla::DOM::WebNavigation::GotoIndex

=for signature $webnavigation->GotoIndex($index)

  * Tells the object to navigate to the session history item at index.
  *
  * @return NS_OK -               GotoIndex was successful.
  *         NS_ERROR_UNEXPECTED - This call was unexpected at this time.  Most
  *                               likely you can't goto that index

=cut

## GotoIndex(PRInt32 index)
void
moz_dom_GotoIndex (webnavigation, index)
	nsIWebNavigation *webnavigation;
	PRInt32  index;
    CODE:
	webnavigation->GotoIndex(index);

#=for apidoc Mozilla::DOM::WebNavigation::LoadURI
#
#=for signature $webnavigation->LoadURI($uri, $loadflags, $referrer, $postdata, $headers)
#
#  * Loads a given URI.  This will give priority to loading the requested URI
#  * in the object implementing	this interface.  If it can't be loaded here
#  * however, the URL dispatcher will go through its normal process of content
#  * loading.
#  *
#  * @param uri       - The URI string to load.
#  * @param loadFlags - Flags modifying load behaviour. Generally you will pass
#  *                    LOAD_FLAGS_NONE for this parameter.
#  * @param referrer  - The referring URI.  If this argument is NULL, the
#  *                    referring URI will be inferred internally.
#  * @param postData  - nsIInputStream containing POST data for the request.
#
#Note: there is a similar method in Gtk2::MozEmbed:
#
#  $embed->load_url($url)
#
#=cut
#
### LoadURI(const PRUnichar *uri, PRUint32 loadFlags, nsIURI *referrer, nsIInputStream *postData, nsIInputStream *headers)
#void
#moz_dom_LoadURI (webnavigation, uri, loadFlags, referrer, postData, headers)
#	nsIWebNavigation *webnavigation;
#	const PRUnichar * uri;
#	PRUint32  loadFlags;
#	nsIURI * referrer;
#	nsIInputStream * postData;
#	nsIInputStream * headers;
#    CODE:
#	webnavigation->LoadURI(uri, loadFlags, referrer, postData, headers);

=for apidoc Mozilla::DOM::WebNavigation::Reload

=for signature $webnavigation->Reload($reloadflags)

  * Tells the Object to reload the current page.
  *
  * @param reloadFlags - Flags modifying reload behaviour. Generally you will
  *                      pass LOAD_FLAGS_NONE for this parameter.

Note: this method is available in Gtk2::MozEmbed:

  $embed->reload($flags)

(See also the section "flags Gtk2::MozEmbed::Reload"
in `perldoc Gtk2::MozEmbed::main`.)

=cut

## Reload(PRUint32 reloadFlags)
void
moz_dom_Reload (webnavigation, reloadFlags)
	nsIWebNavigation *webnavigation;
	PRUint32  reloadFlags;
    CODE:
	webnavigation->Reload(reloadFlags);

=for apidoc Mozilla::DOM::WebNavigation::Stop

=for signature $webnavigation->Stop($stopflags)

  * Stops a load of a URI.
  *
  * @param stopFlags - Flags indicating the stop behavior.

Note: this method is available in Gtk2::MozEmbed:

  $embed->stop_load();

=cut

## Stop(PRUint32 stopFlags)
void
moz_dom_Stop (webnavigation, stopFlags)
	nsIWebNavigation *webnavigation;
	PRUint32  stopFlags;
    CODE:
	webnavigation->Stop(stopFlags);

=for apidoc Mozilla::DOM::WebNavigation::GetDocument

=for signature $document = $webnavigation->GetDocument()

  * Retrieves the current DOM document for the frame, or lazily creates a
  * blank document if there is none. This attribute never returns null except
  * for unexpected error situations.

Note: this document is also available by doing

    my $browser = $embed->get_nsIWebBrowser;
    my $window = $browser->GetContentDOMWindow;
    my $doc = $window->GetDocument;

=cut

## GetDocument(nsIDOMDocument * *aDocument)
nsIDOMDocument *
moz_dom_GetDocument (webnavigation)
	nsIWebNavigation *webnavigation;
    PREINIT:
	nsIDOMDocument * aDocument;
    CODE:
	webnavigation->GetDocument(&aDocument);
	RETVAL = aDocument;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::WebNavigation::GetCurrentURI

=for signature $currenturi = $webnavigation->GetCurrentURI()

  * The currently loaded URI or null.

Note: I think this is the same as

  $embed->get_location

in Gtk2::MozEmbed.

=cut

## GetCurrentURI(nsIURI * *aCurrentURI)
nsIURI *
moz_dom_GetCurrentURI (webnavigation)
	nsIWebNavigation *webnavigation;
    PREINIT:
	nsIURI * aCurrentURI;
    CODE:
	webnavigation->GetCurrentURI(&aCurrentURI);
	RETVAL = aCurrentURI;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::WebNavigation::GetReferringURI

=for signature $referringuri = $webnavigation->GetReferringURI()

  * The referring URI.

=cut

## GetReferringURI(nsIURI * *aReferringURI)
nsIURI *
moz_dom_GetReferringURI (webnavigation)
	nsIWebNavigation *webnavigation;
    PREINIT:
	nsIURI * aReferringURI;
    CODE:
	webnavigation->GetReferringURI(&aReferringURI);
	RETVAL = aReferringURI;
    OUTPUT:
	RETVAL

#=for apidoc Mozilla::DOM::WebNavigation::GetSessionHistory
#
#=for signature $sessionhistory = $webnavigation->GetSessionHistory()
#
#  * The session history object used to store the session history for the
#  * session.
#
#=cut
#
### GetSessionHistory(nsISHistory * *aSessionHistory)
#nsISHistory *
#moz_dom_GetSessionHistory (webnavigation)
#	nsIWebNavigation *webnavigation;
#    PREINIT:
#	nsISHistory * aSessionHistory;
#    CODE:
#	webnavigation->GetSessionHistory(&aSessionHistory);
#	RETVAL = aSessionHistory;
#    OUTPUT:
#	RETVAL
#
#=for apidoc Mozilla::DOM::WebNavigation::SetSessionHistory
#
#=for signature $webnavigation->SetSessionHistory($sessionhistory)
#
#
#
#=cut
#
### SetSessionHistory(nsISHistory * aSessionHistory)
#void
#moz_dom_SetSessionHistory (webnavigation, aSessionHistory)
#	nsIWebNavigation *webnavigation;
#	nsISHistory *  aSessionHistory;
#    CODE:
#	webnavigation->SetSessionHistory(aSessionHistory);

# -----------------------------------------------------------------------------

MODULE = Mozilla::DOM	PACKAGE = Mozilla::DOM::URI	PREFIX = moz_dom_

# /usr/include/mozilla/nsIURI.h

=for object Mozilla::DOM::URI

Mozilla::DOM::URI is a wrapper around an instance of Mozilla's
nsIURI interface. This class inherits from
L<Supports|Mozilla::DOM::Supports>.

 * nsIURI - interface for an uniform resource identifier w/ i18n support.
 *
 * AUTF8String attributes may contain unescaped UTF-8 characters.
 * Consumers should be careful to escape the UTF-8 strings as necessary, but
 * should always try to "display" the UTF-8 version as provided by this
 * interface.
 *
 * AUTF8String attributes may also contain escaped characters.
 * 
 * Unescaping URI segments is unadvised unless there is intimate
 * knowledge of the underlying charset or there is no plan to display (or
 * otherwise enforce a charset on) the resulting URI substring.
 * 
 * @status FROZEN

 * URIs are essentially structured names for things -- anything. This interface
 * provides accessors to set and query the most basic components of an URI.
 * Subclasses, including nsIURL, impose greater structure on the URI.
 *
 * This interface follows Tim Berners-Lee's URI spec (RFC2396) [1], where the
 * basic URI components are defined as such:
 *  
 *      ftp://username:password@hostname:portnumber/pathname
 *      \ /   \               / \      / \        /\       /
 *       -     ---------------   ------   --------  -------
 *       |            |             |        |         |
 *       |            |             |        |        Path
 *       |            |             |       Port         
 *       |            |            Host      /
 *       |         UserPass                 /
 *     Scheme                              /
 *       \                                /
 *        --------------------------------
 *                       |
 *                    PrePath
 *
 * The definition of the URI components has been extended to allow for
 * internationalized domain names [2] and the more generic IRI structure [3].
 *
 * [1] http://www.ietf.org/rfc/rfc2396.txt
 * [2] http://www.ietf.org/internet-drafts/draft-ietf-idn-idna-06.txt
 * [3] http://www.ietf.org/internet-drafts/draft-masinter-url-i18n-08.txt

=cut

=head1 CLASS METHODS

=head2 $iid = Mozilla::DOM::URI->B<GetIID>()

Pass this to QueryInterface.

=cut

## NS_DEFINE_STATIC_IID_ACCESSOR(NS_IURI_IID)
static nsIID
nsIURI::GetIID()
    CODE:
	const nsIID &id = nsIURI::GetIID();
	RETVAL = (nsIID) id;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::URI::GetSpec

=for signature $spec = $uri->GetSpec()

     * Returns a string representation of the URI. Setting the spec causes
     * the new spec to be parsed, initializing the URI.
     *
     * Some characters may be escaped.

=cut

## GetSpec(nsACString & aSpec)
nsEmbedCString
moz_dom_GetSpec (uri)
	nsIURI *uri;
    PREINIT:
	nsEmbedCString aSpec;
    CODE:
	uri->GetSpec(aSpec);
	RETVAL = aSpec;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::URI::SetSpec

=for signature $uri->SetSpec($spec)

See GetSpec.

=cut

## SetSpec(const nsACString & aSpec)
void
moz_dom_SetSpec (uri, aSpec)
	nsIURI *uri;
	nsEmbedCString aSpec;
    CODE:
	uri->SetSpec(aSpec);

=for apidoc Mozilla::DOM::URI::GetPrePath

=for signature $prepath = $uri->GetPrePath()

     * The prePath (eg. scheme://user:password@host:port) returns the string
     * before the path.  This is useful for authentication or managing sessions.
     *
     * Some characters may be escaped.

=cut

## GetPrePath(nsACString & aPrePath)
nsEmbedCString
moz_dom_GetPrePath (uri)
	nsIURI *uri;
    PREINIT:
	nsEmbedCString aPrePath;
    CODE:
	uri->GetPrePath(aPrePath);
	RETVAL = aPrePath;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::URI::GetScheme

=for signature $scheme = $uri->GetScheme()

     * The Scheme is the protocol to which this URI refers.  The scheme is
     * restricted to the US-ASCII charset per RFC2396.

=cut

## GetScheme(nsACString & aScheme)
nsEmbedCString
moz_dom_GetScheme (uri)
	nsIURI *uri;
    PREINIT:
	nsEmbedCString aScheme;
    CODE:
	uri->GetScheme(aScheme);
	RETVAL = aScheme;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::URI::SetScheme

=for signature $uri->SetScheme($scheme)

See GetScheme.

=cut

## SetScheme(const nsACString & aScheme)
void
moz_dom_SetScheme (uri, aScheme)
	nsIURI *uri;
	nsEmbedCString aScheme;
    CODE:
	uri->SetScheme(aScheme);

=for apidoc Mozilla::DOM::URI::GetUserPass

=for signature $userpass = $uri->GetUserPass()

     * The username:password (or username only if value doesn't contain a ':')
     *
     * Some characters may be escaped.

=cut

## GetUserPass(nsACString & aUserPass)
nsEmbedCString
moz_dom_GetUserPass (uri)
	nsIURI *uri;
    PREINIT:
	nsEmbedCString aUserPass;
    CODE:
	uri->GetUserPass(aUserPass);
	RETVAL = aUserPass;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::URI::SetUserPass

=for signature $uri->SetUserPass($userpass)

See GetUserPass.

=cut

## SetUserPass(const nsACString & aUserPass)
void
moz_dom_SetUserPass (uri, aUserPass)
	nsIURI *uri;
	nsEmbedCString aUserPass;
    CODE:
	uri->SetUserPass(aUserPass);

=for apidoc Mozilla::DOM::URI::GetUsername

=for signature $username = $uri->GetUsername()

     * The optional username and password, assuming the preHost consists of
     * username:password.
     *
     * Some characters may be escaped.

=cut

## GetUsername(nsACString & aUsername)
nsEmbedCString
moz_dom_GetUsername (uri)
	nsIURI *uri;
    PREINIT:
	nsEmbedCString aUsername;
    CODE:
	uri->GetUsername(aUsername);
	RETVAL = aUsername;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::URI::SetUsername

=for signature $uri->SetUsername($username)

See GetUserName.

=cut

## SetUsername(const nsACString & aUsername)
void
moz_dom_SetUsername (uri, aUsername)
	nsIURI *uri;
	nsEmbedCString aUsername;
    CODE:
	uri->SetUsername(aUsername);

=for apidoc Mozilla::DOM::URI::GetPassword

=for signature $password = $uri->GetPassword()

See GetUserName.

=cut

## GetPassword(nsACString & aPassword)
nsEmbedCString
moz_dom_GetPassword (uri)
	nsIURI *uri;
    PREINIT:
	nsEmbedCString aPassword;
    CODE:
	uri->GetPassword(aPassword);
	RETVAL = aPassword;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::URI::SetPassword

=for signature $uri->SetPassword($password)

See GetUserName.

=cut

## SetPassword(const nsACString & aPassword)
void
moz_dom_SetPassword (uri, aPassword)
	nsIURI *uri;
	nsEmbedCString aPassword;
    CODE:
	uri->SetPassword(aPassword);

=for apidoc Mozilla::DOM::URI::GetHostPort

=for signature $hostport = $uri->GetHostPort()

     * The host:port (or simply the host, if port == -1).
     *
     * Characters are NOT escaped.

=cut

## GetHostPort(nsACString & aHostPort)
nsEmbedCString
moz_dom_GetHostPort (uri)
	nsIURI *uri;
    PREINIT:
	nsEmbedCString aHostPort;
    CODE:
	uri->GetHostPort(aHostPort);
	RETVAL = aHostPort;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::URI::SetHostPort

=for signature $uri->SetHostPort($hostport)

See GetHostPort.

=cut

## SetHostPort(const nsACString & aHostPort)
void
moz_dom_SetHostPort (uri, aHostPort)
	nsIURI *uri;
	nsEmbedCString aHostPort;
    CODE:
	uri->SetHostPort(aHostPort);

=for apidoc Mozilla::DOM::URI::GetHost

=for signature $host = $uri->GetHost()

     * The host is the internet domain name to which this URI refers.  It could
     * be an IPv4 (or IPv6) address literal.  If supported, it could be a
     * non-ASCII internationalized domain name.
     *
     * Characters are NOT escaped.

=cut

## GetHost(nsACString & aHost)
nsEmbedCString
moz_dom_GetHost (uri)
	nsIURI *uri;
    PREINIT:
	nsEmbedCString aHost;
    CODE:
	uri->GetHost(aHost);
	RETVAL = aHost;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::URI::SetHost

=for signature $uri->SetHost($host)

See GetHost.

=cut

## SetHost(const nsACString & aHost)
void
moz_dom_SetHost (uri, aHost)
	nsIURI *uri;
	nsEmbedCString aHost;
    CODE:
	uri->SetHost(aHost);

=for apidoc Mozilla::DOM::URI::GetPort

=for signature $port = $uri->GetPort()

     * A port value of -1 corresponds to the protocol's default port (eg. -1
     * implies port 80 for http URIs).

=cut

## GetPort(PRInt32 *aPort)
PRInt32
moz_dom_GetPort (uri)
	nsIURI *uri;
    PREINIT:
	PRInt32 aPort;
    CODE:
	uri->GetPort(&aPort);
	RETVAL = aPort;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::URI::SetPort

=for signature $uri->SetPort($port)

See GetPort.

=cut

## SetPort(PRInt32 aPort)
void
moz_dom_SetPort (uri, aPort)
	nsIURI *uri;
	PRInt32  aPort;
    CODE:
	uri->SetPort(aPort);

=for apidoc Mozilla::DOM::URI::GetPath

=for signature $path = $uri->GetPath()

     * The path, typically including at least a leading '/' (but may also be
     * empty, depending on the protocol).
     *
     * Some characters may be escaped.

=cut

## GetPath(nsACString & aPath)
nsEmbedCString
moz_dom_GetPath (uri)
	nsIURI *uri;
    PREINIT:
	nsEmbedCString aPath;
    CODE:
	uri->GetPath(aPath);
	RETVAL = aPath;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::URI::SetPath

=for signature $uri->SetPath($path)

See GetPath.

=cut

## SetPath(const nsACString & aPath)
void
moz_dom_SetPath (uri, aPath)
	nsIURI *uri;
	nsEmbedCString aPath;
    CODE:
	uri->SetPath(aPath);

=for apidoc Mozilla::DOM::URI::Equals

=for signature $bool = $uri->Equals($other)

     * URI equivalence test (not a strict string comparison).
     *
     * eg. http://foo.com:80/ == http://foo.com/

=cut

## Equals(nsIURI *other, PRBool *_retval)
PRBool
moz_dom_Equals (uri, other)
	nsIURI *uri;
	nsIURI * other;
    PREINIT:
	PRBool _retval;
    CODE:
	uri->Equals(other, &_retval);
	RETVAL = _retval;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::URI::SchemeIs

=for signature $bool = $uri->SchemeIs($scheme)

     * An optimization to do scheme checks without requiring the users of nsIURI
     * to GetScheme, thereby saving extra allocating and freeing. Returns true if
     * the schemes match (case ignored).

=cut

## SchemeIs(const char *scheme, PRBool *_retval)
PRBool
moz_dom_SchemeIs (uri, scheme)
	nsIURI *uri;
	const char * scheme;
    PREINIT:
	PRBool _retval;
    CODE:
	uri->SchemeIs(scheme, &_retval);
	RETVAL = _retval;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::URI::Clone

=for signature $retval = $uri->Clone()

     * Clones the current URI.  For some protocols, this is more than just an
     * optimization.  For example, under MacOS, the spec of a file URL does not
     * necessarily uniquely identify a file since two volumes could share the
     * same name.

=cut

## Clone(nsIURI **_retval)
nsIURI *
moz_dom_Clone (uri)
	nsIURI *uri;
    PREINIT:
	nsIURI * _retval;
    CODE:
	uri->Clone(&_retval);
	RETVAL = _retval;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::URI::Resolve

=for signature $retval = $uri->Resolve($relativepath)

     * This method resolves a relative string into an absolute URI string,
     * using this URI as the base. 
     *
     * NOTE: some implementations may have no concept of a relative URI.

=cut

## Resolve(const nsACString & relativePath, nsACString & _retval)
nsEmbedCString
moz_dom_Resolve (uri, relativePath)
	nsIURI *uri;
	nsEmbedCString relativePath;
    PREINIT:
	nsEmbedCString _retval;
    CODE:
	uri->Resolve(relativePath, _retval);
	RETVAL = _retval;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::URI::GetAsciiSpec

=for signature $asciispec = $uri->GetAsciiSpec()

     * The URI spec with an ASCII compatible encoding.  Host portion follows
     * the IDNA draft spec.  Other parts are URL-escaped per the rules of
     * RFC2396.  The result is strictly ASCII.

=cut

## GetAsciiSpec(nsACString & aAsciiSpec)
nsEmbedCString
moz_dom_GetAsciiSpec (uri)
	nsIURI *uri;
    PREINIT:
	nsEmbedCString aAsciiSpec;
    CODE:
	uri->GetAsciiSpec(aAsciiSpec);
	RETVAL = aAsciiSpec;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::URI::GetAsciiHost

=for signature $asciihost = $uri->GetAsciiHost()

     * The URI host with an ASCII compatible encoding.  Follows the IDNA
     * draft spec for converting internationalized domain names (UTF-8) to
     * ASCII for compatibility with existing internet infrasture.

=cut

## GetAsciiHost(nsACString & aAsciiHost)
nsEmbedCString
moz_dom_GetAsciiHost (uri)
	nsIURI *uri;
    PREINIT:
	nsEmbedCString aAsciiHost;
    CODE:
	uri->GetAsciiHost(aAsciiHost);
	RETVAL = aAsciiHost;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::URI::GetOriginCharset

=for signature $origincharset = $uri->GetOriginCharset()

     * The charset of the document from which this URI originated.  An empty
     * value implies UTF-8.
     *
     * If this value is something other than UTF-8 then the URI components
     * (e.g., spec, prePath, username, etc.) will all be fully URL-escaped.
     * Otherwise, the URI components may contain unescaped multibyte UTF-8
     * characters.

=cut

## GetOriginCharset(nsACString & aOriginCharset)
nsEmbedCString
moz_dom_GetOriginCharset (uri)
	nsIURI *uri;
    PREINIT:
	nsEmbedCString aOriginCharset;
    CODE:
	uri->GetOriginCharset(aOriginCharset);
	RETVAL = aOriginCharset;
    OUTPUT:
	RETVAL


# -----------------------------------------------------------------------------
# nsIDOMHTML*Element !
# -----------------------------------------------------------------------------


MODULE = Mozilla::DOM	PACKAGE = Mozilla::DOM::HTMLAnchorElement	PREFIX = moz_dom_

# /usr/include/mozilla/nsIDOMHTMLAnchorElement.h

=for object Mozilla::DOM::HTMLAnchorElement

Mozilla::DOM::HTMLAnchorElement is a wrapper around an instance of Mozilla's
nsIDOMHTMLAnchorElement interface. This class inherits from
L<HTMLElement|Mozilla::DOM::HTMLElement>.

 * The nsIDOMHTMLAnchorElement interface is the interface to a [X]HTML
 * a element.
 *
 * For more information on this interface please see
 * http://www.w3.org/TR/DOM-Level-2-HTML/
 *
 * @status FROZEN


=cut

=head1 CLASS METHODS

=head2 $iid = Mozilla::DOM::HTMLAnchorElement->B<GetIID>()

Pass this to QueryInterface.

=cut

## NS_DEFINE_STATIC_IID_ACCESSOR(NS_IDOMHTMLANCHORELEMENT_IID)
static nsIID
nsIDOMHTMLAnchorElement::GetIID()
    CODE:
	const nsIID &id = nsIDOMHTMLAnchorElement::GetIID();
	RETVAL = (nsIID) id;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLAnchorElement::GetAccessKey

=for signature $accesskey = $htmlanchorelement->GetAccessKey()



=cut

## GetAccessKey(nsAString & aAccessKey)
nsEmbedString
moz_dom_GetAccessKey (htmlanchorelement)
	nsIDOMHTMLAnchorElement *htmlanchorelement;
    PREINIT:
	nsEmbedString accesskey;
    CODE:
	htmlanchorelement->GetAccessKey(accesskey);
	RETVAL = accesskey;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLAnchorElement::SetAccessKey

=for signature $htmlanchorelement->SetAccessKey($accesskey)



=cut

## SetAccessKey(const nsAString & aAccessKey)
void
moz_dom_SetAccessKey (htmlanchorelement, accesskey)
	nsIDOMHTMLAnchorElement *htmlanchorelement;
	nsEmbedString accesskey;
    CODE:
	htmlanchorelement->SetAccessKey(accesskey);

=for apidoc Mozilla::DOM::HTMLAnchorElement::GetCharset

=for signature $charset = $htmlanchorelement->GetCharset()



=cut

## GetCharset(nsAString & aCharset)
nsEmbedString
moz_dom_GetCharset (htmlanchorelement)
	nsIDOMHTMLAnchorElement *htmlanchorelement;
    PREINIT:
	nsEmbedString charset;
    CODE:
	htmlanchorelement->GetCharset(charset);
	RETVAL = charset;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLAnchorElement::SetCharset

=for signature $htmlanchorelement->SetCharset($charset)



=cut

## SetCharset(const nsAString & aCharset)
void
moz_dom_SetCharset (htmlanchorelement, charset)
	nsIDOMHTMLAnchorElement *htmlanchorelement;
	nsEmbedString charset;
    CODE:
	htmlanchorelement->SetCharset(charset);

=for apidoc Mozilla::DOM::HTMLAnchorElement::GetCoords

=for signature $coords = $htmlanchorelement->GetCoords()



=cut

## GetCoords(nsAString & aCoords)
nsEmbedString
moz_dom_GetCoords (htmlanchorelement)
	nsIDOMHTMLAnchorElement *htmlanchorelement;
    PREINIT:
	nsEmbedString coords;
    CODE:
	htmlanchorelement->GetCoords(coords);
	RETVAL = coords;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLAnchorElement::SetCoords

=for signature $htmlanchorelement->SetCoords($coords)



=cut

## SetCoords(const nsAString & aCoords)
void
moz_dom_SetCoords (htmlanchorelement, coords)
	nsIDOMHTMLAnchorElement *htmlanchorelement;
	nsEmbedString coords;
    CODE:
	htmlanchorelement->SetCoords(coords);

=for apidoc Mozilla::DOM::HTMLAnchorElement::GetHref

=for signature $href = $htmlanchorelement->GetHref()



=cut

## GetHref(nsAString & aHref)
nsEmbedString
moz_dom_GetHref (htmlanchorelement)
	nsIDOMHTMLAnchorElement *htmlanchorelement;
    PREINIT:
	nsEmbedString href;
    CODE:
	htmlanchorelement->GetHref(href);
	RETVAL = href;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLAnchorElement::SetHref

=for signature $htmlanchorelement->SetHref($href)



=cut

## SetHref(const nsAString & aHref)
void
moz_dom_SetHref (htmlanchorelement, href)
	nsIDOMHTMLAnchorElement *htmlanchorelement;
	nsEmbedString href;
    CODE:
	htmlanchorelement->SetHref(href);

=for apidoc Mozilla::DOM::HTMLAnchorElement::GetHreflang

=for signature $hreflang = $htmlanchorelement->GetHreflang()



=cut

## GetHreflang(nsAString & aHreflang)
nsEmbedString
moz_dom_GetHreflang (htmlanchorelement)
	nsIDOMHTMLAnchorElement *htmlanchorelement;
    PREINIT:
	nsEmbedString hreflang;
    CODE:
	htmlanchorelement->GetHreflang(hreflang);
	RETVAL = hreflang;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLAnchorElement::SetHreflang

=for signature $htmlanchorelement->SetHreflang($hreflang)



=cut

## SetHreflang(const nsAString & aHreflang)
void
moz_dom_SetHreflang (htmlanchorelement, hreflang)
	nsIDOMHTMLAnchorElement *htmlanchorelement;
	nsEmbedString hreflang;
    CODE:
	htmlanchorelement->SetHreflang(hreflang);

=for apidoc Mozilla::DOM::HTMLAnchorElement::GetName

=for signature $name = $htmlanchorelement->GetName()



=cut

## GetName(nsAString & aName)
nsEmbedString
moz_dom_GetName (htmlanchorelement)
	nsIDOMHTMLAnchorElement *htmlanchorelement;
    PREINIT:
	nsEmbedString name;
    CODE:
	htmlanchorelement->GetName(name);
	RETVAL = name;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLAnchorElement::SetName

=for signature $htmlanchorelement->SetName($name)



=cut

## SetName(const nsAString & aName)
void
moz_dom_SetName (htmlanchorelement, name)
	nsIDOMHTMLAnchorElement *htmlanchorelement;
	nsEmbedString name;
    CODE:
	htmlanchorelement->SetName(name);

=for apidoc Mozilla::DOM::HTMLAnchorElement::GetRel

=for signature $rel = $htmlanchorelement->GetRel()



=cut

## GetRel(nsAString & aRel)
nsEmbedString
moz_dom_GetRel (htmlanchorelement)
	nsIDOMHTMLAnchorElement *htmlanchorelement;
    PREINIT:
	nsEmbedString rel;
    CODE:
	htmlanchorelement->GetRel(rel);
	RETVAL = rel;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLAnchorElement::SetRel

=for signature $htmlanchorelement->SetRel($rel)



=cut

## SetRel(const nsAString & aRel)
void
moz_dom_SetRel (htmlanchorelement, rel)
	nsIDOMHTMLAnchorElement *htmlanchorelement;
	nsEmbedString rel;
    CODE:
	htmlanchorelement->SetRel(rel);

=for apidoc Mozilla::DOM::HTMLAnchorElement::GetRev

=for signature $rev = $htmlanchorelement->GetRev()



=cut

## GetRev(nsAString & aRev)
nsEmbedString
moz_dom_GetRev (htmlanchorelement)
	nsIDOMHTMLAnchorElement *htmlanchorelement;
    PREINIT:
	nsEmbedString rev;
    CODE:
	htmlanchorelement->GetRev(rev);
	RETVAL = rev;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLAnchorElement::SetRev

=for signature $htmlanchorelement->SetRev($rev)



=cut

## SetRev(const nsAString & aRev)
void
moz_dom_SetRev (htmlanchorelement, rev)
	nsIDOMHTMLAnchorElement *htmlanchorelement;
	nsEmbedString rev;
    CODE:
	htmlanchorelement->SetRev(rev);

=for apidoc Mozilla::DOM::HTMLAnchorElement::GetShape

=for signature $shape = $htmlanchorelement->GetShape()



=cut

## GetShape(nsAString & aShape)
nsEmbedString
moz_dom_GetShape (htmlanchorelement)
	nsIDOMHTMLAnchorElement *htmlanchorelement;
    PREINIT:
	nsEmbedString shape;
    CODE:
	htmlanchorelement->GetShape(shape);
	RETVAL = shape;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLAnchorElement::SetShape

=for signature $htmlanchorelement->SetShape($shape)



=cut

## SetShape(const nsAString & aShape)
void
moz_dom_SetShape (htmlanchorelement, shape)
	nsIDOMHTMLAnchorElement *htmlanchorelement;
	nsEmbedString shape;
    CODE:
	htmlanchorelement->SetShape(shape);

=for apidoc Mozilla::DOM::HTMLAnchorElement::GetTabIndex

=for signature $tabindex = $htmlanchorelement->GetTabIndex()



=cut

## GetTabIndex(PRInt32 *aTabIndex)
PRInt32
moz_dom_GetTabIndex (htmlanchorelement)
	nsIDOMHTMLAnchorElement *htmlanchorelement;
    PREINIT:
	PRInt32 tabindex;
    CODE:
	htmlanchorelement->GetTabIndex(&tabindex);
	RETVAL = tabindex;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLAnchorElement::SetTabIndex

=for signature $htmlanchorelement->SetTabIndex($tabindex)



=cut

## SetTabIndex(PRInt32 aTabIndex)
void
moz_dom_SetTabIndex (htmlanchorelement, tabindex)
	nsIDOMHTMLAnchorElement *htmlanchorelement;
	PRInt32  tabindex;
    CODE:
	htmlanchorelement->SetTabIndex(tabindex);

=for apidoc Mozilla::DOM::HTMLAnchorElement::GetTarget

=for signature $target = $htmlanchorelement->GetTarget()



=cut

## GetTarget(nsAString & aTarget)
nsEmbedString
moz_dom_GetTarget (htmlanchorelement)
	nsIDOMHTMLAnchorElement *htmlanchorelement;
    PREINIT:
	nsEmbedString target;
    CODE:
	htmlanchorelement->GetTarget(target);
	RETVAL = target;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLAnchorElement::SetTarget

=for signature $htmlanchorelement->SetTarget($target)



=cut

## SetTarget(const nsAString & aTarget)
void
moz_dom_SetTarget (htmlanchorelement, target)
	nsIDOMHTMLAnchorElement *htmlanchorelement;
	nsEmbedString target;
    CODE:
	htmlanchorelement->SetTarget(target);

=for apidoc Mozilla::DOM::HTMLAnchorElement::GetType

=for signature $type = $htmlanchorelement->GetType()



=cut

## GetType(nsAString & aType)
nsEmbedString
moz_dom_GetType (htmlanchorelement)
	nsIDOMHTMLAnchorElement *htmlanchorelement;
    PREINIT:
	nsEmbedString type;
    CODE:
	htmlanchorelement->GetType(type);
	RETVAL = type;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLAnchorElement::SetType

=for signature $htmlanchorelement->SetType($type)



=cut

## SetType(const nsAString & aType)
void
moz_dom_SetType (htmlanchorelement, type)
	nsIDOMHTMLAnchorElement *htmlanchorelement;
	nsEmbedString type;
    CODE:
	htmlanchorelement->SetType(type);

=for apidoc Mozilla::DOM::HTMLAnchorElement::Blur

=for signature $htmlanchorelement->Blur()



=cut

## Blur(void)
void
moz_dom_Blur (htmlanchorelement)
	nsIDOMHTMLAnchorElement *htmlanchorelement;
    CODE:
	htmlanchorelement->Blur();

=for apidoc Mozilla::DOM::HTMLAnchorElement::Focus

=for signature $htmlanchorelement->Focus()



=cut

## Focus(void)
void
moz_dom_Focus (htmlanchorelement)
	nsIDOMHTMLAnchorElement *htmlanchorelement;
    CODE:
	htmlanchorelement->Focus();

# -----------------------------------------------------------------------------

MODULE = Mozilla::DOM	PACKAGE = Mozilla::DOM::HTMLAppletElement	PREFIX = moz_dom_

# /usr/include/mozilla/nsIDOMHTMLAppletElement.h

=for object Mozilla::DOM::HTMLAppletElement

Mozilla::DOM::HTMLAppletElement is a wrapper around an instance of Mozilla's
nsIDOMHTMLAppletElement interface. This class inherits from
L<HTMLElement|Mozilla::DOM::HTMLElement>.

 * The nsIDOMHTMLAppletElement interface is the interface to a [X]HTML
 * applet element.
 *
 * For more information on this interface please see
 * http://www.w3.org/TR/DOM-Level-2-HTML/
 *
 * @status FROZEN


=cut

=head1 CLASS METHODS

=head2 $iid = Mozilla::DOM::HTMLAppletElement->B<GetIID>()

Pass this to QueryInterface.

=cut

## NS_DEFINE_STATIC_IID_ACCESSOR(NS_IDOMHTMLAPPLETELEMENT_IID)
static nsIID
nsIDOMHTMLAppletElement::GetIID()
    CODE:
	const nsIID &id = nsIDOMHTMLAppletElement::GetIID();
	RETVAL = (nsIID) id;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLAppletElement::GetAlign

=for signature $align = $htmlappletelement->GetAlign()



=cut

## GetAlign(nsAString & aAlign)
nsEmbedString
moz_dom_GetAlign (htmlappletelement)
	nsIDOMHTMLAppletElement *htmlappletelement;
    PREINIT:
	nsEmbedString align;
    CODE:
	htmlappletelement->GetAlign(align);
	RETVAL = align;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLAppletElement::SetAlign

=for signature $htmlappletelement->SetAlign($align)



=cut

## SetAlign(const nsAString & aAlign)
void
moz_dom_SetAlign (htmlappletelement, align)
	nsIDOMHTMLAppletElement *htmlappletelement;
	nsEmbedString align;
    CODE:
	htmlappletelement->SetAlign(align);

=for apidoc Mozilla::DOM::HTMLAppletElement::GetAlt

=for signature $alt = $htmlappletelement->GetAlt()



=cut

## GetAlt(nsAString & aAlt)
nsEmbedString
moz_dom_GetAlt (htmlappletelement)
	nsIDOMHTMLAppletElement *htmlappletelement;
    PREINIT:
	nsEmbedString alt;
    CODE:
	htmlappletelement->GetAlt(alt);
	RETVAL = alt;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLAppletElement::SetAlt

=for signature $htmlappletelement->SetAlt($alt)



=cut

## SetAlt(const nsAString & aAlt)
void
moz_dom_SetAlt (htmlappletelement, alt)
	nsIDOMHTMLAppletElement *htmlappletelement;
	nsEmbedString alt;
    CODE:
	htmlappletelement->SetAlt(alt);

=for apidoc Mozilla::DOM::HTMLAppletElement::GetArchive

=for signature $archive = $htmlappletelement->GetArchive()



=cut

## GetArchive(nsAString & aArchive)
nsEmbedString
moz_dom_GetArchive (htmlappletelement)
	nsIDOMHTMLAppletElement *htmlappletelement;
    PREINIT:
	nsEmbedString archive;
    CODE:
	htmlappletelement->GetArchive(archive);
	RETVAL = archive;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLAppletElement::SetArchive

=for signature $htmlappletelement->SetArchive($archive)



=cut

## SetArchive(const nsAString & aArchive)
void
moz_dom_SetArchive (htmlappletelement, archive)
	nsIDOMHTMLAppletElement *htmlappletelement;
	nsEmbedString archive;
    CODE:
	htmlappletelement->SetArchive(archive);

=for apidoc Mozilla::DOM::HTMLAppletElement::GetCode

=for signature $code = $htmlappletelement->GetCode()



=cut

## GetCode(nsAString & aCode)
nsEmbedString
moz_dom_GetCode (htmlappletelement)
	nsIDOMHTMLAppletElement *htmlappletelement;
    PREINIT:
	nsEmbedString code;
    CODE:
	htmlappletelement->GetCode(code);
	RETVAL = code;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLAppletElement::SetCode

=for signature $htmlappletelement->SetCode($code)



=cut

## SetCode(const nsAString & aCode)
void
moz_dom_SetCode (htmlappletelement, code)
	nsIDOMHTMLAppletElement *htmlappletelement;
	nsEmbedString code;
    CODE:
	htmlappletelement->SetCode(code);

=for apidoc Mozilla::DOM::HTMLAppletElement::GetCodeBase

=for signature $codebase = $htmlappletelement->GetCodeBase()



=cut

## GetCodeBase(nsAString & aCodeBase)
nsEmbedString
moz_dom_GetCodeBase (htmlappletelement)
	nsIDOMHTMLAppletElement *htmlappletelement;
    PREINIT:
	nsEmbedString codebase;
    CODE:
	htmlappletelement->GetCodeBase(codebase);
	RETVAL = codebase;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLAppletElement::SetCodeBase

=for signature $htmlappletelement->SetCodeBase($codebase)



=cut

## SetCodeBase(const nsAString & aCodeBase)
void
moz_dom_SetCodeBase (htmlappletelement, codebase)
	nsIDOMHTMLAppletElement *htmlappletelement;
	nsEmbedString codebase;
    CODE:
	htmlappletelement->SetCodeBase(codebase);

=for apidoc Mozilla::DOM::HTMLAppletElement::GetHeight

=for signature $height = $htmlappletelement->GetHeight()



=cut

## GetHeight(nsAString & aHeight)
nsEmbedString
moz_dom_GetHeight (htmlappletelement)
	nsIDOMHTMLAppletElement *htmlappletelement;
    PREINIT:
	nsEmbedString height;
    CODE:
	htmlappletelement->GetHeight(height);
	RETVAL = height;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLAppletElement::SetHeight

=for signature $htmlappletelement->SetHeight($height)



=cut

## SetHeight(const nsAString & aHeight)
void
moz_dom_SetHeight (htmlappletelement, height)
	nsIDOMHTMLAppletElement *htmlappletelement;
	nsEmbedString height;
    CODE:
	htmlappletelement->SetHeight(height);

=for apidoc Mozilla::DOM::HTMLAppletElement::GetHspace

=for signature $hspace = $htmlappletelement->GetHspace()



=cut

## GetHspace(PRInt32 *aHspace)
PRInt32
moz_dom_GetHspace (htmlappletelement)
	nsIDOMHTMLAppletElement *htmlappletelement;
    PREINIT:
	PRInt32 hspace;
    CODE:
	htmlappletelement->GetHspace(&hspace);
	RETVAL = hspace;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLAppletElement::SetHspace

=for signature $htmlappletelement->SetHspace($hspace)



=cut

## SetHspace(PRInt32 aHspace)
void
moz_dom_SetHspace (htmlappletelement, hspace)
	nsIDOMHTMLAppletElement *htmlappletelement;
	PRInt32  hspace;
    CODE:
	htmlappletelement->SetHspace(hspace);

=for apidoc Mozilla::DOM::HTMLAppletElement::GetName

=for signature $name = $htmlappletelement->GetName()



=cut

## GetName(nsAString & aName)
nsEmbedString
moz_dom_GetName (htmlappletelement)
	nsIDOMHTMLAppletElement *htmlappletelement;
    PREINIT:
	nsEmbedString name;
    CODE:
	htmlappletelement->GetName(name);
	RETVAL = name;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLAppletElement::SetName

=for signature $htmlappletelement->SetName($name)



=cut

## SetName(const nsAString & aName)
void
moz_dom_SetName (htmlappletelement, name)
	nsIDOMHTMLAppletElement *htmlappletelement;
	nsEmbedString name;
    CODE:
	htmlappletelement->SetName(name);

=for apidoc Mozilla::DOM::HTMLAppletElement::GetObject

=for signature $object = $htmlappletelement->GetObject()



=cut

## GetObject(nsAString & aObject)
nsEmbedString
moz_dom_GetObject (htmlappletelement)
	nsIDOMHTMLAppletElement *htmlappletelement;
    PREINIT:
	nsEmbedString object;
    CODE:
	htmlappletelement->GetObject(object);
	RETVAL = object;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLAppletElement::SetObject

=for signature $htmlappletelement->SetObject($object)



=cut

## SetObject(const nsAString & aObject)
void
moz_dom_SetObject (htmlappletelement, object)
	nsIDOMHTMLAppletElement *htmlappletelement;
	nsEmbedString object;
    CODE:
	htmlappletelement->SetObject(object);

=for apidoc Mozilla::DOM::HTMLAppletElement::GetVspace

=for signature $vspace = $htmlappletelement->GetVspace()



=cut

## GetVspace(PRInt32 *aVspace)
PRInt32
moz_dom_GetVspace (htmlappletelement)
	nsIDOMHTMLAppletElement *htmlappletelement;
    PREINIT:
	PRInt32 vspace;
    CODE:
	htmlappletelement->GetVspace(&vspace);
	RETVAL = vspace;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLAppletElement::SetVspace

=for signature $htmlappletelement->SetVspace($vspace)



=cut

## SetVspace(PRInt32 aVspace)
void
moz_dom_SetVspace (htmlappletelement, vspace)
	nsIDOMHTMLAppletElement *htmlappletelement;
	PRInt32  vspace;
    CODE:
	htmlappletelement->SetVspace(vspace);

=for apidoc Mozilla::DOM::HTMLAppletElement::GetWidth

=for signature $width = $htmlappletelement->GetWidth()



=cut

## GetWidth(nsAString & aWidth)
nsEmbedString
moz_dom_GetWidth (htmlappletelement)
	nsIDOMHTMLAppletElement *htmlappletelement;
    PREINIT:
	nsEmbedString width;
    CODE:
	htmlappletelement->GetWidth(width);
	RETVAL = width;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLAppletElement::SetWidth

=for signature $htmlappletelement->SetWidth($width)



=cut

## SetWidth(const nsAString & aWidth)
void
moz_dom_SetWidth (htmlappletelement, width)
	nsIDOMHTMLAppletElement *htmlappletelement;
	nsEmbedString width;
    CODE:
	htmlappletelement->SetWidth(width);

# -----------------------------------------------------------------------------

MODULE = Mozilla::DOM	PACKAGE = Mozilla::DOM::HTMLAreaElement	PREFIX = moz_dom_

# /usr/include/mozilla/nsIDOMHTMLAreaElement.h

=for object Mozilla::DOM::HTMLAreaElement

Mozilla::DOM::HTMLAreaElement is a wrapper around an instance of Mozilla's
nsIDOMHTMLAreaElement interface. This class inherits from
L<HTMLElement|Mozilla::DOM::HTMLElement>.

 * The nsIDOMHTMLAreaElement interface is the interface to a [X]HTML
 * area element.
 *
 * For more information on this interface please see
 * http://www.w3.org/TR/DOM-Level-2-HTML/
 *
 * @status FROZEN


=cut

=head1 CLASS METHODS

=head2 $iid = Mozilla::DOM::HTMLAreaElement->B<GetIID>()

Pass this to QueryInterface.

=cut

## NS_DEFINE_STATIC_IID_ACCESSOR(NS_IDOMHTMLAREAELEMENT_IID)
static nsIID
nsIDOMHTMLAreaElement::GetIID()
    CODE:
	const nsIID &id = nsIDOMHTMLAreaElement::GetIID();
	RETVAL = (nsIID) id;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLAreaElement::GetAccessKey

=for signature $accesskey = $htmlareaelement->GetAccessKey()



=cut

## GetAccessKey(nsAString & aAccessKey)
nsEmbedString
moz_dom_GetAccessKey (htmlareaelement)
	nsIDOMHTMLAreaElement *htmlareaelement;
    PREINIT:
	nsEmbedString accesskey;
    CODE:
	htmlareaelement->GetAccessKey(accesskey);
	RETVAL = accesskey;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLAreaElement::SetAccessKey

=for signature $htmlareaelement->SetAccessKey($accesskey)



=cut

## SetAccessKey(const nsAString & aAccessKey)
void
moz_dom_SetAccessKey (htmlareaelement, accesskey)
	nsIDOMHTMLAreaElement *htmlareaelement;
	nsEmbedString accesskey;
    CODE:
	htmlareaelement->SetAccessKey(accesskey);

=for apidoc Mozilla::DOM::HTMLAreaElement::GetAlt

=for signature $alt = $htmlareaelement->GetAlt()



=cut

## GetAlt(nsAString & aAlt)
nsEmbedString
moz_dom_GetAlt (htmlareaelement)
	nsIDOMHTMLAreaElement *htmlareaelement;
    PREINIT:
	nsEmbedString alt;
    CODE:
	htmlareaelement->GetAlt(alt);
	RETVAL = alt;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLAreaElement::SetAlt

=for signature $htmlareaelement->SetAlt($alt)



=cut

## SetAlt(const nsAString & aAlt)
void
moz_dom_SetAlt (htmlareaelement, alt)
	nsIDOMHTMLAreaElement *htmlareaelement;
	nsEmbedString alt;
    CODE:
	htmlareaelement->SetAlt(alt);

=for apidoc Mozilla::DOM::HTMLAreaElement::GetCoords

=for signature $coords = $htmlareaelement->GetCoords()



=cut

## GetCoords(nsAString & aCoords)
nsEmbedString
moz_dom_GetCoords (htmlareaelement)
	nsIDOMHTMLAreaElement *htmlareaelement;
    PREINIT:
	nsEmbedString coords;
    CODE:
	htmlareaelement->GetCoords(coords);
	RETVAL = coords;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLAreaElement::SetCoords

=for signature $htmlareaelement->SetCoords($coords)



=cut

## SetCoords(const nsAString & aCoords)
void
moz_dom_SetCoords (htmlareaelement, coords)
	nsIDOMHTMLAreaElement *htmlareaelement;
	nsEmbedString coords;
    CODE:
	htmlareaelement->SetCoords(coords);

=for apidoc Mozilla::DOM::HTMLAreaElement::GetHref

=for signature $href = $htmlareaelement->GetHref()



=cut

## GetHref(nsAString & aHref)
nsEmbedString
moz_dom_GetHref (htmlareaelement)
	nsIDOMHTMLAreaElement *htmlareaelement;
    PREINIT:
	nsEmbedString href;
    CODE:
	htmlareaelement->GetHref(href);
	RETVAL = href;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLAreaElement::SetHref

=for signature $htmlareaelement->SetHref($href)



=cut

## SetHref(const nsAString & aHref)
void
moz_dom_SetHref (htmlareaelement, href)
	nsIDOMHTMLAreaElement *htmlareaelement;
	nsEmbedString href;
    CODE:
	htmlareaelement->SetHref(href);

=for apidoc Mozilla::DOM::HTMLAreaElement::GetNoHref

=for signature $bool = $htmlareaelement->GetNoHref()



=cut

## GetNoHref(PRBool *aNoHref)
PRBool
moz_dom_GetNoHref (htmlareaelement)
	nsIDOMHTMLAreaElement *htmlareaelement;
    PREINIT:
	PRBool nohref;
    CODE:
	htmlareaelement->GetNoHref(&nohref);
	RETVAL = nohref;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLAreaElement::SetNoHref

=for signature $htmlareaelement->SetNoHref($nohref)



=cut

## SetNoHref(PRBool aNoHref)
void
moz_dom_SetNoHref (htmlareaelement, nohref)
	nsIDOMHTMLAreaElement *htmlareaelement;
	PRBool  nohref;
    CODE:
	htmlareaelement->SetNoHref(nohref);

=for apidoc Mozilla::DOM::HTMLAreaElement::GetShape

=for signature $shape = $htmlareaelement->GetShape()



=cut

## GetShape(nsAString & aShape)
nsEmbedString
moz_dom_GetShape (htmlareaelement)
	nsIDOMHTMLAreaElement *htmlareaelement;
    PREINIT:
	nsEmbedString shape;
    CODE:
	htmlareaelement->GetShape(shape);
	RETVAL = shape;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLAreaElement::SetShape

=for signature $htmlareaelement->SetShape($shape)



=cut

## SetShape(const nsAString & aShape)
void
moz_dom_SetShape (htmlareaelement, shape)
	nsIDOMHTMLAreaElement *htmlareaelement;
	nsEmbedString shape;
    CODE:
	htmlareaelement->SetShape(shape);

=for apidoc Mozilla::DOM::HTMLAreaElement::GetTabIndex

=for signature $tabindex = $htmlareaelement->GetTabIndex()



=cut

## GetTabIndex(PRInt32 *aTabIndex)
PRInt32
moz_dom_GetTabIndex (htmlareaelement)
	nsIDOMHTMLAreaElement *htmlareaelement;
    PREINIT:
	PRInt32 tabindex;
    CODE:
	htmlareaelement->GetTabIndex(&tabindex);
	RETVAL = tabindex;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLAreaElement::SetTabIndex

=for signature $htmlareaelement->SetTabIndex($tabindex)



=cut

## SetTabIndex(PRInt32 aTabIndex)
void
moz_dom_SetTabIndex (htmlareaelement, tabindex)
	nsIDOMHTMLAreaElement *htmlareaelement;
	PRInt32  tabindex;
    CODE:
	htmlareaelement->SetTabIndex(tabindex);

=for apidoc Mozilla::DOM::HTMLAreaElement::GetTarget

=for signature $target = $htmlareaelement->GetTarget()



=cut

## GetTarget(nsAString & aTarget)
nsEmbedString
moz_dom_GetTarget (htmlareaelement)
	nsIDOMHTMLAreaElement *htmlareaelement;
    PREINIT:
	nsEmbedString target;
    CODE:
	htmlareaelement->GetTarget(target);
	RETVAL = target;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLAreaElement::SetTarget

=for signature $htmlareaelement->SetTarget($target)



=cut

## SetTarget(const nsAString & aTarget)
void
moz_dom_SetTarget (htmlareaelement, target)
	nsIDOMHTMLAreaElement *htmlareaelement;
	nsEmbedString target;
    CODE:
	htmlareaelement->SetTarget(target);

# -----------------------------------------------------------------------------

MODULE = Mozilla::DOM	PACKAGE = Mozilla::DOM::HTMLBRElement	PREFIX = moz_dom_

# /usr/include/mozilla/nsIDOMHTMLBRElement.h

=for object Mozilla::DOM::HTMLBRElement

Mozilla::DOM::HTMLBRElement is a wrapper around an instance of Mozilla's
nsIDOMHTMLBRElement interface. This class inherits from
L<HTMLElement|Mozilla::DOM::HTMLElement>.

 * The nsIDOMHTMLBRElement interface is the interface to a [X]HTML br
 * element.
 *
 * For more information on this interface please see
 * http://www.w3.org/TR/DOM-Level-2-HTML/
 *
 * @status FROZEN


=cut

=head1 CLASS METHODS

=head2 $iid = Mozilla::DOM::HTMLBRElement->B<GetIID>()

Pass this to QueryInterface.

=cut

## NS_DEFINE_STATIC_IID_ACCESSOR(NS_IDOMHTMLBRELEMENT_IID)
static nsIID
nsIDOMHTMLBRElement::GetIID()
    CODE:
	const nsIID &id = nsIDOMHTMLBRElement::GetIID();
	RETVAL = (nsIID) id;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLBRElement::GetClear

=for signature $clear = $htmlbrelement->GetClear()



=cut

## GetClear(nsAString & aClear)
nsEmbedString
moz_dom_GetClear (htmlbrelement)
	nsIDOMHTMLBRElement *htmlbrelement;
    PREINIT:
	nsEmbedString clear;
    CODE:
	htmlbrelement->GetClear(clear);
	RETVAL = clear;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLBRElement::SetClear

=for signature $htmlbrelement->SetClear($clear)



=cut

## SetClear(const nsAString & aClear)
void
moz_dom_SetClear (htmlbrelement, clear)
	nsIDOMHTMLBRElement *htmlbrelement;
	nsEmbedString clear;
    CODE:
	htmlbrelement->SetClear(clear);

# -----------------------------------------------------------------------------

MODULE = Mozilla::DOM	PACKAGE = Mozilla::DOM::HTMLBaseElement	PREFIX = moz_dom_

# /usr/include/mozilla/nsIDOMHTMLBaseElement.h

=for object Mozilla::DOM::HTMLBaseElement

Mozilla::DOM::HTMLBaseElement is a wrapper around an instance of Mozilla's
nsIDOMHTMLBaseElement interface. This class inherits from
L<HTMLElement|Mozilla::DOM::HTMLElement>.

 * The nsIDOMHTMLBaseElement interface is the interface to a [X]HTML
 * base element.
 *
 * For more information on this interface please see
 * http://www.w3.org/TR/DOM-Level-2-HTML/
 *
 * @status FROZEN


=cut

=head1 CLASS METHODS

=head2 $iid = Mozilla::DOM::HTMLBaseElement->B<GetIID>()

Pass this to QueryInterface.

=cut

## NS_DEFINE_STATIC_IID_ACCESSOR(NS_IDOMHTMLBASEELEMENT_IID)
static nsIID
nsIDOMHTMLBaseElement::GetIID()
    CODE:
	const nsIID &id = nsIDOMHTMLBaseElement::GetIID();
	RETVAL = (nsIID) id;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLBaseElement::GetHref

=for signature $href = $htmlbaseelement->GetHref()



=cut

## GetHref(nsAString & aHref)
nsEmbedString
moz_dom_GetHref (htmlbaseelement)
	nsIDOMHTMLBaseElement *htmlbaseelement;
    PREINIT:
	nsEmbedString href;
    CODE:
	htmlbaseelement->GetHref(href);
	RETVAL = href;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLBaseElement::SetHref

=for signature $htmlbaseelement->SetHref($href)



=cut

## SetHref(const nsAString & aHref)
void
moz_dom_SetHref (htmlbaseelement, href)
	nsIDOMHTMLBaseElement *htmlbaseelement;
	nsEmbedString href;
    CODE:
	htmlbaseelement->SetHref(href);

=for apidoc Mozilla::DOM::HTMLBaseElement::GetTarget

=for signature $target = $htmlbaseelement->GetTarget()



=cut

## GetTarget(nsAString & aTarget)
nsEmbedString
moz_dom_GetTarget (htmlbaseelement)
	nsIDOMHTMLBaseElement *htmlbaseelement;
    PREINIT:
	nsEmbedString target;
    CODE:
	htmlbaseelement->GetTarget(target);
	RETVAL = target;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLBaseElement::SetTarget

=for signature $htmlbaseelement->SetTarget($target)



=cut

## SetTarget(const nsAString & aTarget)
void
moz_dom_SetTarget (htmlbaseelement, target)
	nsIDOMHTMLBaseElement *htmlbaseelement;
	nsEmbedString target;
    CODE:
	htmlbaseelement->SetTarget(target);

# -----------------------------------------------------------------------------

MODULE = Mozilla::DOM	PACKAGE = Mozilla::DOM::HTMLBaseFontElement	PREFIX = moz_dom_

# /usr/include/mozilla/nsIDOMHTMLBaseFontElement.h

=for object Mozilla::DOM::HTMLBaseFontElement

Mozilla::DOM::HTMLBaseFontElement is a wrapper around an instance of Mozilla's
nsIDOMHTMLBaseFontElement interface. This class inherits from
L<HTMLElement|Mozilla::DOM::HTMLElement>.

 * The nsIDOMHTMLBaseFontElement interface is the interface to a
 * [X]HTML basefont element.
 *
 * For more information on this interface please see
 * http://www.w3.org/TR/DOM-Level-2-HTML/
 *
 * @status FROZEN


=cut

=head1 CLASS METHODS

=head2 $iid = Mozilla::DOM::HTMLBaseFontElement->B<GetIID>()

Pass this to QueryInterface.

=cut

## NS_DEFINE_STATIC_IID_ACCESSOR(NS_IDOMHTMLBASEFONTELEMENT_IID)
static nsIID
nsIDOMHTMLBaseFontElement::GetIID()
    CODE:
	const nsIID &id = nsIDOMHTMLBaseFontElement::GetIID();
	RETVAL = (nsIID) id;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLBaseFontElement::GetColor

=for signature $color = $htmlbasefontelement->GetColor()



=cut

## GetColor(nsAString & aColor)
nsEmbedString
moz_dom_GetColor (htmlbasefontelement)
	nsIDOMHTMLBaseFontElement *htmlbasefontelement;
    PREINIT:
	nsEmbedString color;
    CODE:
	htmlbasefontelement->GetColor(color);
	RETVAL = color;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLBaseFontElement::SetColor

=for signature $htmlbasefontelement->SetColor($color)



=cut

## SetColor(const nsAString & aColor)
void
moz_dom_SetColor (htmlbasefontelement, color)
	nsIDOMHTMLBaseFontElement *htmlbasefontelement;
	nsEmbedString color;
    CODE:
	htmlbasefontelement->SetColor(color);

=for apidoc Mozilla::DOM::HTMLBaseFontElement::GetFace

=for signature $face = $htmlbasefontelement->GetFace()



=cut

## GetFace(nsAString & aFace)
nsEmbedString
moz_dom_GetFace (htmlbasefontelement)
	nsIDOMHTMLBaseFontElement *htmlbasefontelement;
    PREINIT:
	nsEmbedString face;
    CODE:
	htmlbasefontelement->GetFace(face);
	RETVAL = face;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLBaseFontElement::SetFace

=for signature $htmlbasefontelement->SetFace($face)



=cut

## SetFace(const nsAString & aFace)
void
moz_dom_SetFace (htmlbasefontelement, face)
	nsIDOMHTMLBaseFontElement *htmlbasefontelement;
	nsEmbedString face;
    CODE:
	htmlbasefontelement->SetFace(face);

=for apidoc Mozilla::DOM::HTMLBaseFontElement::GetSize

=for signature $size = $htmlbasefontelement->GetSize()



=cut

## GetSize(PRInt32 *aSize)
PRInt32
moz_dom_GetSize (htmlbasefontelement)
	nsIDOMHTMLBaseFontElement *htmlbasefontelement;
    PREINIT:
	PRInt32 size;
    CODE:
	htmlbasefontelement->GetSize(&size);
	RETVAL = size;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLBaseFontElement::SetSize

=for signature $htmlbasefontelement->SetSize($size)



=cut

## SetSize(PRInt32 aSize)
void
moz_dom_SetSize (htmlbasefontelement, size)
	nsIDOMHTMLBaseFontElement *htmlbasefontelement;
	PRInt32  size;
    CODE:
	htmlbasefontelement->SetSize(size);

# -----------------------------------------------------------------------------

MODULE = Mozilla::DOM	PACKAGE = Mozilla::DOM::HTMLBodyElement	PREFIX = moz_dom_

# /usr/include/mozilla/nsIDOMHTMLBodyElement.h

=for object Mozilla::DOM::HTMLBodyElement

Mozilla::DOM::HTMLBodyElement is a wrapper around an instance of Mozilla's
nsIDOMHTMLBodyElement interface. This class inherits from
L<HTMLElement|Mozilla::DOM::HTMLElement>.

 * The nsIDOMHTMLBodyElement interface is the interface to a [X]HTML
 * body element.
 *
 * For more information on this interface please see
 * http://www.w3.org/TR/DOM-Level-2-HTML/
 *
 * @status FROZEN


=cut

=head1 CLASS METHODS

=head2 $iid = Mozilla::DOM::HTMLBodyElement->B<GetIID>()

Pass this to QueryInterface.

=cut

## NS_DEFINE_STATIC_IID_ACCESSOR(NS_IDOMHTMLBODYELEMENT_IID)
static nsIID
nsIDOMHTMLBodyElement::GetIID()
    CODE:
	const nsIID &id = nsIDOMHTMLBodyElement::GetIID();
	RETVAL = (nsIID) id;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLBodyElement::GetALink

=for signature $alink = $htmlbodyelement->GetALink()



=cut

## GetALink(nsAString & aALink)
nsEmbedString
moz_dom_GetALink (htmlbodyelement)
	nsIDOMHTMLBodyElement *htmlbodyelement;
    PREINIT:
	nsEmbedString alink;
    CODE:
	htmlbodyelement->GetALink(alink);
	RETVAL = alink;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLBodyElement::SetALink

=for signature $htmlbodyelement->SetALink($alink)



=cut

## SetALink(const nsAString & aALink)
void
moz_dom_SetALink (htmlbodyelement, alink)
	nsIDOMHTMLBodyElement *htmlbodyelement;
	nsEmbedString alink;
    CODE:
	htmlbodyelement->SetALink(alink);

=for apidoc Mozilla::DOM::HTMLBodyElement::GetBackground

=for signature $background = $htmlbodyelement->GetBackground()



=cut

## GetBackground(nsAString & aBackground)
nsEmbedString
moz_dom_GetBackground (htmlbodyelement)
	nsIDOMHTMLBodyElement *htmlbodyelement;
    PREINIT:
	nsEmbedString background;
    CODE:
	htmlbodyelement->GetBackground(background);
	RETVAL = background;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLBodyElement::SetBackground

=for signature $htmlbodyelement->SetBackground($background)



=cut

## SetBackground(const nsAString & aBackground)
void
moz_dom_SetBackground (htmlbodyelement, background)
	nsIDOMHTMLBodyElement *htmlbodyelement;
	nsEmbedString background;
    CODE:
	htmlbodyelement->SetBackground(background);

=for apidoc Mozilla::DOM::HTMLBodyElement::GetBgColor

=for signature $bgcolor = $htmlbodyelement->GetBgColor()



=cut

## GetBgColor(nsAString & aBgColor)
nsEmbedString
moz_dom_GetBgColor (htmlbodyelement)
	nsIDOMHTMLBodyElement *htmlbodyelement;
    PREINIT:
	nsEmbedString bgcolor;
    CODE:
	htmlbodyelement->GetBgColor(bgcolor);
	RETVAL = bgcolor;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLBodyElement::SetBgColor

=for signature $htmlbodyelement->SetBgColor($bgcolor)



=cut

## SetBgColor(const nsAString & aBgColor)
void
moz_dom_SetBgColor (htmlbodyelement, bgcolor)
	nsIDOMHTMLBodyElement *htmlbodyelement;
	nsEmbedString bgcolor;
    CODE:
	htmlbodyelement->SetBgColor(bgcolor);

=for apidoc Mozilla::DOM::HTMLBodyElement::GetLink

=for signature $link = $htmlbodyelement->GetLink()



=cut

## GetLink(nsAString & aLink)
nsEmbedString
moz_dom_GetLink (htmlbodyelement)
	nsIDOMHTMLBodyElement *htmlbodyelement;
    PREINIT:
	nsEmbedString link;
    CODE:
	htmlbodyelement->GetLink(link);
	RETVAL = link;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLBodyElement::SetLink

=for signature $htmlbodyelement->SetLink($link)



=cut

## SetLink(const nsAString & aLink)
void
moz_dom_SetLink (htmlbodyelement, link)
	nsIDOMHTMLBodyElement *htmlbodyelement;
	nsEmbedString link;
    CODE:
	htmlbodyelement->SetLink(link);

=for apidoc Mozilla::DOM::HTMLBodyElement::GetText

=for signature $text = $htmlbodyelement->GetText()



=cut

## GetText(nsAString & aText)
nsEmbedString
moz_dom_GetText (htmlbodyelement)
	nsIDOMHTMLBodyElement *htmlbodyelement;
    PREINIT:
	nsEmbedString text;
    CODE:
	htmlbodyelement->GetText(text);
	RETVAL = text;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLBodyElement::SetText

=for signature $htmlbodyelement->SetText($text)



=cut

## SetText(const nsAString & aText)
void
moz_dom_SetText (htmlbodyelement, text)
	nsIDOMHTMLBodyElement *htmlbodyelement;
	nsEmbedString text;
    CODE:
	htmlbodyelement->SetText(text);

=for apidoc Mozilla::DOM::HTMLBodyElement::GetVLink

=for signature $vlink = $htmlbodyelement->GetVLink()



=cut

## GetVLink(nsAString & aVLink)
nsEmbedString
moz_dom_GetVLink (htmlbodyelement)
	nsIDOMHTMLBodyElement *htmlbodyelement;
    PREINIT:
	nsEmbedString vlink;
    CODE:
	htmlbodyelement->GetVLink(vlink);
	RETVAL = vlink;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLBodyElement::SetVLink

=for signature $htmlbodyelement->SetVLink($vlink)



=cut

## SetVLink(const nsAString & aVLink)
void
moz_dom_SetVLink (htmlbodyelement, vlink)
	nsIDOMHTMLBodyElement *htmlbodyelement;
	nsEmbedString vlink;
    CODE:
	htmlbodyelement->SetVLink(vlink);

# -----------------------------------------------------------------------------

MODULE = Mozilla::DOM	PACKAGE = Mozilla::DOM::HTMLButtonElement	PREFIX = moz_dom_

# /usr/include/mozilla/nsIDOMHTMLButtonElement.h

=for object Mozilla::DOM::HTMLButtonElement

Mozilla::DOM::HTMLButtonElement is a wrapper around an instance of Mozilla's
nsIDOMHTMLButtonElement interface. This class inherits from
L<HTMLElement|Mozilla::DOM::HTMLElement>.

 * The nsIDOMHTMLButtonElement interface is the interface to a [X]HTML
 * button element.
 *
 * For more information on this interface please see
 * http://www.w3.org/TR/DOM-Level-2-HTML/
 *
 * @status FROZEN


=cut

=head1 CLASS METHODS

=head2 $iid = Mozilla::DOM::HTMLButtonElement->B<GetIID>()

Pass this to QueryInterface.

=cut

## NS_DEFINE_STATIC_IID_ACCESSOR(NS_IDOMHTMLBUTTONELEMENT_IID)
static nsIID
nsIDOMHTMLButtonElement::GetIID()
    CODE:
	const nsIID &id = nsIDOMHTMLButtonElement::GetIID();
	RETVAL = (nsIID) id;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLButtonElement::GetForm

=for signature $form = $htmlbuttonelement->GetForm()



=cut

## GetForm(nsIDOMHTMLFormElement * *aForm)
nsIDOMHTMLFormElement *
moz_dom_GetForm (htmlbuttonelement)
	nsIDOMHTMLButtonElement *htmlbuttonelement;
    PREINIT:
	nsIDOMHTMLFormElement * form;
    CODE:
	htmlbuttonelement->GetForm(&form);
	RETVAL = form;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLButtonElement::GetAccessKey

=for signature $accesskey = $htmlbuttonelement->GetAccessKey()



=cut

## GetAccessKey(nsAString & aAccessKey)
nsEmbedString
moz_dom_GetAccessKey (htmlbuttonelement)
	nsIDOMHTMLButtonElement *htmlbuttonelement;
    PREINIT:
	nsEmbedString accesskey;
    CODE:
	htmlbuttonelement->GetAccessKey(accesskey);
	RETVAL = accesskey;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLButtonElement::SetAccessKey

=for signature $htmlbuttonelement->SetAccessKey($accesskey)



=cut

## SetAccessKey(const nsAString & aAccessKey)
void
moz_dom_SetAccessKey (htmlbuttonelement, accesskey)
	nsIDOMHTMLButtonElement *htmlbuttonelement;
	nsEmbedString accesskey;
    CODE:
	htmlbuttonelement->SetAccessKey(accesskey);

=for apidoc Mozilla::DOM::HTMLButtonElement::GetDisabled

=for signature $bool = $htmlbuttonelement->GetDisabled()



=cut

## GetDisabled(PRBool *aDisabled)
PRBool
moz_dom_GetDisabled (htmlbuttonelement)
	nsIDOMHTMLButtonElement *htmlbuttonelement;
    PREINIT:
	PRBool disabled;
    CODE:
	htmlbuttonelement->GetDisabled(&disabled);
	RETVAL = disabled;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLButtonElement::SetDisabled

=for signature $htmlbuttonelement->SetDisabled($disabled)



=cut

## SetDisabled(PRBool aDisabled)
void
moz_dom_SetDisabled (htmlbuttonelement, disabled)
	nsIDOMHTMLButtonElement *htmlbuttonelement;
	PRBool  disabled;
    CODE:
	htmlbuttonelement->SetDisabled(disabled);

=for apidoc Mozilla::DOM::HTMLButtonElement::GetName

=for signature $name = $htmlbuttonelement->GetName()



=cut

## GetName(nsAString & aName)
nsEmbedString
moz_dom_GetName (htmlbuttonelement)
	nsIDOMHTMLButtonElement *htmlbuttonelement;
    PREINIT:
	nsEmbedString name;
    CODE:
	htmlbuttonelement->GetName(name);
	RETVAL = name;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLButtonElement::SetName

=for signature $htmlbuttonelement->SetName($name)



=cut

## SetName(const nsAString & aName)
void
moz_dom_SetName (htmlbuttonelement, name)
	nsIDOMHTMLButtonElement *htmlbuttonelement;
	nsEmbedString name;
    CODE:
	htmlbuttonelement->SetName(name);

=for apidoc Mozilla::DOM::HTMLButtonElement::GetTabIndex

=for signature $tabindex = $htmlbuttonelement->GetTabIndex()



=cut

## GetTabIndex(PRInt32 *aTabIndex)
PRInt32
moz_dom_GetTabIndex (htmlbuttonelement)
	nsIDOMHTMLButtonElement *htmlbuttonelement;
    PREINIT:
	PRInt32 tabindex;
    CODE:
	htmlbuttonelement->GetTabIndex(&tabindex);
	RETVAL = tabindex;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLButtonElement::SetTabIndex

=for signature $htmlbuttonelement->SetTabIndex($tabindex)



=cut

## SetTabIndex(PRInt32 aTabIndex)
void
moz_dom_SetTabIndex (htmlbuttonelement, tabindex)
	nsIDOMHTMLButtonElement *htmlbuttonelement;
	PRInt32  tabindex;
    CODE:
	htmlbuttonelement->SetTabIndex(tabindex);

=for apidoc Mozilla::DOM::HTMLButtonElement::GetType

=for signature $type = $htmlbuttonelement->GetType()



=cut

## GetType(nsAString & aType)
nsEmbedString
moz_dom_GetType (htmlbuttonelement)
	nsIDOMHTMLButtonElement *htmlbuttonelement;
    PREINIT:
	nsEmbedString type;
    CODE:
	htmlbuttonelement->GetType(type);
	RETVAL = type;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLButtonElement::GetValue

=for signature $value = $htmlbuttonelement->GetValue()



=cut

## GetValue(nsAString & aValue)
nsEmbedString
moz_dom_GetValue (htmlbuttonelement)
	nsIDOMHTMLButtonElement *htmlbuttonelement;
    PREINIT:
	nsEmbedString value;
    CODE:
	htmlbuttonelement->GetValue(value);
	RETVAL = value;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLButtonElement::SetValue

=for signature $htmlbuttonelement->SetValue($value)



=cut

## SetValue(const nsAString & aValue)
void
moz_dom_SetValue (htmlbuttonelement, value)
	nsIDOMHTMLButtonElement *htmlbuttonelement;
	nsEmbedString value;
    CODE:
	htmlbuttonelement->SetValue(value);

# -----------------------------------------------------------------------------

MODULE = Mozilla::DOM	PACKAGE = Mozilla::DOM::HTMLCollection	PREFIX = moz_dom_

# /usr/include/mozilla/nsIDOMHTMLCollection.h

=for object Mozilla::DOM::HTMLCollection

Mozilla::DOM::HTMLCollection is a wrapper around an instance of Mozilla's
nsIDOMHTMLCollection interface. This class inherits from
L<nsISupports|Mozilla::DOM::nsISupports>.

 * The nsIDOMHTMLCollection interface is an interface to a collection
 * of [X]HTML elements.
 *
 * For more information on this interface please see
 * http://www.w3.org/TR/DOM-Level-2-HTML/
 *
 * @status FROZEN


=cut

=head1 CLASS METHODS

=head2 $iid = Mozilla::DOM::HTMLCollection->B<GetIID>()

Pass this to QueryInterface.

=cut

## NS_DEFINE_STATIC_IID_ACCESSOR(NS_IDOMHTMLCOLLECTION_IID)
static nsIID
nsIDOMHTMLCollection::GetIID()
    CODE:
	const nsIID &id = nsIDOMHTMLCollection::GetIID();
	RETVAL = (nsIID) id;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLCollection::GetLength

=for signature $length = $htmlcollection->GetLength()



=cut

## GetLength(PRUint32 *aLength)
PRUint32
moz_dom_GetLength (htmlcollection)
	nsIDOMHTMLCollection *htmlcollection;
    PREINIT:
	PRUint32 length;
    CODE:
	htmlcollection->GetLength(&length);
	RETVAL = length;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLCollection::Item

=for signature $retval = $htmlcollection->Item($index)



=cut

## Item(PRUint32 index, nsIDOMNode **_retval)
nsIDOMNode *
moz_dom_Item (htmlcollection, index)
	nsIDOMHTMLCollection *htmlcollection;
	PRUint32  index;
    PREINIT:
	nsIDOMNode * retval;
    CODE:
	htmlcollection->Item(index, &retval);
	RETVAL = retval;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLCollection::NamedItem

=for signature $retval = $htmlcollection->NamedItem($name)



=cut

## NamedItem(const nsAString & name, nsIDOMNode **_retval)
nsIDOMNode *
moz_dom_NamedItem (htmlcollection, name)
	nsIDOMHTMLCollection *htmlcollection;
	nsEmbedString name;
    PREINIT:
	nsIDOMNode * retval;
    CODE:
	htmlcollection->NamedItem(name, &retval);
	RETVAL = retval;
    OUTPUT:
	RETVAL

# -----------------------------------------------------------------------------

MODULE = Mozilla::DOM	PACKAGE = Mozilla::DOM::HTMLDListElement	PREFIX = moz_dom_

# /usr/include/mozilla/nsIDOMHTMLDListElement.h

=for object Mozilla::DOM::HTMLDListElement

Mozilla::DOM::HTMLDListElement is a wrapper around an instance of Mozilla's
nsIDOMHTMLDListElement interface. This class inherits from
L<HTMLElement|Mozilla::DOM::HTMLElement>.

 * The nsIDOMHTMLDListElement interface is the interface to a [X]HTML
 * dl element.
 *
 * For more information on this interface please see
 * http://www.w3.org/TR/DOM-Level-2-HTML/
 *
 * @status FROZEN


=cut

=head1 CLASS METHODS

=head2 $iid = Mozilla::DOM::HTMLDListElement->B<GetIID>()

Pass this to QueryInterface.

=cut

## NS_DEFINE_STATIC_IID_ACCESSOR(NS_IDOMHTMLDLISTELEMENT_IID)
static nsIID
nsIDOMHTMLDListElement::GetIID()
    CODE:
	const nsIID &id = nsIDOMHTMLDListElement::GetIID();
	RETVAL = (nsIID) id;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLDListElement::GetCompact

=for signature $bool = $htmldlistelement->GetCompact()



=cut

## GetCompact(PRBool *aCompact)
PRBool
moz_dom_GetCompact (htmldlistelement)
	nsIDOMHTMLDListElement *htmldlistelement;
    PREINIT:
	PRBool compact;
    CODE:
	htmldlistelement->GetCompact(&compact);
	RETVAL = compact;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLDListElement::SetCompact

=for signature $htmldlistelement->SetCompact($compact)



=cut

## SetCompact(PRBool aCompact)
void
moz_dom_SetCompact (htmldlistelement, compact)
	nsIDOMHTMLDListElement *htmldlistelement;
	PRBool  compact;
    CODE:
	htmldlistelement->SetCompact(compact);

# -----------------------------------------------------------------------------

MODULE = Mozilla::DOM	PACKAGE = Mozilla::DOM::HTMLDirectoryElement	PREFIX = moz_dom_

# /usr/include/mozilla/nsIDOMHTMLDirectoryElement.h

=for object Mozilla::DOM::HTMLDirectoryElement

Mozilla::DOM::HTMLDirectoryElement is a wrapper around an instance of Mozilla's
nsIDOMHTMLDirectoryElement interface. This class inherits from
L<HTMLElement|Mozilla::DOM::HTMLElement>.

 * The nsIDOMHTMLDirectoryElement interface is the interface to a
 * [X]HTML dir element.
 *
 * For more information on this interface please see
 * http://www.w3.org/TR/DOM-Level-2-HTML/
 *
 * @status FROZEN


=cut

=head1 CLASS METHODS

=head2 $iid = Mozilla::DOM::HTMLDirectoryElement->B<GetIID>()

Pass this to QueryInterface.

=cut

## NS_DEFINE_STATIC_IID_ACCESSOR(NS_IDOMHTMLDIRECTORYELEMENT_IID)
static nsIID
nsIDOMHTMLDirectoryElement::GetIID()
    CODE:
	const nsIID &id = nsIDOMHTMLDirectoryElement::GetIID();
	RETVAL = (nsIID) id;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLDirectoryElement::GetCompact

=for signature $bool = $htmldirectoryelement->GetCompact()



=cut

## GetCompact(PRBool *aCompact)
PRBool
moz_dom_GetCompact (htmldirectoryelement)
	nsIDOMHTMLDirectoryElement *htmldirectoryelement;
    PREINIT:
	PRBool compact;
    CODE:
	htmldirectoryelement->GetCompact(&compact);
	RETVAL = compact;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLDirectoryElement::SetCompact

=for signature $htmldirectoryelement->SetCompact($compact)



=cut

## SetCompact(PRBool aCompact)
void
moz_dom_SetCompact (htmldirectoryelement, compact)
	nsIDOMHTMLDirectoryElement *htmldirectoryelement;
	PRBool  compact;
    CODE:
	htmldirectoryelement->SetCompact(compact);

# -----------------------------------------------------------------------------

MODULE = Mozilla::DOM	PACKAGE = Mozilla::DOM::HTMLDivElement	PREFIX = moz_dom_

# /usr/include/mozilla/nsIDOMHTMLDivElement.h

=for object Mozilla::DOM::HTMLDivElement

Mozilla::DOM::HTMLDivElement is a wrapper around an instance of Mozilla's
nsIDOMHTMLDivElement interface. This class inherits from
L<HTMLElement|Mozilla::DOM::HTMLElement>.

 * The nsIDOMHTMLDivElement interface is the interface to a [X]HTML
 * div element.
 *
 * For more information on this interface please see
 * http://www.w3.org/TR/DOM-Level-2-HTML/
 *
 * @status FROZEN


=cut

=head1 CLASS METHODS

=head2 $iid = Mozilla::DOM::HTMLDivElement->B<GetIID>()

Pass this to QueryInterface.

=cut

## NS_DEFINE_STATIC_IID_ACCESSOR(NS_IDOMHTMLDIVELEMENT_IID)
static nsIID
nsIDOMHTMLDivElement::GetIID()
    CODE:
	const nsIID &id = nsIDOMHTMLDivElement::GetIID();
	RETVAL = (nsIID) id;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLDivElement::GetAlign

=for signature $align = $htmldivelement->GetAlign()



=cut

## GetAlign(nsAString & aAlign)
nsEmbedString
moz_dom_GetAlign (htmldivelement)
	nsIDOMHTMLDivElement *htmldivelement;
    PREINIT:
	nsEmbedString align;
    CODE:
	htmldivelement->GetAlign(align);
	RETVAL = align;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLDivElement::SetAlign

=for signature $htmldivelement->SetAlign($align)



=cut

## SetAlign(const nsAString & aAlign)
void
moz_dom_SetAlign (htmldivelement, align)
	nsIDOMHTMLDivElement *htmldivelement;
	nsEmbedString align;
    CODE:
	htmldivelement->SetAlign(align);

# -----------------------------------------------------------------------------

MODULE = Mozilla::DOM	PACKAGE = Mozilla::DOM::HTMLElement	PREFIX = moz_dom_

# /usr/include/mozilla/nsIDOMHTMLElement.h

=for object Mozilla::DOM::HTMLElement

Mozilla::DOM::HTMLElement is a wrapper around an instance of Mozilla's
nsIDOMHTMLElement interface. This class inherits from
L<Element|Mozilla::DOM::Element>.

 * The nsIDOMHTMLElement interface is the primary [X]HTML element
 * interface. It represents a single [X]HTML element in the document
 * tree.
 *
 * For more information on this interface please see
 * http://www.w3.org/TR/DOM-Level-2-HTML/
 *
 * @status FROZEN


=cut

=head1 CLASS METHODS

=head2 $iid = Mozilla::DOM::HTMLElement->B<GetIID>()

Pass this to QueryInterface.

=cut

## NS_DEFINE_STATIC_IID_ACCESSOR(NS_IDOMHTMLELEMENT_IID)
static nsIID
nsIDOMHTMLElement::GetIID()
    CODE:
	const nsIID &id = nsIDOMHTMLElement::GetIID();
	RETVAL = (nsIID) id;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLElement::GetId

=for signature $id = $htmlelement->GetId()



=cut

## GetId(nsAString & aId)
nsEmbedString
moz_dom_GetId (htmlelement)
	nsIDOMHTMLElement *htmlelement;
    PREINIT:
	nsEmbedString id;
    CODE:
	htmlelement->GetId(id);
	RETVAL = id;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLElement::SetId

=for signature $htmlelement->SetId($id)



=cut

## SetId(const nsAString & aId)
void
moz_dom_SetId (htmlelement, id)
	nsIDOMHTMLElement *htmlelement;
	nsEmbedString id;
    CODE:
	htmlelement->SetId(id);

=for apidoc Mozilla::DOM::HTMLElement::GetTitle

=for signature $title = $htmlelement->GetTitle()



=cut

## GetTitle(nsAString & aTitle)
nsEmbedString
moz_dom_GetTitle (htmlelement)
	nsIDOMHTMLElement *htmlelement;
    PREINIT:
	nsEmbedString title;
    CODE:
	htmlelement->GetTitle(title);
	RETVAL = title;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLElement::SetTitle

=for signature $htmlelement->SetTitle($title)



=cut

## SetTitle(const nsAString & aTitle)
void
moz_dom_SetTitle (htmlelement, title)
	nsIDOMHTMLElement *htmlelement;
	nsEmbedString title;
    CODE:
	htmlelement->SetTitle(title);

=for apidoc Mozilla::DOM::HTMLElement::GetLang

=for signature $lang = $htmlelement->GetLang()



=cut

## GetLang(nsAString & aLang)
nsEmbedString
moz_dom_GetLang (htmlelement)
	nsIDOMHTMLElement *htmlelement;
    PREINIT:
	nsEmbedString lang;
    CODE:
	htmlelement->GetLang(lang);
	RETVAL = lang;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLElement::SetLang

=for signature $htmlelement->SetLang($lang)



=cut

## SetLang(const nsAString & aLang)
void
moz_dom_SetLang (htmlelement, lang)
	nsIDOMHTMLElement *htmlelement;
	nsEmbedString lang;
    CODE:
	htmlelement->SetLang(lang);

=for apidoc Mozilla::DOM::HTMLElement::GetDir

=for signature $dir = $htmlelement->GetDir()



=cut

## GetDir(nsAString & aDir)
nsEmbedString
moz_dom_GetDir (htmlelement)
	nsIDOMHTMLElement *htmlelement;
    PREINIT:
	nsEmbedString dir;
    CODE:
	htmlelement->GetDir(dir);
	RETVAL = dir;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLElement::SetDir

=for signature $htmlelement->SetDir($dir)



=cut

## SetDir(const nsAString & aDir)
void
moz_dom_SetDir (htmlelement, dir)
	nsIDOMHTMLElement *htmlelement;
	nsEmbedString dir;
    CODE:
	htmlelement->SetDir(dir);

=for apidoc Mozilla::DOM::HTMLElement::GetClassName

=for signature $classname = $htmlelement->GetClassName()



=cut

## GetClassName(nsAString & aClassName)
nsEmbedString
moz_dom_GetClassName (htmlelement)
	nsIDOMHTMLElement *htmlelement;
    PREINIT:
	nsEmbedString classname;
    CODE:
	htmlelement->GetClassName(classname);
	RETVAL = classname;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLElement::SetClassName

=for signature $htmlelement->SetClassName($classname)



=cut

## SetClassName(const nsAString & aClassName)
void
moz_dom_SetClassName (htmlelement, classname)
	nsIDOMHTMLElement *htmlelement;
	nsEmbedString classname;
    CODE:
	htmlelement->SetClassName(classname);

# -----------------------------------------------------------------------------

MODULE = Mozilla::DOM	PACKAGE = Mozilla::DOM::HTMLEmbedElement	PREFIX = moz_dom_

# /usr/include/mozilla/nsIDOMHTMLEmbedElement.h

=for object Mozilla::DOM::HTMLEmbedElement

Mozilla::DOM::HTMLEmbedElement is a wrapper around an instance of Mozilla's
nsIDOMHTMLEmbedElement interface. This class inherits from
L<HTMLElement|Mozilla::DOM::HTMLElement>.

 * The nsIDOMHTMLEmbedElement interface is the interface to a [X]HTML
 * embed element.
 *
 * Note that this is not a W3C standard interface, it is Mozilla
 * proprietary.
 *
 * @status FROZEN


=cut

=head1 CLASS METHODS

=head2 $iid = Mozilla::DOM::HTMLEmbedElement->B<GetIID>()

Pass this to QueryInterface.

=cut

## NS_DEFINE_STATIC_IID_ACCESSOR(NS_IDOMHTMLEMBEDELEMENT_IID)
static nsIID
nsIDOMHTMLEmbedElement::GetIID()
    CODE:
	const nsIID &id = nsIDOMHTMLEmbedElement::GetIID();
	RETVAL = (nsIID) id;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLEmbedElement::GetAlign

=for signature $align = $htmlembedelement->GetAlign()



=cut

## GetAlign(nsAString & aAlign)
nsEmbedString
moz_dom_GetAlign (htmlembedelement)
	nsIDOMHTMLEmbedElement *htmlembedelement;
    PREINIT:
	nsEmbedString align;
    CODE:
	htmlembedelement->GetAlign(align);
	RETVAL = align;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLEmbedElement::SetAlign

=for signature $htmlembedelement->SetAlign($align)



=cut

## SetAlign(const nsAString & aAlign)
void
moz_dom_SetAlign (htmlembedelement, align)
	nsIDOMHTMLEmbedElement *htmlembedelement;
	nsEmbedString align;
    CODE:
	htmlembedelement->SetAlign(align);

=for apidoc Mozilla::DOM::HTMLEmbedElement::GetHeight

=for signature $height = $htmlembedelement->GetHeight()



=cut

## GetHeight(nsAString & aHeight)
nsEmbedString
moz_dom_GetHeight (htmlembedelement)
	nsIDOMHTMLEmbedElement *htmlembedelement;
    PREINIT:
	nsEmbedString height;
    CODE:
	htmlembedelement->GetHeight(height);
	RETVAL = height;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLEmbedElement::SetHeight

=for signature $htmlembedelement->SetHeight($height)



=cut

## SetHeight(const nsAString & aHeight)
void
moz_dom_SetHeight (htmlembedelement, height)
	nsIDOMHTMLEmbedElement *htmlembedelement;
	nsEmbedString height;
    CODE:
	htmlembedelement->SetHeight(height);

=for apidoc Mozilla::DOM::HTMLEmbedElement::GetName

=for signature $name = $htmlembedelement->GetName()



=cut

## GetName(nsAString & aName)
nsEmbedString
moz_dom_GetName (htmlembedelement)
	nsIDOMHTMLEmbedElement *htmlembedelement;
    PREINIT:
	nsEmbedString name;
    CODE:
	htmlembedelement->GetName(name);
	RETVAL = name;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLEmbedElement::SetName

=for signature $htmlembedelement->SetName($name)



=cut

## SetName(const nsAString & aName)
void
moz_dom_SetName (htmlembedelement, name)
	nsIDOMHTMLEmbedElement *htmlembedelement;
	nsEmbedString name;
    CODE:
	htmlembedelement->SetName(name);

=for apidoc Mozilla::DOM::HTMLEmbedElement::GetSrc

=for signature $src = $htmlembedelement->GetSrc()



=cut

## GetSrc(nsAString & aSrc)
nsEmbedString
moz_dom_GetSrc (htmlembedelement)
	nsIDOMHTMLEmbedElement *htmlembedelement;
    PREINIT:
	nsEmbedString src;
    CODE:
	htmlembedelement->GetSrc(src);
	RETVAL = src;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLEmbedElement::SetSrc

=for signature $htmlembedelement->SetSrc($src)



=cut

## SetSrc(const nsAString & aSrc)
void
moz_dom_SetSrc (htmlembedelement, src)
	nsIDOMHTMLEmbedElement *htmlembedelement;
	nsEmbedString src;
    CODE:
	htmlembedelement->SetSrc(src);

=for apidoc Mozilla::DOM::HTMLEmbedElement::GetType

=for signature $type = $htmlembedelement->GetType()



=cut

## GetType(nsAString & aType)
nsEmbedString
moz_dom_GetType (htmlembedelement)
	nsIDOMHTMLEmbedElement *htmlembedelement;
    PREINIT:
	nsEmbedString type;
    CODE:
	htmlembedelement->GetType(type);
	RETVAL = type;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLEmbedElement::SetType

=for signature $htmlembedelement->SetType($type)



=cut

## SetType(const nsAString & aType)
void
moz_dom_SetType (htmlembedelement, type)
	nsIDOMHTMLEmbedElement *htmlembedelement;
	nsEmbedString type;
    CODE:
	htmlembedelement->SetType(type);

=for apidoc Mozilla::DOM::HTMLEmbedElement::GetWidth

=for signature $width = $htmlembedelement->GetWidth()



=cut

## GetWidth(nsAString & aWidth)
nsEmbedString
moz_dom_GetWidth (htmlembedelement)
	nsIDOMHTMLEmbedElement *htmlembedelement;
    PREINIT:
	nsEmbedString width;
    CODE:
	htmlembedelement->GetWidth(width);
	RETVAL = width;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLEmbedElement::SetWidth

=for signature $htmlembedelement->SetWidth($width)



=cut

## SetWidth(const nsAString & aWidth)
void
moz_dom_SetWidth (htmlembedelement, width)
	nsIDOMHTMLEmbedElement *htmlembedelement;
	nsEmbedString width;
    CODE:
	htmlembedelement->SetWidth(width);

# -----------------------------------------------------------------------------

MODULE = Mozilla::DOM	PACKAGE = Mozilla::DOM::HTMLFieldSetElement	PREFIX = moz_dom_

# /usr/include/mozilla/nsIDOMHTMLFieldSetElement.h

=for object Mozilla::DOM::HTMLFieldSetElement

Mozilla::DOM::HTMLFieldSetElement is a wrapper around an instance of Mozilla's
nsIDOMHTMLFieldSetElement interface. This class inherits from
L<HTMLElement|Mozilla::DOM::HTMLElement>.

 * The nsIDOMHTMLFieldSetElement interface is the interface to a
 * [X]HTML fieldset element.
 *
 * For more information on this interface please see
 * http://www.w3.org/TR/DOM-Level-2-HTML/
 *
 * @status FROZEN


=cut

=head1 CLASS METHODS

=head2 $iid = Mozilla::DOM::HTMLFieldSetElement->B<GetIID>()

Pass this to QueryInterface.

=cut

## NS_DEFINE_STATIC_IID_ACCESSOR(NS_IDOMHTMLFIELDSETELEMENT_IID)
static nsIID
nsIDOMHTMLFieldSetElement::GetIID()
    CODE:
	const nsIID &id = nsIDOMHTMLFieldSetElement::GetIID();
	RETVAL = (nsIID) id;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLFieldSetElement::GetForm

=for signature $form = $htmlfieldsetelement->GetForm()



=cut

## GetForm(nsIDOMHTMLFormElement * *aForm)
nsIDOMHTMLFormElement *
moz_dom_GetForm (htmlfieldsetelement)
	nsIDOMHTMLFieldSetElement *htmlfieldsetelement;
    PREINIT:
	nsIDOMHTMLFormElement * form;
    CODE:
	htmlfieldsetelement->GetForm(&form);
	RETVAL = form;
    OUTPUT:
	RETVAL

# -----------------------------------------------------------------------------

MODULE = Mozilla::DOM	PACKAGE = Mozilla::DOM::HTMLFontElement	PREFIX = moz_dom_

# /usr/include/mozilla/nsIDOMHTMLFontElement.h

=for object Mozilla::DOM::HTMLFontElement

Mozilla::DOM::HTMLFontElement is a wrapper around an instance of Mozilla's
nsIDOMHTMLFontElement interface. This class inherits from
L<HTMLElement|Mozilla::DOM::HTMLElement>.

 * The nsIDOMHTMLFontElement interface is the interface to a [X]HTML
 * font element.
 *
 * For more information on this interface please see
 * http://www.w3.org/TR/DOM-Level-2-HTML/
 *
 * @status FROZEN


=cut

=head1 CLASS METHODS

=head2 $iid = Mozilla::DOM::HTMLFontElement->B<GetIID>()

Pass this to QueryInterface.

=cut

## NS_DEFINE_STATIC_IID_ACCESSOR(NS_IDOMHTMLFONTELEMENT_IID)
static nsIID
nsIDOMHTMLFontElement::GetIID()
    CODE:
	const nsIID &id = nsIDOMHTMLFontElement::GetIID();
	RETVAL = (nsIID) id;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLFontElement::GetColor

=for signature $color = $htmlfontelement->GetColor()



=cut

## GetColor(nsAString & aColor)
nsEmbedString
moz_dom_GetColor (htmlfontelement)
	nsIDOMHTMLFontElement *htmlfontelement;
    PREINIT:
	nsEmbedString color;
    CODE:
	htmlfontelement->GetColor(color);
	RETVAL = color;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLFontElement::SetColor

=for signature $htmlfontelement->SetColor($color)



=cut

## SetColor(const nsAString & aColor)
void
moz_dom_SetColor (htmlfontelement, color)
	nsIDOMHTMLFontElement *htmlfontelement;
	nsEmbedString color;
    CODE:
	htmlfontelement->SetColor(color);

=for apidoc Mozilla::DOM::HTMLFontElement::GetFace

=for signature $face = $htmlfontelement->GetFace()



=cut

## GetFace(nsAString & aFace)
nsEmbedString
moz_dom_GetFace (htmlfontelement)
	nsIDOMHTMLFontElement *htmlfontelement;
    PREINIT:
	nsEmbedString face;
    CODE:
	htmlfontelement->GetFace(face);
	RETVAL = face;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLFontElement::SetFace

=for signature $htmlfontelement->SetFace($face)



=cut

## SetFace(const nsAString & aFace)
void
moz_dom_SetFace (htmlfontelement, face)
	nsIDOMHTMLFontElement *htmlfontelement;
	nsEmbedString face;
    CODE:
	htmlfontelement->SetFace(face);

=for apidoc Mozilla::DOM::HTMLFontElement::GetSize

=for signature $size = $htmlfontelement->GetSize()



=cut

## GetSize(nsAString & aSize)
nsEmbedString
moz_dom_GetSize (htmlfontelement)
	nsIDOMHTMLFontElement *htmlfontelement;
    PREINIT:
	nsEmbedString size;
    CODE:
	htmlfontelement->GetSize(size);
	RETVAL = size;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLFontElement::SetSize

=for signature $htmlfontelement->SetSize($size)



=cut

## SetSize(const nsAString & aSize)
void
moz_dom_SetSize (htmlfontelement, size)
	nsIDOMHTMLFontElement *htmlfontelement;
	nsEmbedString size;
    CODE:
	htmlfontelement->SetSize(size);

# -----------------------------------------------------------------------------

MODULE = Mozilla::DOM	PACKAGE = Mozilla::DOM::HTMLFormElement	PREFIX = moz_dom_

# /usr/include/mozilla/nsIDOMHTMLFormElement.h

=for object Mozilla::DOM::HTMLFormElement

Mozilla::DOM::HTMLFormElement is a wrapper around an instance of Mozilla's
nsIDOMHTMLFormElement interface. This class inherits from
L<HTMLElement|Mozilla::DOM::HTMLElement>.

 * The nsIDOMHTMLFormElement interface is the interface to a [X]HTML
 * form element.
 *
 * For more information on this interface please see
 * http://www.w3.org/TR/DOM-Level-2-HTML/
 *
 * @status FROZEN


=cut

=head1 CLASS METHODS

=head2 $iid = Mozilla::DOM::HTMLFormElement->B<GetIID>()

Pass this to QueryInterface.

=cut

## NS_DEFINE_STATIC_IID_ACCESSOR(NS_IDOMHTMLFORMELEMENT_IID)
static nsIID
nsIDOMHTMLFormElement::GetIID()
    CODE:
	const nsIID &id = nsIDOMHTMLFormElement::GetIID();
	RETVAL = (nsIID) id;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLFormElement::GetElements

=for signature $elements = $htmlformelement->GetElements()



=cut

## GetElements(nsIDOMHTMLCollection * *aElements)
nsIDOMHTMLCollection *
moz_dom_GetElements (htmlformelement)
	nsIDOMHTMLFormElement *htmlformelement;
    PREINIT:
	nsIDOMHTMLCollection * elements;
    CODE:
	htmlformelement->GetElements(&elements);
	RETVAL = elements;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLFormElement::GetLength

=for signature $length = $htmlformelement->GetLength()



=cut

## GetLength(PRInt32 *aLength)
PRInt32
moz_dom_GetLength (htmlformelement)
	nsIDOMHTMLFormElement *htmlformelement;
    PREINIT:
	PRInt32 length;
    CODE:
	htmlformelement->GetLength(&length);
	RETVAL = length;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLFormElement::GetName

=for signature $name = $htmlformelement->GetName()



=cut

## GetName(nsAString & aName)
nsEmbedString
moz_dom_GetName (htmlformelement)
	nsIDOMHTMLFormElement *htmlformelement;
    PREINIT:
	nsEmbedString name;
    CODE:
	htmlformelement->GetName(name);
	RETVAL = name;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLFormElement::SetName

=for signature $htmlformelement->SetName($name)



=cut

## SetName(const nsAString & aName)
void
moz_dom_SetName (htmlformelement, name)
	nsIDOMHTMLFormElement *htmlformelement;
	nsEmbedString name;
    CODE:
	htmlformelement->SetName(name);

=for apidoc Mozilla::DOM::HTMLFormElement::GetAcceptCharset

=for signature $acceptcharset = $htmlformelement->GetAcceptCharset()



=cut

## GetAcceptCharset(nsAString & aAcceptCharset)
nsEmbedString
moz_dom_GetAcceptCharset (htmlformelement)
	nsIDOMHTMLFormElement *htmlformelement;
    PREINIT:
	nsEmbedString acceptcharset;
    CODE:
	htmlformelement->GetAcceptCharset(acceptcharset);
	RETVAL = acceptcharset;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLFormElement::SetAcceptCharset

=for signature $htmlformelement->SetAcceptCharset($acceptcharset)



=cut

## SetAcceptCharset(const nsAString & aAcceptCharset)
void
moz_dom_SetAcceptCharset (htmlformelement, acceptcharset)
	nsIDOMHTMLFormElement *htmlformelement;
	nsEmbedString acceptcharset;
    CODE:
	htmlformelement->SetAcceptCharset(acceptcharset);

=for apidoc Mozilla::DOM::HTMLFormElement::GetAction

=for signature $action = $htmlformelement->GetAction()



=cut

## GetAction(nsAString & aAction)
nsEmbedString
moz_dom_GetAction (htmlformelement)
	nsIDOMHTMLFormElement *htmlformelement;
    PREINIT:
	nsEmbedString action;
    CODE:
	htmlformelement->GetAction(action);
	RETVAL = action;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLFormElement::SetAction

=for signature $htmlformelement->SetAction($action)



=cut

## SetAction(const nsAString & aAction)
void
moz_dom_SetAction (htmlformelement, action)
	nsIDOMHTMLFormElement *htmlformelement;
	nsEmbedString action;
    CODE:
	htmlformelement->SetAction(action);

=for apidoc Mozilla::DOM::HTMLFormElement::GetEnctype

=for signature $enctype = $htmlformelement->GetEnctype()



=cut

## GetEnctype(nsAString & aEnctype)
nsEmbedString
moz_dom_GetEnctype (htmlformelement)
	nsIDOMHTMLFormElement *htmlformelement;
    PREINIT:
	nsEmbedString enctype;
    CODE:
	htmlformelement->GetEnctype(enctype);
	RETVAL = enctype;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLFormElement::SetEnctype

=for signature $htmlformelement->SetEnctype($enctype)



=cut

## SetEnctype(const nsAString & aEnctype)
void
moz_dom_SetEnctype (htmlformelement, enctype)
	nsIDOMHTMLFormElement *htmlformelement;
	nsEmbedString enctype;
    CODE:
	htmlformelement->SetEnctype(enctype);

=for apidoc Mozilla::DOM::HTMLFormElement::GetMethod

=for signature $method = $htmlformelement->GetMethod()



=cut

## GetMethod(nsAString & aMethod)
nsEmbedString
moz_dom_GetMethod (htmlformelement)
	nsIDOMHTMLFormElement *htmlformelement;
    PREINIT:
	nsEmbedString method;
    CODE:
	htmlformelement->GetMethod(method);
	RETVAL = method;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLFormElement::SetMethod

=for signature $htmlformelement->SetMethod($method)



=cut

## SetMethod(const nsAString & aMethod)
void
moz_dom_SetMethod (htmlformelement, method)
	nsIDOMHTMLFormElement *htmlformelement;
	nsEmbedString method;
    CODE:
	htmlformelement->SetMethod(method);

=for apidoc Mozilla::DOM::HTMLFormElement::GetTarget

=for signature $target = $htmlformelement->GetTarget()



=cut

## GetTarget(nsAString & aTarget)
nsEmbedString
moz_dom_GetTarget (htmlformelement)
	nsIDOMHTMLFormElement *htmlformelement;
    PREINIT:
	nsEmbedString target;
    CODE:
	htmlformelement->GetTarget(target);
	RETVAL = target;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLFormElement::SetTarget

=for signature $htmlformelement->SetTarget($target)



=cut

## SetTarget(const nsAString & aTarget)
void
moz_dom_SetTarget (htmlformelement, target)
	nsIDOMHTMLFormElement *htmlformelement;
	nsEmbedString target;
    CODE:
	htmlformelement->SetTarget(target);

=for apidoc Mozilla::DOM::HTMLFormElement::Submit

=for signature $htmlformelement->Submit()



=cut

## Submit(void)
void
moz_dom_Submit (htmlformelement)
	nsIDOMHTMLFormElement *htmlformelement;
    CODE:
	htmlformelement->Submit();

=for apidoc Mozilla::DOM::HTMLFormElement::Reset

=for signature $htmlformelement->Reset()



=cut

## Reset(void)
void
moz_dom_Reset (htmlformelement)
	nsIDOMHTMLFormElement *htmlformelement;
    CODE:
	htmlformelement->Reset();

# -----------------------------------------------------------------------------

MODULE = Mozilla::DOM	PACKAGE = Mozilla::DOM::HTMLFrameElement	PREFIX = moz_dom_

# /usr/include/mozilla/nsIDOMHTMLFrameElement.h

=for object Mozilla::DOM::HTMLFrameElement

Mozilla::DOM::HTMLFrameElement is a wrapper around an instance of Mozilla's
nsIDOMHTMLFrameElement interface. This class inherits from
L<HTMLElement|Mozilla::DOM::HTMLElement>.

 * The nsIDOMHTMLFrameElement interface is the interface to a [X]HTML
 * frame element.
 *
 * For more information on this interface please see
 * http://www.w3.org/TR/DOM-Level-2-HTML/
 *
 * @status FROZEN


=cut

=head1 CLASS METHODS

=head2 $iid = Mozilla::DOM::HTMLFrameElement->B<GetIID>()

Pass this to QueryInterface.

=cut

## NS_DEFINE_STATIC_IID_ACCESSOR(NS_IDOMHTMLFRAMEELEMENT_IID)
static nsIID
nsIDOMHTMLFrameElement::GetIID()
    CODE:
	const nsIID &id = nsIDOMHTMLFrameElement::GetIID();
	RETVAL = (nsIID) id;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLFrameElement::GetFrameBorder

=for signature $frameborder = $htmlframeelement->GetFrameBorder()



=cut

## GetFrameBorder(nsAString & aFrameBorder)
nsEmbedString
moz_dom_GetFrameBorder (htmlframeelement)
	nsIDOMHTMLFrameElement *htmlframeelement;
    PREINIT:
	nsEmbedString frameborder;
    CODE:
	htmlframeelement->GetFrameBorder(frameborder);
	RETVAL = frameborder;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLFrameElement::SetFrameBorder

=for signature $htmlframeelement->SetFrameBorder($frameborder)



=cut

## SetFrameBorder(const nsAString & aFrameBorder)
void
moz_dom_SetFrameBorder (htmlframeelement, frameborder)
	nsIDOMHTMLFrameElement *htmlframeelement;
	nsEmbedString frameborder;
    CODE:
	htmlframeelement->SetFrameBorder(frameborder);

=for apidoc Mozilla::DOM::HTMLFrameElement::GetLongDesc

=for signature $longdesc = $htmlframeelement->GetLongDesc()



=cut

## GetLongDesc(nsAString & aLongDesc)
nsEmbedString
moz_dom_GetLongDesc (htmlframeelement)
	nsIDOMHTMLFrameElement *htmlframeelement;
    PREINIT:
	nsEmbedString longdesc;
    CODE:
	htmlframeelement->GetLongDesc(longdesc);
	RETVAL = longdesc;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLFrameElement::SetLongDesc

=for signature $htmlframeelement->SetLongDesc($longdesc)



=cut

## SetLongDesc(const nsAString & aLongDesc)
void
moz_dom_SetLongDesc (htmlframeelement, longdesc)
	nsIDOMHTMLFrameElement *htmlframeelement;
	nsEmbedString longdesc;
    CODE:
	htmlframeelement->SetLongDesc(longdesc);

=for apidoc Mozilla::DOM::HTMLFrameElement::GetMarginHeight

=for signature $marginheight = $htmlframeelement->GetMarginHeight()



=cut

## GetMarginHeight(nsAString & aMarginHeight)
nsEmbedString
moz_dom_GetMarginHeight (htmlframeelement)
	nsIDOMHTMLFrameElement *htmlframeelement;
    PREINIT:
	nsEmbedString marginheight;
    CODE:
	htmlframeelement->GetMarginHeight(marginheight);
	RETVAL = marginheight;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLFrameElement::SetMarginHeight

=for signature $htmlframeelement->SetMarginHeight($marginheight)



=cut

## SetMarginHeight(const nsAString & aMarginHeight)
void
moz_dom_SetMarginHeight (htmlframeelement, marginheight)
	nsIDOMHTMLFrameElement *htmlframeelement;
	nsEmbedString marginheight;
    CODE:
	htmlframeelement->SetMarginHeight(marginheight);

=for apidoc Mozilla::DOM::HTMLFrameElement::GetMarginWidth

=for signature $marginwidth = $htmlframeelement->GetMarginWidth()



=cut

## GetMarginWidth(nsAString & aMarginWidth)
nsEmbedString
moz_dom_GetMarginWidth (htmlframeelement)
	nsIDOMHTMLFrameElement *htmlframeelement;
    PREINIT:
	nsEmbedString marginwidth;
    CODE:
	htmlframeelement->GetMarginWidth(marginwidth);
	RETVAL = marginwidth;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLFrameElement::SetMarginWidth

=for signature $htmlframeelement->SetMarginWidth($marginwidth)



=cut

## SetMarginWidth(const nsAString & aMarginWidth)
void
moz_dom_SetMarginWidth (htmlframeelement, marginwidth)
	nsIDOMHTMLFrameElement *htmlframeelement;
	nsEmbedString marginwidth;
    CODE:
	htmlframeelement->SetMarginWidth(marginwidth);

=for apidoc Mozilla::DOM::HTMLFrameElement::GetName

=for signature $name = $htmlframeelement->GetName()



=cut

## GetName(nsAString & aName)
nsEmbedString
moz_dom_GetName (htmlframeelement)
	nsIDOMHTMLFrameElement *htmlframeelement;
    PREINIT:
	nsEmbedString name;
    CODE:
	htmlframeelement->GetName(name);
	RETVAL = name;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLFrameElement::SetName

=for signature $htmlframeelement->SetName($name)



=cut

## SetName(const nsAString & aName)
void
moz_dom_SetName (htmlframeelement, name)
	nsIDOMHTMLFrameElement *htmlframeelement;
	nsEmbedString name;
    CODE:
	htmlframeelement->SetName(name);

=for apidoc Mozilla::DOM::HTMLFrameElement::GetNoResize

=for signature $bool = $htmlframeelement->GetNoResize()



=cut

## GetNoResize(PRBool *aNoResize)
PRBool
moz_dom_GetNoResize (htmlframeelement)
	nsIDOMHTMLFrameElement *htmlframeelement;
    PREINIT:
	PRBool noresize;
    CODE:
	htmlframeelement->GetNoResize(&noresize);
	RETVAL = noresize;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLFrameElement::SetNoResize

=for signature $htmlframeelement->SetNoResize($noresize)



=cut

## SetNoResize(PRBool aNoResize)
void
moz_dom_SetNoResize (htmlframeelement, noresize)
	nsIDOMHTMLFrameElement *htmlframeelement;
	PRBool  noresize;
    CODE:
	htmlframeelement->SetNoResize(noresize);

=for apidoc Mozilla::DOM::HTMLFrameElement::GetScrolling

=for signature $scrolling = $htmlframeelement->GetScrolling()



=cut

## GetScrolling(nsAString & aScrolling)
nsEmbedString
moz_dom_GetScrolling (htmlframeelement)
	nsIDOMHTMLFrameElement *htmlframeelement;
    PREINIT:
	nsEmbedString scrolling;
    CODE:
	htmlframeelement->GetScrolling(scrolling);
	RETVAL = scrolling;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLFrameElement::SetScrolling

=for signature $htmlframeelement->SetScrolling($scrolling)



=cut

## SetScrolling(const nsAString & aScrolling)
void
moz_dom_SetScrolling (htmlframeelement, scrolling)
	nsIDOMHTMLFrameElement *htmlframeelement;
	nsEmbedString scrolling;
    CODE:
	htmlframeelement->SetScrolling(scrolling);

=for apidoc Mozilla::DOM::HTMLFrameElement::GetSrc

=for signature $src = $htmlframeelement->GetSrc()



=cut

## GetSrc(nsAString & aSrc)
nsEmbedString
moz_dom_GetSrc (htmlframeelement)
	nsIDOMHTMLFrameElement *htmlframeelement;
    PREINIT:
	nsEmbedString src;
    CODE:
	htmlframeelement->GetSrc(src);
	RETVAL = src;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLFrameElement::SetSrc

=for signature $htmlframeelement->SetSrc($src)



=cut

## SetSrc(const nsAString & aSrc)
void
moz_dom_SetSrc (htmlframeelement, src)
	nsIDOMHTMLFrameElement *htmlframeelement;
	nsEmbedString src;
    CODE:
	htmlframeelement->SetSrc(src);

=for apidoc Mozilla::DOM::HTMLFrameElement::GetContentDocument

=for signature $contentdocument = $htmlframeelement->GetContentDocument()



=cut

## GetContentDocument(nsIDOMDocument * *aContentDocument)
nsIDOMDocument *
moz_dom_GetContentDocument (htmlframeelement)
	nsIDOMHTMLFrameElement *htmlframeelement;
    PREINIT:
	nsIDOMDocument * contentdocument;
    CODE:
	htmlframeelement->GetContentDocument(&contentdocument);
	RETVAL = contentdocument;
    OUTPUT:
	RETVAL

# -----------------------------------------------------------------------------

MODULE = Mozilla::DOM	PACKAGE = Mozilla::DOM::HTMLFrameSetElement	PREFIX = moz_dom_

# /usr/include/mozilla/nsIDOMHTMLFrameSetElement.h

=for object Mozilla::DOM::HTMLFrameSetElement

Mozilla::DOM::HTMLFrameSetElement is a wrapper around an instance of Mozilla's
nsIDOMHTMLFrameSetElement interface. This class inherits from
L<HTMLElement|Mozilla::DOM::HTMLElement>.

 * The nsIDOMHTMLFrameSetElement interface is the interface to a
 * [X]HTML frameset element.
 *
 * For more information on this interface please see
 * http://www.w3.org/TR/DOM-Level-2-HTML/
 *
 * @status FROZEN


=cut

=head1 CLASS METHODS

=head2 $iid = Mozilla::DOM::HTMLFrameSetElement->B<GetIID>()

Pass this to QueryInterface.

=cut

## NS_DEFINE_STATIC_IID_ACCESSOR(NS_IDOMHTMLFRAMESETELEMENT_IID)
static nsIID
nsIDOMHTMLFrameSetElement::GetIID()
    CODE:
	const nsIID &id = nsIDOMHTMLFrameSetElement::GetIID();
	RETVAL = (nsIID) id;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLFrameSetElement::GetCols

=for signature $cols = $htmlframesetelement->GetCols()



=cut

## GetCols(nsAString & aCols)
nsEmbedString
moz_dom_GetCols (htmlframesetelement)
	nsIDOMHTMLFrameSetElement *htmlframesetelement;
    PREINIT:
	nsEmbedString cols;
    CODE:
	htmlframesetelement->GetCols(cols);
	RETVAL = cols;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLFrameSetElement::SetCols

=for signature $htmlframesetelement->SetCols($cols)



=cut

## SetCols(const nsAString & aCols)
void
moz_dom_SetCols (htmlframesetelement, cols)
	nsIDOMHTMLFrameSetElement *htmlframesetelement;
	nsEmbedString cols;
    CODE:
	htmlframesetelement->SetCols(cols);

=for apidoc Mozilla::DOM::HTMLFrameSetElement::GetRows

=for signature $rows = $htmlframesetelement->GetRows()



=cut

## GetRows(nsAString & aRows)
nsEmbedString
moz_dom_GetRows (htmlframesetelement)
	nsIDOMHTMLFrameSetElement *htmlframesetelement;
    PREINIT:
	nsEmbedString rows;
    CODE:
	htmlframesetelement->GetRows(rows);
	RETVAL = rows;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLFrameSetElement::SetRows

=for signature $htmlframesetelement->SetRows($rows)



=cut

## SetRows(const nsAString & aRows)
void
moz_dom_SetRows (htmlframesetelement, rows)
	nsIDOMHTMLFrameSetElement *htmlframesetelement;
	nsEmbedString rows;
    CODE:
	htmlframesetelement->SetRows(rows);

# -----------------------------------------------------------------------------

MODULE = Mozilla::DOM	PACKAGE = Mozilla::DOM::HTMLHRElement	PREFIX = moz_dom_

# /usr/include/mozilla/nsIDOMHTMLHRElement.h

=for object Mozilla::DOM::HTMLHRElement

Mozilla::DOM::HTMLHRElement is a wrapper around an instance of Mozilla's
nsIDOMHTMLHRElement interface. This class inherits from
L<HTMLElement|Mozilla::DOM::HTMLElement>.

 * The nsIDOMHTMLHRElement interface is the interface to a [X]HTML hr
 * element.
 *
 * For more information on this interface please see
 * http://www.w3.org/TR/DOM-Level-2-HTML/
 *
 * @status FROZEN


=cut

=head1 CLASS METHODS

=head2 $iid = Mozilla::DOM::HTMLHRElement->B<GetIID>()

Pass this to QueryInterface.

=cut

## NS_DEFINE_STATIC_IID_ACCESSOR(NS_IDOMHTMLHRELEMENT_IID)
static nsIID
nsIDOMHTMLHRElement::GetIID()
    CODE:
	const nsIID &id = nsIDOMHTMLHRElement::GetIID();
	RETVAL = (nsIID) id;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLHRElement::GetAlign

=for signature $align = $htmlhrelement->GetAlign()



=cut

## GetAlign(nsAString & aAlign)
nsEmbedString
moz_dom_GetAlign (htmlhrelement)
	nsIDOMHTMLHRElement *htmlhrelement;
    PREINIT:
	nsEmbedString align;
    CODE:
	htmlhrelement->GetAlign(align);
	RETVAL = align;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLHRElement::SetAlign

=for signature $htmlhrelement->SetAlign($align)



=cut

## SetAlign(const nsAString & aAlign)
void
moz_dom_SetAlign (htmlhrelement, align)
	nsIDOMHTMLHRElement *htmlhrelement;
	nsEmbedString align;
    CODE:
	htmlhrelement->SetAlign(align);

=for apidoc Mozilla::DOM::HTMLHRElement::GetNoShade

=for signature $bool = $htmlhrelement->GetNoShade()



=cut

## GetNoShade(PRBool *aNoShade)
PRBool
moz_dom_GetNoShade (htmlhrelement)
	nsIDOMHTMLHRElement *htmlhrelement;
    PREINIT:
	PRBool noshade;
    CODE:
	htmlhrelement->GetNoShade(&noshade);
	RETVAL = noshade;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLHRElement::SetNoShade

=for signature $htmlhrelement->SetNoShade($noshade)



=cut

## SetNoShade(PRBool aNoShade)
void
moz_dom_SetNoShade (htmlhrelement, noshade)
	nsIDOMHTMLHRElement *htmlhrelement;
	PRBool  noshade;
    CODE:
	htmlhrelement->SetNoShade(noshade);

=for apidoc Mozilla::DOM::HTMLHRElement::GetSize

=for signature $size = $htmlhrelement->GetSize()



=cut

## GetSize(nsAString & aSize)
nsEmbedString
moz_dom_GetSize (htmlhrelement)
	nsIDOMHTMLHRElement *htmlhrelement;
    PREINIT:
	nsEmbedString size;
    CODE:
	htmlhrelement->GetSize(size);
	RETVAL = size;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLHRElement::SetSize

=for signature $htmlhrelement->SetSize($size)



=cut

## SetSize(const nsAString & aSize)
void
moz_dom_SetSize (htmlhrelement, size)
	nsIDOMHTMLHRElement *htmlhrelement;
	nsEmbedString size;
    CODE:
	htmlhrelement->SetSize(size);

=for apidoc Mozilla::DOM::HTMLHRElement::GetWidth

=for signature $width = $htmlhrelement->GetWidth()



=cut

## GetWidth(nsAString & aWidth)
nsEmbedString
moz_dom_GetWidth (htmlhrelement)
	nsIDOMHTMLHRElement *htmlhrelement;
    PREINIT:
	nsEmbedString width;
    CODE:
	htmlhrelement->GetWidth(width);
	RETVAL = width;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLHRElement::SetWidth

=for signature $htmlhrelement->SetWidth($width)



=cut

## SetWidth(const nsAString & aWidth)
void
moz_dom_SetWidth (htmlhrelement, width)
	nsIDOMHTMLHRElement *htmlhrelement;
	nsEmbedString width;
    CODE:
	htmlhrelement->SetWidth(width);

# -----------------------------------------------------------------------------

MODULE = Mozilla::DOM	PACKAGE = Mozilla::DOM::HTMLHeadElement	PREFIX = moz_dom_

# /usr/include/mozilla/nsIDOMHTMLHeadElement.h

=for object Mozilla::DOM::HTMLHeadElement

Mozilla::DOM::HTMLHeadElement is a wrapper around an instance of Mozilla's
nsIDOMHTMLHeadElement interface. This class inherits from
L<HTMLElement|Mozilla::DOM::HTMLElement>.

 * The nsIDOMHTMLHeadElement interface is the interface to a [X]HTML
 * head element.
 *
 * For more information on this interface please see
 * http://www.w3.org/TR/DOM-Level-2-HTML/
 *
 * @status FROZEN


=cut

=head1 CLASS METHODS

=head2 $iid = Mozilla::DOM::HTMLHeadElement->B<GetIID>()

Pass this to QueryInterface.

=cut

## NS_DEFINE_STATIC_IID_ACCESSOR(NS_IDOMHTMLHEADELEMENT_IID)
static nsIID
nsIDOMHTMLHeadElement::GetIID()
    CODE:
	const nsIID &id = nsIDOMHTMLHeadElement::GetIID();
	RETVAL = (nsIID) id;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLHeadElement::GetProfile

=for signature $profile = $htmlheadelement->GetProfile()



=cut

## GetProfile(nsAString & aProfile)
nsEmbedString
moz_dom_GetProfile (htmlheadelement)
	nsIDOMHTMLHeadElement *htmlheadelement;
    PREINIT:
	nsEmbedString profile;
    CODE:
	htmlheadelement->GetProfile(profile);
	RETVAL = profile;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLHeadElement::SetProfile

=for signature $htmlheadelement->SetProfile($profile)



=cut

## SetProfile(const nsAString & aProfile)
void
moz_dom_SetProfile (htmlheadelement, profile)
	nsIDOMHTMLHeadElement *htmlheadelement;
	nsEmbedString profile;
    CODE:
	htmlheadelement->SetProfile(profile);

# -----------------------------------------------------------------------------

MODULE = Mozilla::DOM	PACKAGE = Mozilla::DOM::HTMLHeadingElement	PREFIX = moz_dom_

# /usr/include/mozilla/nsIDOMHTMLHeadingElement.h

=for object Mozilla::DOM::HTMLHeadingElement

Mozilla::DOM::HTMLHeadingElement is a wrapper around an instance of Mozilla's
nsIDOMHTMLHeadingElement interface. This class inherits from
L<HTMLElement|Mozilla::DOM::HTMLElement>.

 * The nsIDOMHTMLHeadingElement interface is the interface to a
 * [X]HTML h1, h2, h3, ... element.
 *
 * For more information on this interface please see
 * http://www.w3.org/TR/DOM-Level-2-HTML/
 *
 * @status FROZEN


=cut

=head1 CLASS METHODS

=head2 $iid = Mozilla::DOM::HTMLHeadingElement->B<GetIID>()

Pass this to QueryInterface.

=cut

## NS_DEFINE_STATIC_IID_ACCESSOR(NS_IDOMHTMLHEADINGELEMENT_IID)
static nsIID
nsIDOMHTMLHeadingElement::GetIID()
    CODE:
	const nsIID &id = nsIDOMHTMLHeadingElement::GetIID();
	RETVAL = (nsIID) id;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLHeadingElement::GetAlign

=for signature $align = $htmlheadingelement->GetAlign()



=cut

## GetAlign(nsAString & aAlign)
nsEmbedString
moz_dom_GetAlign (htmlheadingelement)
	nsIDOMHTMLHeadingElement *htmlheadingelement;
    PREINIT:
	nsEmbedString align;
    CODE:
	htmlheadingelement->GetAlign(align);
	RETVAL = align;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLHeadingElement::SetAlign

=for signature $htmlheadingelement->SetAlign($align)



=cut

## SetAlign(const nsAString & aAlign)
void
moz_dom_SetAlign (htmlheadingelement, align)
	nsIDOMHTMLHeadingElement *htmlheadingelement;
	nsEmbedString align;
    CODE:
	htmlheadingelement->SetAlign(align);

# -----------------------------------------------------------------------------

MODULE = Mozilla::DOM	PACKAGE = Mozilla::DOM::HTMLHtmlElement	PREFIX = moz_dom_

# /usr/include/mozilla/nsIDOMHTMLHtmlElement.h

=for object Mozilla::DOM::HTMLHtmlElement

Mozilla::DOM::HTMLHtmlElement is a wrapper around an instance of Mozilla's
nsIDOMHTMLHtmlElement interface. This class inherits from
L<HTMLElement|Mozilla::DOM::HTMLElement>.

 * The nsIDOMHTMLHtmlElement interface is the interface to a [X]HTML
 * html element.
 *
 * For more information on this interface please see
 * http://www.w3.org/TR/DOM-Level-2-HTML/
 *
 * @status FROZEN


=cut

=head1 CLASS METHODS

=head2 $iid = Mozilla::DOM::HTMLHtmlElement->B<GetIID>()

Pass this to QueryInterface.

=cut

## NS_DEFINE_STATIC_IID_ACCESSOR(NS_IDOMHTMLHTMLELEMENT_IID)
static nsIID
nsIDOMHTMLHtmlElement::GetIID()
    CODE:
	const nsIID &id = nsIDOMHTMLHtmlElement::GetIID();
	RETVAL = (nsIID) id;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLHtmlElement::GetVersion

=for signature $version = $htmlhtmlelement->GetVersion()



=cut

## GetVersion(nsAString & aVersion)
nsEmbedString
moz_dom_GetVersion (htmlhtmlelement)
	nsIDOMHTMLHtmlElement *htmlhtmlelement;
    PREINIT:
	nsEmbedString version;
    CODE:
	htmlhtmlelement->GetVersion(version);
	RETVAL = version;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLHtmlElement::SetVersion

=for signature $htmlhtmlelement->SetVersion($version)



=cut

## SetVersion(const nsAString & aVersion)
void
moz_dom_SetVersion (htmlhtmlelement, version)
	nsIDOMHTMLHtmlElement *htmlhtmlelement;
	nsEmbedString version;
    CODE:
	htmlhtmlelement->SetVersion(version);

# -----------------------------------------------------------------------------

MODULE = Mozilla::DOM	PACKAGE = Mozilla::DOM::HTMLIFrameElement	PREFIX = moz_dom_

# /usr/include/mozilla/nsIDOMHTMLIFrameElement.h

=for object Mozilla::DOM::HTMLIFrameElement

Mozilla::DOM::HTMLIFrameElement is a wrapper around an instance of Mozilla's
nsIDOMHTMLIFrameElement interface. This class inherits from
L<HTMLElement|Mozilla::DOM::HTMLElement>.

 * The nsIDOMHTMLIFrameElement interface is the interface to a [X]HTML
 * iframe element.
 *
 * For more information on this interface please see
 * http://www.w3.org/TR/DOM-Level-2-HTML/
 *
 * @status FROZEN


=cut

=head1 CLASS METHODS

=head2 $iid = Mozilla::DOM::HTMLIFrameElement->B<GetIID>()

Pass this to QueryInterface.

=cut

## NS_DEFINE_STATIC_IID_ACCESSOR(NS_IDOMHTMLIFRAMEELEMENT_IID)
static nsIID
nsIDOMHTMLIFrameElement::GetIID()
    CODE:
	const nsIID &id = nsIDOMHTMLIFrameElement::GetIID();
	RETVAL = (nsIID) id;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLIFrameElement::GetAlign

=for signature $align = $htmliframeelement->GetAlign()



=cut

## GetAlign(nsAString & aAlign)
nsEmbedString
moz_dom_GetAlign (htmliframeelement)
	nsIDOMHTMLIFrameElement *htmliframeelement;
    PREINIT:
	nsEmbedString align;
    CODE:
	htmliframeelement->GetAlign(align);
	RETVAL = align;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLIFrameElement::SetAlign

=for signature $htmliframeelement->SetAlign($align)



=cut

## SetAlign(const nsAString & aAlign)
void
moz_dom_SetAlign (htmliframeelement, align)
	nsIDOMHTMLIFrameElement *htmliframeelement;
	nsEmbedString align;
    CODE:
	htmliframeelement->SetAlign(align);

=for apidoc Mozilla::DOM::HTMLIFrameElement::GetFrameBorder

=for signature $frameborder = $htmliframeelement->GetFrameBorder()



=cut

## GetFrameBorder(nsAString & aFrameBorder)
nsEmbedString
moz_dom_GetFrameBorder (htmliframeelement)
	nsIDOMHTMLIFrameElement *htmliframeelement;
    PREINIT:
	nsEmbedString frameborder;
    CODE:
	htmliframeelement->GetFrameBorder(frameborder);
	RETVAL = frameborder;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLIFrameElement::SetFrameBorder

=for signature $htmliframeelement->SetFrameBorder($frameborder)



=cut

## SetFrameBorder(const nsAString & aFrameBorder)
void
moz_dom_SetFrameBorder (htmliframeelement, frameborder)
	nsIDOMHTMLIFrameElement *htmliframeelement;
	nsEmbedString frameborder;
    CODE:
	htmliframeelement->SetFrameBorder(frameborder);

=for apidoc Mozilla::DOM::HTMLIFrameElement::GetHeight

=for signature $height = $htmliframeelement->GetHeight()



=cut

## GetHeight(nsAString & aHeight)
nsEmbedString
moz_dom_GetHeight (htmliframeelement)
	nsIDOMHTMLIFrameElement *htmliframeelement;
    PREINIT:
	nsEmbedString height;
    CODE:
	htmliframeelement->GetHeight(height);
	RETVAL = height;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLIFrameElement::SetHeight

=for signature $htmliframeelement->SetHeight($height)



=cut

## SetHeight(const nsAString & aHeight)
void
moz_dom_SetHeight (htmliframeelement, height)
	nsIDOMHTMLIFrameElement *htmliframeelement;
	nsEmbedString height;
    CODE:
	htmliframeelement->SetHeight(height);

=for apidoc Mozilla::DOM::HTMLIFrameElement::GetLongDesc

=for signature $longdesc = $htmliframeelement->GetLongDesc()



=cut

## GetLongDesc(nsAString & aLongDesc)
nsEmbedString
moz_dom_GetLongDesc (htmliframeelement)
	nsIDOMHTMLIFrameElement *htmliframeelement;
    PREINIT:
	nsEmbedString longdesc;
    CODE:
	htmliframeelement->GetLongDesc(longdesc);
	RETVAL = longdesc;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLIFrameElement::SetLongDesc

=for signature $htmliframeelement->SetLongDesc($longdesc)



=cut

## SetLongDesc(const nsAString & aLongDesc)
void
moz_dom_SetLongDesc (htmliframeelement, longdesc)
	nsIDOMHTMLIFrameElement *htmliframeelement;
	nsEmbedString longdesc;
    CODE:
	htmliframeelement->SetLongDesc(longdesc);

=for apidoc Mozilla::DOM::HTMLIFrameElement::GetMarginHeight

=for signature $marginheight = $htmliframeelement->GetMarginHeight()



=cut

## GetMarginHeight(nsAString & aMarginHeight)
nsEmbedString
moz_dom_GetMarginHeight (htmliframeelement)
	nsIDOMHTMLIFrameElement *htmliframeelement;
    PREINIT:
	nsEmbedString marginheight;
    CODE:
	htmliframeelement->GetMarginHeight(marginheight);
	RETVAL = marginheight;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLIFrameElement::SetMarginHeight

=for signature $htmliframeelement->SetMarginHeight($marginheight)



=cut

## SetMarginHeight(const nsAString & aMarginHeight)
void
moz_dom_SetMarginHeight (htmliframeelement, marginheight)
	nsIDOMHTMLIFrameElement *htmliframeelement;
	nsEmbedString marginheight;
    CODE:
	htmliframeelement->SetMarginHeight(marginheight);

=for apidoc Mozilla::DOM::HTMLIFrameElement::GetMarginWidth

=for signature $marginwidth = $htmliframeelement->GetMarginWidth()



=cut

## GetMarginWidth(nsAString & aMarginWidth)
nsEmbedString
moz_dom_GetMarginWidth (htmliframeelement)
	nsIDOMHTMLIFrameElement *htmliframeelement;
    PREINIT:
	nsEmbedString marginwidth;
    CODE:
	htmliframeelement->GetMarginWidth(marginwidth);
	RETVAL = marginwidth;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLIFrameElement::SetMarginWidth

=for signature $htmliframeelement->SetMarginWidth($marginwidth)



=cut

## SetMarginWidth(const nsAString & aMarginWidth)
void
moz_dom_SetMarginWidth (htmliframeelement, marginwidth)
	nsIDOMHTMLIFrameElement *htmliframeelement;
	nsEmbedString marginwidth;
    CODE:
	htmliframeelement->SetMarginWidth(marginwidth);

=for apidoc Mozilla::DOM::HTMLIFrameElement::GetName

=for signature $name = $htmliframeelement->GetName()



=cut

## GetName(nsAString & aName)
nsEmbedString
moz_dom_GetName (htmliframeelement)
	nsIDOMHTMLIFrameElement *htmliframeelement;
    PREINIT:
	nsEmbedString name;
    CODE:
	htmliframeelement->GetName(name);
	RETVAL = name;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLIFrameElement::SetName

=for signature $htmliframeelement->SetName($name)



=cut

## SetName(const nsAString & aName)
void
moz_dom_SetName (htmliframeelement, name)
	nsIDOMHTMLIFrameElement *htmliframeelement;
	nsEmbedString name;
    CODE:
	htmliframeelement->SetName(name);

=for apidoc Mozilla::DOM::HTMLIFrameElement::GetScrolling

=for signature $scrolling = $htmliframeelement->GetScrolling()



=cut

## GetScrolling(nsAString & aScrolling)
nsEmbedString
moz_dom_GetScrolling (htmliframeelement)
	nsIDOMHTMLIFrameElement *htmliframeelement;
    PREINIT:
	nsEmbedString scrolling;
    CODE:
	htmliframeelement->GetScrolling(scrolling);
	RETVAL = scrolling;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLIFrameElement::SetScrolling

=for signature $htmliframeelement->SetScrolling($scrolling)



=cut

## SetScrolling(const nsAString & aScrolling)
void
moz_dom_SetScrolling (htmliframeelement, scrolling)
	nsIDOMHTMLIFrameElement *htmliframeelement;
	nsEmbedString scrolling;
    CODE:
	htmliframeelement->SetScrolling(scrolling);

=for apidoc Mozilla::DOM::HTMLIFrameElement::GetSrc

=for signature $src = $htmliframeelement->GetSrc()



=cut

## GetSrc(nsAString & aSrc)
nsEmbedString
moz_dom_GetSrc (htmliframeelement)
	nsIDOMHTMLIFrameElement *htmliframeelement;
    PREINIT:
	nsEmbedString src;
    CODE:
	htmliframeelement->GetSrc(src);
	RETVAL = src;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLIFrameElement::SetSrc

=for signature $htmliframeelement->SetSrc($src)



=cut

## SetSrc(const nsAString & aSrc)
void
moz_dom_SetSrc (htmliframeelement, src)
	nsIDOMHTMLIFrameElement *htmliframeelement;
	nsEmbedString src;
    CODE:
	htmliframeelement->SetSrc(src);

=for apidoc Mozilla::DOM::HTMLIFrameElement::GetWidth

=for signature $width = $htmliframeelement->GetWidth()



=cut

## GetWidth(nsAString & aWidth)
nsEmbedString
moz_dom_GetWidth (htmliframeelement)
	nsIDOMHTMLIFrameElement *htmliframeelement;
    PREINIT:
	nsEmbedString width;
    CODE:
	htmliframeelement->GetWidth(width);
	RETVAL = width;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLIFrameElement::SetWidth

=for signature $htmliframeelement->SetWidth($width)



=cut

## SetWidth(const nsAString & aWidth)
void
moz_dom_SetWidth (htmliframeelement, width)
	nsIDOMHTMLIFrameElement *htmliframeelement;
	nsEmbedString width;
    CODE:
	htmliframeelement->SetWidth(width);

=for apidoc Mozilla::DOM::HTMLIFrameElement::GetContentDocument

=for signature $contentdocument = $htmliframeelement->GetContentDocument()



=cut

## GetContentDocument(nsIDOMDocument * *aContentDocument)
nsIDOMDocument *
moz_dom_GetContentDocument (htmliframeelement)
	nsIDOMHTMLIFrameElement *htmliframeelement;
    PREINIT:
	nsIDOMDocument * contentdocument;
    CODE:
	htmliframeelement->GetContentDocument(&contentdocument);
	RETVAL = contentdocument;
    OUTPUT:
	RETVAL

# -----------------------------------------------------------------------------

MODULE = Mozilla::DOM	PACKAGE = Mozilla::DOM::HTMLImageElement	PREFIX = moz_dom_

# /usr/include/mozilla/nsIDOMHTMLImageElement.h

=for object Mozilla::DOM::HTMLImageElement

Mozilla::DOM::HTMLImageElement is a wrapper around an instance of Mozilla's
nsIDOMHTMLImageElement interface. This class inherits from
L<HTMLElement|Mozilla::DOM::HTMLElement>.

 * The nsIDOMHTMLImageElement interface is the interface to a [X]HTML
 * img element.
 *
 * For more information on this interface please see
 * http://www.w3.org/TR/DOM-Level-2-HTML/
 *
 * @status FROZEN


=cut

=head1 CLASS METHODS

=head2 $iid = Mozilla::DOM::HTMLImageElement->B<GetIID>()

Pass this to QueryInterface.

=cut

## NS_DEFINE_STATIC_IID_ACCESSOR(NS_IDOMHTMLIMAGEELEMENT_IID)
static nsIID
nsIDOMHTMLImageElement::GetIID()
    CODE:
	const nsIID &id = nsIDOMHTMLImageElement::GetIID();
	RETVAL = (nsIID) id;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLImageElement::GetName

=for signature $name = $htmlimageelement->GetName()



=cut

## GetName(nsAString & aName)
nsEmbedString
moz_dom_GetName (htmlimageelement)
	nsIDOMHTMLImageElement *htmlimageelement;
    PREINIT:
	nsEmbedString name;
    CODE:
	htmlimageelement->GetName(name);
	RETVAL = name;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLImageElement::SetName

=for signature $htmlimageelement->SetName($name)



=cut

## SetName(const nsAString & aName)
void
moz_dom_SetName (htmlimageelement, name)
	nsIDOMHTMLImageElement *htmlimageelement;
	nsEmbedString name;
    CODE:
	htmlimageelement->SetName(name);

=for apidoc Mozilla::DOM::HTMLImageElement::GetAlign

=for signature $align = $htmlimageelement->GetAlign()



=cut

## GetAlign(nsAString & aAlign)
nsEmbedString
moz_dom_GetAlign (htmlimageelement)
	nsIDOMHTMLImageElement *htmlimageelement;
    PREINIT:
	nsEmbedString align;
    CODE:
	htmlimageelement->GetAlign(align);
	RETVAL = align;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLImageElement::SetAlign

=for signature $htmlimageelement->SetAlign($align)



=cut

## SetAlign(const nsAString & aAlign)
void
moz_dom_SetAlign (htmlimageelement, align)
	nsIDOMHTMLImageElement *htmlimageelement;
	nsEmbedString align;
    CODE:
	htmlimageelement->SetAlign(align);

=for apidoc Mozilla::DOM::HTMLImageElement::GetAlt

=for signature $alt = $htmlimageelement->GetAlt()



=cut

## GetAlt(nsAString & aAlt)
nsEmbedString
moz_dom_GetAlt (htmlimageelement)
	nsIDOMHTMLImageElement *htmlimageelement;
    PREINIT:
	nsEmbedString alt;
    CODE:
	htmlimageelement->GetAlt(alt);
	RETVAL = alt;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLImageElement::SetAlt

=for signature $htmlimageelement->SetAlt($alt)



=cut

## SetAlt(const nsAString & aAlt)
void
moz_dom_SetAlt (htmlimageelement, alt)
	nsIDOMHTMLImageElement *htmlimageelement;
	nsEmbedString alt;
    CODE:
	htmlimageelement->SetAlt(alt);

=for apidoc Mozilla::DOM::HTMLImageElement::GetBorder

=for signature $border = $htmlimageelement->GetBorder()



=cut

## GetBorder(nsAString & aBorder)
nsEmbedString
moz_dom_GetBorder (htmlimageelement)
	nsIDOMHTMLImageElement *htmlimageelement;
    PREINIT:
	nsEmbedString border;
    CODE:
	htmlimageelement->GetBorder(border);
	RETVAL = border;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLImageElement::SetBorder

=for signature $htmlimageelement->SetBorder($border)



=cut

## SetBorder(const nsAString & aBorder)
void
moz_dom_SetBorder (htmlimageelement, border)
	nsIDOMHTMLImageElement *htmlimageelement;
	nsEmbedString border;
    CODE:
	htmlimageelement->SetBorder(border);

=for apidoc Mozilla::DOM::HTMLImageElement::GetHeight

=for signature $height = $htmlimageelement->GetHeight()



=cut

## GetHeight(PRInt32 *aHeight)
PRInt32
moz_dom_GetHeight (htmlimageelement)
	nsIDOMHTMLImageElement *htmlimageelement;
    PREINIT:
	PRInt32 height;
    CODE:
	htmlimageelement->GetHeight(&height);
	RETVAL = height;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLImageElement::SetHeight

=for signature $htmlimageelement->SetHeight($height)



=cut

## SetHeight(PRInt32 aHeight)
void
moz_dom_SetHeight (htmlimageelement, height)
	nsIDOMHTMLImageElement *htmlimageelement;
	PRInt32  height;
    CODE:
	htmlimageelement->SetHeight(height);

=for apidoc Mozilla::DOM::HTMLImageElement::GetHspace

=for signature $hspace = $htmlimageelement->GetHspace()



=cut

## GetHspace(PRInt32 *aHspace)
PRInt32
moz_dom_GetHspace (htmlimageelement)
	nsIDOMHTMLImageElement *htmlimageelement;
    PREINIT:
	PRInt32 hspace;
    CODE:
	htmlimageelement->GetHspace(&hspace);
	RETVAL = hspace;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLImageElement::SetHspace

=for signature $htmlimageelement->SetHspace($hspace)



=cut

## SetHspace(PRInt32 aHspace)
void
moz_dom_SetHspace (htmlimageelement, hspace)
	nsIDOMHTMLImageElement *htmlimageelement;
	PRInt32  hspace;
    CODE:
	htmlimageelement->SetHspace(hspace);

=for apidoc Mozilla::DOM::HTMLImageElement::GetIsMap

=for signature $bool = $htmlimageelement->GetIsMap()



=cut

## GetIsMap(PRBool *aIsMap)
PRBool
moz_dom_GetIsMap (htmlimageelement)
	nsIDOMHTMLImageElement *htmlimageelement;
    PREINIT:
	PRBool ismap;
    CODE:
	htmlimageelement->GetIsMap(&ismap);
	RETVAL = ismap;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLImageElement::SetIsMap

=for signature $htmlimageelement->SetIsMap($ismap)



=cut

## SetIsMap(PRBool aIsMap)
void
moz_dom_SetIsMap (htmlimageelement, ismap)
	nsIDOMHTMLImageElement *htmlimageelement;
	PRBool  ismap;
    CODE:
	htmlimageelement->SetIsMap(ismap);

=for apidoc Mozilla::DOM::HTMLImageElement::GetLongDesc

=for signature $longdesc = $htmlimageelement->GetLongDesc()



=cut

## GetLongDesc(nsAString & aLongDesc)
nsEmbedString
moz_dom_GetLongDesc (htmlimageelement)
	nsIDOMHTMLImageElement *htmlimageelement;
    PREINIT:
	nsEmbedString longdesc;
    CODE:
	htmlimageelement->GetLongDesc(longdesc);
	RETVAL = longdesc;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLImageElement::SetLongDesc

=for signature $htmlimageelement->SetLongDesc($longdesc)



=cut

## SetLongDesc(const nsAString & aLongDesc)
void
moz_dom_SetLongDesc (htmlimageelement, longdesc)
	nsIDOMHTMLImageElement *htmlimageelement;
	nsEmbedString longdesc;
    CODE:
	htmlimageelement->SetLongDesc(longdesc);

=for apidoc Mozilla::DOM::HTMLImageElement::GetSrc

=for signature $src = $htmlimageelement->GetSrc()



=cut

## GetSrc(nsAString & aSrc)
nsEmbedString
moz_dom_GetSrc (htmlimageelement)
	nsIDOMHTMLImageElement *htmlimageelement;
    PREINIT:
	nsEmbedString src;
    CODE:
	htmlimageelement->GetSrc(src);
	RETVAL = src;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLImageElement::SetSrc

=for signature $htmlimageelement->SetSrc($src)



=cut

## SetSrc(const nsAString & aSrc)
void
moz_dom_SetSrc (htmlimageelement, src)
	nsIDOMHTMLImageElement *htmlimageelement;
	nsEmbedString src;
    CODE:
	htmlimageelement->SetSrc(src);

=for apidoc Mozilla::DOM::HTMLImageElement::GetUseMap

=for signature $usemap = $htmlimageelement->GetUseMap()



=cut

## GetUseMap(nsAString & aUseMap)
nsEmbedString
moz_dom_GetUseMap (htmlimageelement)
	nsIDOMHTMLImageElement *htmlimageelement;
    PREINIT:
	nsEmbedString usemap;
    CODE:
	htmlimageelement->GetUseMap(usemap);
	RETVAL = usemap;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLImageElement::SetUseMap

=for signature $htmlimageelement->SetUseMap($usemap)



=cut

## SetUseMap(const nsAString & aUseMap)
void
moz_dom_SetUseMap (htmlimageelement, usemap)
	nsIDOMHTMLImageElement *htmlimageelement;
	nsEmbedString usemap;
    CODE:
	htmlimageelement->SetUseMap(usemap);

=for apidoc Mozilla::DOM::HTMLImageElement::GetVspace

=for signature $vspace = $htmlimageelement->GetVspace()



=cut

## GetVspace(PRInt32 *aVspace)
PRInt32
moz_dom_GetVspace (htmlimageelement)
	nsIDOMHTMLImageElement *htmlimageelement;
    PREINIT:
	PRInt32 vspace;
    CODE:
	htmlimageelement->GetVspace(&vspace);
	RETVAL = vspace;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLImageElement::SetVspace

=for signature $htmlimageelement->SetVspace($vspace)



=cut

## SetVspace(PRInt32 aVspace)
void
moz_dom_SetVspace (htmlimageelement, vspace)
	nsIDOMHTMLImageElement *htmlimageelement;
	PRInt32  vspace;
    CODE:
	htmlimageelement->SetVspace(vspace);

=for apidoc Mozilla::DOM::HTMLImageElement::GetWidth

=for signature $width = $htmlimageelement->GetWidth()



=cut

## GetWidth(PRInt32 *aWidth)
PRInt32
moz_dom_GetWidth (htmlimageelement)
	nsIDOMHTMLImageElement *htmlimageelement;
    PREINIT:
	PRInt32 width;
    CODE:
	htmlimageelement->GetWidth(&width);
	RETVAL = width;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLImageElement::SetWidth

=for signature $htmlimageelement->SetWidth($width)



=cut

## SetWidth(PRInt32 aWidth)
void
moz_dom_SetWidth (htmlimageelement, width)
	nsIDOMHTMLImageElement *htmlimageelement;
	PRInt32  width;
    CODE:
	htmlimageelement->SetWidth(width);

# -----------------------------------------------------------------------------

MODULE = Mozilla::DOM	PACKAGE = Mozilla::DOM::HTMLInputElement	PREFIX = moz_dom_

# /usr/include/mozilla/nsIDOMHTMLInputElement.h

=for object Mozilla::DOM::HTMLInputElement

Mozilla::DOM::HTMLInputElement is a wrapper around an instance of Mozilla's
nsIDOMHTMLInputElement interface. This class inherits from
L<HTMLElement|Mozilla::DOM::HTMLElement>.

 * The nsIDOMHTMLInputElement interface is the interface to a [X]HTML
 * input element.
 *
 * For more information on this interface please see
 * http://www.w3.org/TR/DOM-Level-2-HTML/
 *
 * @status FROZEN


=cut

=head1 CLASS METHODS

=head2 $iid = Mozilla::DOM::HTMLInputElement->B<GetIID>()

Pass this to QueryInterface.

=cut

## NS_DEFINE_STATIC_IID_ACCESSOR(NS_IDOMHTMLINPUTELEMENT_IID)
static nsIID
nsIDOMHTMLInputElement::GetIID()
    CODE:
	const nsIID &id = nsIDOMHTMLInputElement::GetIID();
	RETVAL = (nsIID) id;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLInputElement::GetDefaultValue

=for signature $defaultvalue = $htmlinputelement->GetDefaultValue()



=cut

## GetDefaultValue(nsAString & aDefaultValue)
nsEmbedString
moz_dom_GetDefaultValue (htmlinputelement)
	nsIDOMHTMLInputElement *htmlinputelement;
    PREINIT:
	nsEmbedString defaultvalue;
    CODE:
	htmlinputelement->GetDefaultValue(defaultvalue);
	RETVAL = defaultvalue;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLInputElement::SetDefaultValue

=for signature $htmlinputelement->SetDefaultValue($defaultvalue)



=cut

## SetDefaultValue(const nsAString & aDefaultValue)
void
moz_dom_SetDefaultValue (htmlinputelement, defaultvalue)
	nsIDOMHTMLInputElement *htmlinputelement;
	nsEmbedString defaultvalue;
    CODE:
	htmlinputelement->SetDefaultValue(defaultvalue);

=for apidoc Mozilla::DOM::HTMLInputElement::GetDefaultChecked

=for signature $bool = $htmlinputelement->GetDefaultChecked()



=cut

## GetDefaultChecked(PRBool *aDefaultChecked)
PRBool
moz_dom_GetDefaultChecked (htmlinputelement)
	nsIDOMHTMLInputElement *htmlinputelement;
    PREINIT:
	PRBool defaultchecked;
    CODE:
	htmlinputelement->GetDefaultChecked(&defaultchecked);
	RETVAL = defaultchecked;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLInputElement::SetDefaultChecked

=for signature $htmlinputelement->SetDefaultChecked($defaultchecked)



=cut

## SetDefaultChecked(PRBool aDefaultChecked)
void
moz_dom_SetDefaultChecked (htmlinputelement, defaultchecked)
	nsIDOMHTMLInputElement *htmlinputelement;
	PRBool  defaultchecked;
    CODE:
	htmlinputelement->SetDefaultChecked(defaultchecked);

=for apidoc Mozilla::DOM::HTMLInputElement::GetForm

=for signature $form = $htmlinputelement->GetForm()



=cut

## GetForm(nsIDOMHTMLFormElement * *aForm)
nsIDOMHTMLFormElement *
moz_dom_GetForm (htmlinputelement)
	nsIDOMHTMLInputElement *htmlinputelement;
    PREINIT:
	nsIDOMHTMLFormElement * form;
    CODE:
	htmlinputelement->GetForm(&form);
	RETVAL = form;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLInputElement::GetAccept

=for signature $accept = $htmlinputelement->GetAccept()



=cut

## GetAccept(nsAString & aAccept)
nsEmbedString
moz_dom_GetAccept (htmlinputelement)
	nsIDOMHTMLInputElement *htmlinputelement;
    PREINIT:
	nsEmbedString accept;
    CODE:
	htmlinputelement->GetAccept(accept);
	RETVAL = accept;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLInputElement::SetAccept

=for signature $htmlinputelement->SetAccept($accept)



=cut

## SetAccept(const nsAString & aAccept)
void
moz_dom_SetAccept (htmlinputelement, accept)
	nsIDOMHTMLInputElement *htmlinputelement;
	nsEmbedString accept;
    CODE:
	htmlinputelement->SetAccept(accept);

=for apidoc Mozilla::DOM::HTMLInputElement::GetAccessKey

=for signature $accesskey = $htmlinputelement->GetAccessKey()



=cut

## GetAccessKey(nsAString & aAccessKey)
nsEmbedString
moz_dom_GetAccessKey (htmlinputelement)
	nsIDOMHTMLInputElement *htmlinputelement;
    PREINIT:
	nsEmbedString accesskey;
    CODE:
	htmlinputelement->GetAccessKey(accesskey);
	RETVAL = accesskey;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLInputElement::SetAccessKey

=for signature $htmlinputelement->SetAccessKey($accesskey)



=cut

## SetAccessKey(const nsAString & aAccessKey)
void
moz_dom_SetAccessKey (htmlinputelement, accesskey)
	nsIDOMHTMLInputElement *htmlinputelement;
	nsEmbedString accesskey;
    CODE:
	htmlinputelement->SetAccessKey(accesskey);

=for apidoc Mozilla::DOM::HTMLInputElement::GetAlign

=for signature $align = $htmlinputelement->GetAlign()



=cut

## GetAlign(nsAString & aAlign)
nsEmbedString
moz_dom_GetAlign (htmlinputelement)
	nsIDOMHTMLInputElement *htmlinputelement;
    PREINIT:
	nsEmbedString align;
    CODE:
	htmlinputelement->GetAlign(align);
	RETVAL = align;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLInputElement::SetAlign

=for signature $htmlinputelement->SetAlign($align)



=cut

## SetAlign(const nsAString & aAlign)
void
moz_dom_SetAlign (htmlinputelement, align)
	nsIDOMHTMLInputElement *htmlinputelement;
	nsEmbedString align;
    CODE:
	htmlinputelement->SetAlign(align);

=for apidoc Mozilla::DOM::HTMLInputElement::GetAlt

=for signature $alt = $htmlinputelement->GetAlt()



=cut

## GetAlt(nsAString & aAlt)
nsEmbedString
moz_dom_GetAlt (htmlinputelement)
	nsIDOMHTMLInputElement *htmlinputelement;
    PREINIT:
	nsEmbedString alt;
    CODE:
	htmlinputelement->GetAlt(alt);
	RETVAL = alt;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLInputElement::SetAlt

=for signature $htmlinputelement->SetAlt($alt)



=cut

## SetAlt(const nsAString & aAlt)
void
moz_dom_SetAlt (htmlinputelement, alt)
	nsIDOMHTMLInputElement *htmlinputelement;
	nsEmbedString alt;
    CODE:
	htmlinputelement->SetAlt(alt);

=for apidoc Mozilla::DOM::HTMLInputElement::GetChecked

=for signature $bool = $htmlinputelement->GetChecked()



=cut

## GetChecked(PRBool *aChecked)
PRBool
moz_dom_GetChecked (htmlinputelement)
	nsIDOMHTMLInputElement *htmlinputelement;
    PREINIT:
	PRBool checked;
    CODE:
	htmlinputelement->GetChecked(&checked);
	RETVAL = checked;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLInputElement::SetChecked

=for signature $htmlinputelement->SetChecked($checked)



=cut

## SetChecked(PRBool aChecked)
void
moz_dom_SetChecked (htmlinputelement, checked)
	nsIDOMHTMLInputElement *htmlinputelement;
	PRBool  checked;
    CODE:
	htmlinputelement->SetChecked(checked);

=for apidoc Mozilla::DOM::HTMLInputElement::GetDisabled

=for signature $bool = $htmlinputelement->GetDisabled()



=cut

## GetDisabled(PRBool *aDisabled)
PRBool
moz_dom_GetDisabled (htmlinputelement)
	nsIDOMHTMLInputElement *htmlinputelement;
    PREINIT:
	PRBool disabled;
    CODE:
	htmlinputelement->GetDisabled(&disabled);
	RETVAL = disabled;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLInputElement::SetDisabled

=for signature $htmlinputelement->SetDisabled($disabled)



=cut

## SetDisabled(PRBool aDisabled)
void
moz_dom_SetDisabled (htmlinputelement, disabled)
	nsIDOMHTMLInputElement *htmlinputelement;
	PRBool  disabled;
    CODE:
	htmlinputelement->SetDisabled(disabled);

=for apidoc Mozilla::DOM::HTMLInputElement::GetMaxLength

=for signature $maxlength = $htmlinputelement->GetMaxLength()



=cut

## GetMaxLength(PRInt32 *aMaxLength)
PRInt32
moz_dom_GetMaxLength (htmlinputelement)
	nsIDOMHTMLInputElement *htmlinputelement;
    PREINIT:
	PRInt32 maxlength;
    CODE:
	htmlinputelement->GetMaxLength(&maxlength);
	RETVAL = maxlength;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLInputElement::SetMaxLength

=for signature $htmlinputelement->SetMaxLength($maxlength)



=cut

## SetMaxLength(PRInt32 aMaxLength)
void
moz_dom_SetMaxLength (htmlinputelement, maxlength)
	nsIDOMHTMLInputElement *htmlinputelement;
	PRInt32  maxlength;
    CODE:
	htmlinputelement->SetMaxLength(maxlength);

=for apidoc Mozilla::DOM::HTMLInputElement::GetName

=for signature $name = $htmlinputelement->GetName()



=cut

## GetName(nsAString & aName)
nsEmbedString
moz_dom_GetName (htmlinputelement)
	nsIDOMHTMLInputElement *htmlinputelement;
    PREINIT:
	nsEmbedString name;
    CODE:
	htmlinputelement->GetName(name);
	RETVAL = name;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLInputElement::SetName

=for signature $htmlinputelement->SetName($name)



=cut

## SetName(const nsAString & aName)
void
moz_dom_SetName (htmlinputelement, name)
	nsIDOMHTMLInputElement *htmlinputelement;
	nsEmbedString name;
    CODE:
	htmlinputelement->SetName(name);

=for apidoc Mozilla::DOM::HTMLInputElement::GetReadOnly

=for signature $bool = $htmlinputelement->GetReadOnly()



=cut

## GetReadOnly(PRBool *aReadOnly)
PRBool
moz_dom_GetReadOnly (htmlinputelement)
	nsIDOMHTMLInputElement *htmlinputelement;
    PREINIT:
	PRBool readonly;
    CODE:
	htmlinputelement->GetReadOnly(&readonly);
	RETVAL = readonly;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLInputElement::SetReadOnly

=for signature $htmlinputelement->SetReadOnly($readonly)



=cut

## SetReadOnly(PRBool aReadOnly)
void
moz_dom_SetReadOnly (htmlinputelement, readonly)
	nsIDOMHTMLInputElement *htmlinputelement;
	PRBool  readonly;
    CODE:
	htmlinputelement->SetReadOnly(readonly);

=for apidoc Mozilla::DOM::HTMLInputElement::GetSize

=for signature $size = $htmlinputelement->GetSize()



=cut

## GetSize(PRUint32 *aSize)
PRUint32
moz_dom_GetSize (htmlinputelement)
	nsIDOMHTMLInputElement *htmlinputelement;
    PREINIT:
	PRUint32 size;
    CODE:
	htmlinputelement->GetSize(&size);
	RETVAL = size;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLInputElement::SetSize

=for signature $htmlinputelement->SetSize($size)



=cut

## SetSize(PRUint32 aSize)
void
moz_dom_SetSize (htmlinputelement, size)
	nsIDOMHTMLInputElement *htmlinputelement;
	PRUint32  size;
    CODE:
	htmlinputelement->SetSize(size);

=for apidoc Mozilla::DOM::HTMLInputElement::GetSrc

=for signature $src = $htmlinputelement->GetSrc()



=cut

## GetSrc(nsAString & aSrc)
nsEmbedString
moz_dom_GetSrc (htmlinputelement)
	nsIDOMHTMLInputElement *htmlinputelement;
    PREINIT:
	nsEmbedString src;
    CODE:
	htmlinputelement->GetSrc(src);
	RETVAL = src;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLInputElement::SetSrc

=for signature $htmlinputelement->SetSrc($src)



=cut

## SetSrc(const nsAString & aSrc)
void
moz_dom_SetSrc (htmlinputelement, src)
	nsIDOMHTMLInputElement *htmlinputelement;
	nsEmbedString src;
    CODE:
	htmlinputelement->SetSrc(src);

=for apidoc Mozilla::DOM::HTMLInputElement::GetTabIndex

=for signature $tabindex = $htmlinputelement->GetTabIndex()



=cut

## GetTabIndex(PRInt32 *aTabIndex)
PRInt32
moz_dom_GetTabIndex (htmlinputelement)
	nsIDOMHTMLInputElement *htmlinputelement;
    PREINIT:
	PRInt32 tabindex;
    CODE:
	htmlinputelement->GetTabIndex(&tabindex);
	RETVAL = tabindex;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLInputElement::SetTabIndex

=for signature $htmlinputelement->SetTabIndex($tabindex)



=cut

## SetTabIndex(PRInt32 aTabIndex)
void
moz_dom_SetTabIndex (htmlinputelement, tabindex)
	nsIDOMHTMLInputElement *htmlinputelement;
	PRInt32  tabindex;
    CODE:
	htmlinputelement->SetTabIndex(tabindex);

=for apidoc Mozilla::DOM::HTMLInputElement::GetType

=for signature $type = $htmlinputelement->GetType()



=cut

## GetType(nsAString & aType)
nsEmbedString
moz_dom_GetType (htmlinputelement)
	nsIDOMHTMLInputElement *htmlinputelement;
    PREINIT:
	nsEmbedString type;
    CODE:
	htmlinputelement->GetType(type);
	RETVAL = type;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLInputElement::SetType

=for signature $htmlinputelement->SetType($type)



=cut

## SetType(const nsAString & aType)
void
moz_dom_SetType (htmlinputelement, type)
	nsIDOMHTMLInputElement *htmlinputelement;
	nsEmbedString type;
    CODE:
	htmlinputelement->SetType(type);

=for apidoc Mozilla::DOM::HTMLInputElement::GetUseMap

=for signature $usemap = $htmlinputelement->GetUseMap()



=cut

## GetUseMap(nsAString & aUseMap)
nsEmbedString
moz_dom_GetUseMap (htmlinputelement)
	nsIDOMHTMLInputElement *htmlinputelement;
    PREINIT:
	nsEmbedString usemap;
    CODE:
	htmlinputelement->GetUseMap(usemap);
	RETVAL = usemap;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLInputElement::SetUseMap

=for signature $htmlinputelement->SetUseMap($usemap)



=cut

## SetUseMap(const nsAString & aUseMap)
void
moz_dom_SetUseMap (htmlinputelement, usemap)
	nsIDOMHTMLInputElement *htmlinputelement;
	nsEmbedString usemap;
    CODE:
	htmlinputelement->SetUseMap(usemap);

=for apidoc Mozilla::DOM::HTMLInputElement::GetValue

=for signature $value = $htmlinputelement->GetValue()



=cut

## GetValue(nsAString & aValue)
nsEmbedString
moz_dom_GetValue (htmlinputelement)
	nsIDOMHTMLInputElement *htmlinputelement;
    PREINIT:
	nsEmbedString value;
    CODE:
	htmlinputelement->GetValue(value);
	RETVAL = value;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLInputElement::SetValue

=for signature $htmlinputelement->SetValue($value)



=cut

## SetValue(const nsAString & aValue)
void
moz_dom_SetValue (htmlinputelement, value)
	nsIDOMHTMLInputElement *htmlinputelement;
	nsEmbedString value;
    CODE:
	htmlinputelement->SetValue(value);

=for apidoc Mozilla::DOM::HTMLInputElement::Blur

=for signature $htmlinputelement->Blur()



=cut

## Blur(void)
void
moz_dom_Blur (htmlinputelement)
	nsIDOMHTMLInputElement *htmlinputelement;
    CODE:
	htmlinputelement->Blur();

=for apidoc Mozilla::DOM::HTMLInputElement::Focus

=for signature $htmlinputelement->Focus()



=cut

## Focus(void)
void
moz_dom_Focus (htmlinputelement)
	nsIDOMHTMLInputElement *htmlinputelement;
    CODE:
	htmlinputelement->Focus();

=for apidoc Mozilla::DOM::HTMLInputElement::Select

=for signature $htmlinputelement->Select()



=cut

## Select(void)
void
moz_dom_Select (htmlinputelement)
	nsIDOMHTMLInputElement *htmlinputelement;
    CODE:
	htmlinputelement->Select();

=for apidoc Mozilla::DOM::HTMLInputElement::Click

=for signature $htmlinputelement->Click()



=cut

## Click(void)
void
moz_dom_Click (htmlinputelement)
	nsIDOMHTMLInputElement *htmlinputelement;
    CODE:
	htmlinputelement->Click();

# -----------------------------------------------------------------------------

MODULE = Mozilla::DOM	PACKAGE = Mozilla::DOM::HTMLIsIndexElement	PREFIX = moz_dom_

# /usr/include/mozilla/nsIDOMHTMLIsIndexElement.h

=for object Mozilla::DOM::HTMLIsIndexElement

Mozilla::DOM::HTMLIsIndexElement is a wrapper around an instance of Mozilla's
nsIDOMHTMLIsIndexElement interface. This class inherits from
L<HTMLElement|Mozilla::DOM::HTMLElement>.

 * The nsIDOMHTMLIsIndexElement interface is the interface to a
 * [X]HTML isindex element.
 *
 * For more information on this interface please see
 * http://www.w3.org/TR/DOM-Level-2-HTML/
 *
 * @status FROZEN


=cut

=head1 CLASS METHODS

=head2 $iid = Mozilla::DOM::HTMLIsIndexElement->B<GetIID>()

Pass this to QueryInterface.

=cut

## NS_DEFINE_STATIC_IID_ACCESSOR(NS_IDOMHTMLISINDEXELEMENT_IID)
static nsIID
nsIDOMHTMLIsIndexElement::GetIID()
    CODE:
	const nsIID &id = nsIDOMHTMLIsIndexElement::GetIID();
	RETVAL = (nsIID) id;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLIsIndexElement::GetForm

=for signature $form = $htmlisindexelement->GetForm()



=cut

## GetForm(nsIDOMHTMLFormElement * *aForm)
nsIDOMHTMLFormElement *
moz_dom_GetForm (htmlisindexelement)
	nsIDOMHTMLIsIndexElement *htmlisindexelement;
    PREINIT:
	nsIDOMHTMLFormElement * form;
    CODE:
	htmlisindexelement->GetForm(&form);
	RETVAL = form;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLIsIndexElement::GetPrompt

=for signature $prompt = $htmlisindexelement->GetPrompt()



=cut

## GetPrompt(nsAString & aPrompt)
nsEmbedString
moz_dom_GetPrompt (htmlisindexelement)
	nsIDOMHTMLIsIndexElement *htmlisindexelement;
    PREINIT:
	nsEmbedString prompt;
    CODE:
	htmlisindexelement->GetPrompt(prompt);
	RETVAL = prompt;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLIsIndexElement::SetPrompt

=for signature $htmlisindexelement->SetPrompt($prompt)



=cut

## SetPrompt(const nsAString & aPrompt)
void
moz_dom_SetPrompt (htmlisindexelement, prompt)
	nsIDOMHTMLIsIndexElement *htmlisindexelement;
	nsEmbedString prompt;
    CODE:
	htmlisindexelement->SetPrompt(prompt);

# -----------------------------------------------------------------------------

MODULE = Mozilla::DOM	PACKAGE = Mozilla::DOM::HTMLLIElement	PREFIX = moz_dom_

# /usr/include/mozilla/nsIDOMHTMLLIElement.h

=for object Mozilla::DOM::HTMLLIElement

Mozilla::DOM::HTMLLIElement is a wrapper around an instance of Mozilla's
nsIDOMHTMLLIElement interface. This class inherits from
L<HTMLElement|Mozilla::DOM::HTMLElement>.

 * The nsIDOMHTMLLIElement interface is the interface to a [X]HTML li
 * element.
 *
 * For more information on this interface please see
 * http://www.w3.org/TR/DOM-Level-2-HTML/
 *
 * @status FROZEN


=cut

=head1 CLASS METHODS

=head2 $iid = Mozilla::DOM::HTMLLIElement->B<GetIID>()

Pass this to QueryInterface.

=cut

## NS_DEFINE_STATIC_IID_ACCESSOR(NS_IDOMHTMLLIELEMENT_IID)
static nsIID
nsIDOMHTMLLIElement::GetIID()
    CODE:
	const nsIID &id = nsIDOMHTMLLIElement::GetIID();
	RETVAL = (nsIID) id;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLLIElement::GetType

=for signature $type = $htmllielement->GetType()



=cut

## GetType(nsAString & aType)
nsEmbedString
moz_dom_GetType (htmllielement)
	nsIDOMHTMLLIElement *htmllielement;
    PREINIT:
	nsEmbedString type;
    CODE:
	htmllielement->GetType(type);
	RETVAL = type;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLLIElement::SetType

=for signature $htmllielement->SetType($type)



=cut

## SetType(const nsAString & aType)
void
moz_dom_SetType (htmllielement, type)
	nsIDOMHTMLLIElement *htmllielement;
	nsEmbedString type;
    CODE:
	htmllielement->SetType(type);

=for apidoc Mozilla::DOM::HTMLLIElement::GetValue

=for signature $value = $htmllielement->GetValue()



=cut

## GetValue(PRInt32 *aValue)
PRInt32
moz_dom_GetValue (htmllielement)
	nsIDOMHTMLLIElement *htmllielement;
    PREINIT:
	PRInt32 value;
    CODE:
	htmllielement->GetValue(&value);
	RETVAL = value;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLLIElement::SetValue

=for signature $htmllielement->SetValue($value)



=cut

## SetValue(PRInt32 aValue)
void
moz_dom_SetValue (htmllielement, value)
	nsIDOMHTMLLIElement *htmllielement;
	PRInt32  value;
    CODE:
	htmllielement->SetValue(value);

# -----------------------------------------------------------------------------

MODULE = Mozilla::DOM	PACKAGE = Mozilla::DOM::HTMLLabelElement	PREFIX = moz_dom_

# /usr/include/mozilla/nsIDOMHTMLLabelElement.h

=for object Mozilla::DOM::HTMLLabelElement

Mozilla::DOM::HTMLLabelElement is a wrapper around an instance of Mozilla's
nsIDOMHTMLLabelElement interface. This class inherits from
L<HTMLElement|Mozilla::DOM::HTMLElement>.

 * The nsIDOMHTMLLabelElement interface is the interface to a [X]HTML
 * label element.
 *
 * For more information on this interface please see
 * http://www.w3.org/TR/DOM-Level-2-HTML/
 *
 * @status FROZEN


=cut

=head1 CLASS METHODS

=head2 $iid = Mozilla::DOM::HTMLLabelElement->B<GetIID>()

Pass this to QueryInterface.

=cut

## NS_DEFINE_STATIC_IID_ACCESSOR(NS_IDOMHTMLLABELELEMENT_IID)
static nsIID
nsIDOMHTMLLabelElement::GetIID()
    CODE:
	const nsIID &id = nsIDOMHTMLLabelElement::GetIID();
	RETVAL = (nsIID) id;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLLabelElement::GetForm

=for signature $form = $htmllabelelement->GetForm()



=cut

## GetForm(nsIDOMHTMLFormElement * *aForm)
nsIDOMHTMLFormElement *
moz_dom_GetForm (htmllabelelement)
	nsIDOMHTMLLabelElement *htmllabelelement;
    PREINIT:
	nsIDOMHTMLFormElement * form;
    CODE:
	htmllabelelement->GetForm(&form);
	RETVAL = form;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLLabelElement::GetAccessKey

=for signature $accesskey = $htmllabelelement->GetAccessKey()



=cut

## GetAccessKey(nsAString & aAccessKey)
nsEmbedString
moz_dom_GetAccessKey (htmllabelelement)
	nsIDOMHTMLLabelElement *htmllabelelement;
    PREINIT:
	nsEmbedString accesskey;
    CODE:
	htmllabelelement->GetAccessKey(accesskey);
	RETVAL = accesskey;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLLabelElement::SetAccessKey

=for signature $htmllabelelement->SetAccessKey($accesskey)



=cut

## SetAccessKey(const nsAString & aAccessKey)
void
moz_dom_SetAccessKey (htmllabelelement, accesskey)
	nsIDOMHTMLLabelElement *htmllabelelement;
	nsEmbedString accesskey;
    CODE:
	htmllabelelement->SetAccessKey(accesskey);

=for apidoc Mozilla::DOM::HTMLLabelElement::GetHtmlFor

=for signature $htmlfor = $htmllabelelement->GetHtmlFor()



=cut

## GetHtmlFor(nsAString & aHtmlFor)
nsEmbedString
moz_dom_GetHtmlFor (htmllabelelement)
	nsIDOMHTMLLabelElement *htmllabelelement;
    PREINIT:
	nsEmbedString htmlfor;
    CODE:
	htmllabelelement->GetHtmlFor(htmlfor);
	RETVAL = htmlfor;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLLabelElement::SetHtmlFor

=for signature $htmllabelelement->SetHtmlFor($htmlfor)



=cut

## SetHtmlFor(const nsAString & aHtmlFor)
void
moz_dom_SetHtmlFor (htmllabelelement, htmlfor)
	nsIDOMHTMLLabelElement *htmllabelelement;
	nsEmbedString htmlfor;
    CODE:
	htmllabelelement->SetHtmlFor(htmlfor);

# -----------------------------------------------------------------------------

MODULE = Mozilla::DOM	PACKAGE = Mozilla::DOM::HTMLLegendElement	PREFIX = moz_dom_

# /usr/include/mozilla/nsIDOMHTMLLegendElement.h

=for object Mozilla::DOM::HTMLLegendElement

Mozilla::DOM::HTMLLegendElement is a wrapper around an instance of Mozilla's
nsIDOMHTMLLegendElement interface. This class inherits from
L<HTMLElement|Mozilla::DOM::HTMLElement>.

 * The nsIDOMHTMLLegendElement interface is the interface to a [X]HTML
 * legend element.
 *
 * For more information on this interface please see
 * http://www.w3.org/TR/DOM-Level-2-HTML/
 *
 * @status FROZEN


=cut

=head1 CLASS METHODS

=head2 $iid = Mozilla::DOM::HTMLLegendElement->B<GetIID>()

Pass this to QueryInterface.

=cut

## NS_DEFINE_STATIC_IID_ACCESSOR(NS_IDOMHTMLLEGENDELEMENT_IID)
static nsIID
nsIDOMHTMLLegendElement::GetIID()
    CODE:
	const nsIID &id = nsIDOMHTMLLegendElement::GetIID();
	RETVAL = (nsIID) id;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLLegendElement::GetForm

=for signature $form = $htmllegendelement->GetForm()



=cut

## GetForm(nsIDOMHTMLFormElement * *aForm)
nsIDOMHTMLFormElement *
moz_dom_GetForm (htmllegendelement)
	nsIDOMHTMLLegendElement *htmllegendelement;
    PREINIT:
	nsIDOMHTMLFormElement * form;
    CODE:
	htmllegendelement->GetForm(&form);
	RETVAL = form;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLLegendElement::GetAccessKey

=for signature $accesskey = $htmllegendelement->GetAccessKey()



=cut

## GetAccessKey(nsAString & aAccessKey)
nsEmbedString
moz_dom_GetAccessKey (htmllegendelement)
	nsIDOMHTMLLegendElement *htmllegendelement;
    PREINIT:
	nsEmbedString accesskey;
    CODE:
	htmllegendelement->GetAccessKey(accesskey);
	RETVAL = accesskey;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLLegendElement::SetAccessKey

=for signature $htmllegendelement->SetAccessKey($accesskey)



=cut

## SetAccessKey(const nsAString & aAccessKey)
void
moz_dom_SetAccessKey (htmllegendelement, accesskey)
	nsIDOMHTMLLegendElement *htmllegendelement;
	nsEmbedString accesskey;
    CODE:
	htmllegendelement->SetAccessKey(accesskey);

=for apidoc Mozilla::DOM::HTMLLegendElement::GetAlign

=for signature $align = $htmllegendelement->GetAlign()



=cut

## GetAlign(nsAString & aAlign)
nsEmbedString
moz_dom_GetAlign (htmllegendelement)
	nsIDOMHTMLLegendElement *htmllegendelement;
    PREINIT:
	nsEmbedString align;
    CODE:
	htmllegendelement->GetAlign(align);
	RETVAL = align;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLLegendElement::SetAlign

=for signature $htmllegendelement->SetAlign($align)



=cut

## SetAlign(const nsAString & aAlign)
void
moz_dom_SetAlign (htmllegendelement, align)
	nsIDOMHTMLLegendElement *htmllegendelement;
	nsEmbedString align;
    CODE:
	htmllegendelement->SetAlign(align);

# -----------------------------------------------------------------------------

MODULE = Mozilla::DOM	PACKAGE = Mozilla::DOM::HTMLLinkElement	PREFIX = moz_dom_

# /usr/include/mozilla/nsIDOMHTMLLinkElement.h

=for object Mozilla::DOM::HTMLLinkElement

Mozilla::DOM::HTMLLinkElement is a wrapper around an instance of Mozilla's
nsIDOMHTMLLinkElement interface. This class inherits from
L<HTMLElement|Mozilla::DOM::HTMLElement>.

 * The nsIDOMHTMLLinkElement interface is the interface to a [X]HTML
 * link element.
 *
 * For more information on this interface please see
 * http://www.w3.org/TR/DOM-Level-2-HTML/
 *
 * @status FROZEN


=cut

=head1 CLASS METHODS

=head2 $iid = Mozilla::DOM::HTMLLinkElement->B<GetIID>()

Pass this to QueryInterface.

=cut

## NS_DEFINE_STATIC_IID_ACCESSOR(NS_IDOMHTMLLINKELEMENT_IID)
static nsIID
nsIDOMHTMLLinkElement::GetIID()
    CODE:
	const nsIID &id = nsIDOMHTMLLinkElement::GetIID();
	RETVAL = (nsIID) id;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLLinkElement::GetDisabled

=for signature $bool = $htmllinkelement->GetDisabled()



=cut

## GetDisabled(PRBool *aDisabled)
PRBool
moz_dom_GetDisabled (htmllinkelement)
	nsIDOMHTMLLinkElement *htmllinkelement;
    PREINIT:
	PRBool disabled;
    CODE:
	htmllinkelement->GetDisabled(&disabled);
	RETVAL = disabled;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLLinkElement::SetDisabled

=for signature $htmllinkelement->SetDisabled($disabled)



=cut

## SetDisabled(PRBool aDisabled)
void
moz_dom_SetDisabled (htmllinkelement, disabled)
	nsIDOMHTMLLinkElement *htmllinkelement;
	PRBool  disabled;
    CODE:
	htmllinkelement->SetDisabled(disabled);

=for apidoc Mozilla::DOM::HTMLLinkElement::GetCharset

=for signature $charset = $htmllinkelement->GetCharset()



=cut

## GetCharset(nsAString & aCharset)
nsEmbedString
moz_dom_GetCharset (htmllinkelement)
	nsIDOMHTMLLinkElement *htmllinkelement;
    PREINIT:
	nsEmbedString charset;
    CODE:
	htmllinkelement->GetCharset(charset);
	RETVAL = charset;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLLinkElement::SetCharset

=for signature $htmllinkelement->SetCharset($charset)



=cut

## SetCharset(const nsAString & aCharset)
void
moz_dom_SetCharset (htmllinkelement, charset)
	nsIDOMHTMLLinkElement *htmllinkelement;
	nsEmbedString charset;
    CODE:
	htmllinkelement->SetCharset(charset);

=for apidoc Mozilla::DOM::HTMLLinkElement::GetHref

=for signature $href = $htmllinkelement->GetHref()



=cut

## GetHref(nsAString & aHref)
nsEmbedString
moz_dom_GetHref (htmllinkelement)
	nsIDOMHTMLLinkElement *htmllinkelement;
    PREINIT:
	nsEmbedString href;
    CODE:
	htmllinkelement->GetHref(href);
	RETVAL = href;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLLinkElement::SetHref

=for signature $htmllinkelement->SetHref($href)



=cut

## SetHref(const nsAString & aHref)
void
moz_dom_SetHref (htmllinkelement, href)
	nsIDOMHTMLLinkElement *htmllinkelement;
	nsEmbedString href;
    CODE:
	htmllinkelement->SetHref(href);

=for apidoc Mozilla::DOM::HTMLLinkElement::GetHreflang

=for signature $hreflang = $htmllinkelement->GetHreflang()



=cut

## GetHreflang(nsAString & aHreflang)
nsEmbedString
moz_dom_GetHreflang (htmllinkelement)
	nsIDOMHTMLLinkElement *htmllinkelement;
    PREINIT:
	nsEmbedString hreflang;
    CODE:
	htmllinkelement->GetHreflang(hreflang);
	RETVAL = hreflang;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLLinkElement::SetHreflang

=for signature $htmllinkelement->SetHreflang($hreflang)



=cut

## SetHreflang(const nsAString & aHreflang)
void
moz_dom_SetHreflang (htmllinkelement, hreflang)
	nsIDOMHTMLLinkElement *htmllinkelement;
	nsEmbedString hreflang;
    CODE:
	htmllinkelement->SetHreflang(hreflang);

=for apidoc Mozilla::DOM::HTMLLinkElement::GetMedia

=for signature $media = $htmllinkelement->GetMedia()



=cut

## GetMedia(nsAString & aMedia)
nsEmbedString
moz_dom_GetMedia (htmllinkelement)
	nsIDOMHTMLLinkElement *htmllinkelement;
    PREINIT:
	nsEmbedString media;
    CODE:
	htmllinkelement->GetMedia(media);
	RETVAL = media;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLLinkElement::SetMedia

=for signature $htmllinkelement->SetMedia($media)



=cut

## SetMedia(const nsAString & aMedia)
void
moz_dom_SetMedia (htmllinkelement, media)
	nsIDOMHTMLLinkElement *htmllinkelement;
	nsEmbedString media;
    CODE:
	htmllinkelement->SetMedia(media);

=for apidoc Mozilla::DOM::HTMLLinkElement::GetRel

=for signature $rel = $htmllinkelement->GetRel()



=cut

## GetRel(nsAString & aRel)
nsEmbedString
moz_dom_GetRel (htmllinkelement)
	nsIDOMHTMLLinkElement *htmllinkelement;
    PREINIT:
	nsEmbedString rel;
    CODE:
	htmllinkelement->GetRel(rel);
	RETVAL = rel;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLLinkElement::SetRel

=for signature $htmllinkelement->SetRel($rel)



=cut

## SetRel(const nsAString & aRel)
void
moz_dom_SetRel (htmllinkelement, rel)
	nsIDOMHTMLLinkElement *htmllinkelement;
	nsEmbedString rel;
    CODE:
	htmllinkelement->SetRel(rel);

=for apidoc Mozilla::DOM::HTMLLinkElement::GetRev

=for signature $rev = $htmllinkelement->GetRev()



=cut

## GetRev(nsAString & aRev)
nsEmbedString
moz_dom_GetRev (htmllinkelement)
	nsIDOMHTMLLinkElement *htmllinkelement;
    PREINIT:
	nsEmbedString rev;
    CODE:
	htmllinkelement->GetRev(rev);
	RETVAL = rev;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLLinkElement::SetRev

=for signature $htmllinkelement->SetRev($rev)



=cut

## SetRev(const nsAString & aRev)
void
moz_dom_SetRev (htmllinkelement, rev)
	nsIDOMHTMLLinkElement *htmllinkelement;
	nsEmbedString rev;
    CODE:
	htmllinkelement->SetRev(rev);

=for apidoc Mozilla::DOM::HTMLLinkElement::GetTarget

=for signature $target = $htmllinkelement->GetTarget()



=cut

## GetTarget(nsAString & aTarget)
nsEmbedString
moz_dom_GetTarget (htmllinkelement)
	nsIDOMHTMLLinkElement *htmllinkelement;
    PREINIT:
	nsEmbedString target;
    CODE:
	htmllinkelement->GetTarget(target);
	RETVAL = target;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLLinkElement::SetTarget

=for signature $htmllinkelement->SetTarget($target)



=cut

## SetTarget(const nsAString & aTarget)
void
moz_dom_SetTarget (htmllinkelement, target)
	nsIDOMHTMLLinkElement *htmllinkelement;
	nsEmbedString target;
    CODE:
	htmllinkelement->SetTarget(target);

=for apidoc Mozilla::DOM::HTMLLinkElement::GetType

=for signature $type = $htmllinkelement->GetType()



=cut

## GetType(nsAString & aType)
nsEmbedString
moz_dom_GetType (htmllinkelement)
	nsIDOMHTMLLinkElement *htmllinkelement;
    PREINIT:
	nsEmbedString type;
    CODE:
	htmllinkelement->GetType(type);
	RETVAL = type;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLLinkElement::SetType

=for signature $htmllinkelement->SetType($type)



=cut

## SetType(const nsAString & aType)
void
moz_dom_SetType (htmllinkelement, type)
	nsIDOMHTMLLinkElement *htmllinkelement;
	nsEmbedString type;
    CODE:
	htmllinkelement->SetType(type);

# -----------------------------------------------------------------------------

MODULE = Mozilla::DOM	PACKAGE = Mozilla::DOM::HTMLMapElement	PREFIX = moz_dom_

# /usr/include/mozilla/nsIDOMHTMLMapElement.h

=for object Mozilla::DOM::HTMLMapElement

Mozilla::DOM::HTMLMapElement is a wrapper around an instance of Mozilla's
nsIDOMHTMLMapElement interface. This class inherits from
L<HTMLElement|Mozilla::DOM::HTMLElement>.

 * The nsIDOMHTMLMapElement interface is the interface to a [X]HTML
 * map element.
 *
 * For more information on this interface please see
 * http://www.w3.org/TR/DOM-Level-2-HTML/
 *
 * @status FROZEN


=cut

=head1 CLASS METHODS

=head2 $iid = Mozilla::DOM::HTMLMapElement->B<GetIID>()

Pass this to QueryInterface.

=cut

## NS_DEFINE_STATIC_IID_ACCESSOR(NS_IDOMHTMLMAPELEMENT_IID)
static nsIID
nsIDOMHTMLMapElement::GetIID()
    CODE:
	const nsIID &id = nsIDOMHTMLMapElement::GetIID();
	RETVAL = (nsIID) id;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLMapElement::GetAreas

=for signature $areas = $htmlmapelement->GetAreas()



=cut

## GetAreas(nsIDOMHTMLCollection * *aAreas)
nsIDOMHTMLCollection *
moz_dom_GetAreas (htmlmapelement)
	nsIDOMHTMLMapElement *htmlmapelement;
    PREINIT:
	nsIDOMHTMLCollection * areas;
    CODE:
	htmlmapelement->GetAreas(&areas);
	RETVAL = areas;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLMapElement::GetName

=for signature $name = $htmlmapelement->GetName()



=cut

## GetName(nsAString & aName)
nsEmbedString
moz_dom_GetName (htmlmapelement)
	nsIDOMHTMLMapElement *htmlmapelement;
    PREINIT:
	nsEmbedString name;
    CODE:
	htmlmapelement->GetName(name);
	RETVAL = name;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLMapElement::SetName

=for signature $htmlmapelement->SetName($name)



=cut

## SetName(const nsAString & aName)
void
moz_dom_SetName (htmlmapelement, name)
	nsIDOMHTMLMapElement *htmlmapelement;
	nsEmbedString name;
    CODE:
	htmlmapelement->SetName(name);

# -----------------------------------------------------------------------------

MODULE = Mozilla::DOM	PACKAGE = Mozilla::DOM::HTMLMenuElement	PREFIX = moz_dom_

# /usr/include/mozilla/nsIDOMHTMLMenuElement.h

=for object Mozilla::DOM::HTMLMenuElement

Mozilla::DOM::HTMLMenuElement is a wrapper around an instance of Mozilla's
nsIDOMHTMLMenuElement interface. This class inherits from
L<HTMLElement|Mozilla::DOM::HTMLElement>.

 * The nsIDOMHTMLMenuElement interface is the interface to a [X]HTML
 * menu element.
 *
 * For more information on this interface please see
 * http://www.w3.org/TR/DOM-Level-2-HTML/
 *
 * @status FROZEN


=cut

=head1 CLASS METHODS

=head2 $iid = Mozilla::DOM::HTMLMenuElement->B<GetIID>()

Pass this to QueryInterface.

=cut

## NS_DEFINE_STATIC_IID_ACCESSOR(NS_IDOMHTMLMENUELEMENT_IID)
static nsIID
nsIDOMHTMLMenuElement::GetIID()
    CODE:
	const nsIID &id = nsIDOMHTMLMenuElement::GetIID();
	RETVAL = (nsIID) id;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLMenuElement::GetCompact

=for signature $bool = $htmlmenuelement->GetCompact()



=cut

## GetCompact(PRBool *aCompact)
PRBool
moz_dom_GetCompact (htmlmenuelement)
	nsIDOMHTMLMenuElement *htmlmenuelement;
    PREINIT:
	PRBool compact;
    CODE:
	htmlmenuelement->GetCompact(&compact);
	RETVAL = compact;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLMenuElement::SetCompact

=for signature $htmlmenuelement->SetCompact($compact)



=cut

## SetCompact(PRBool aCompact)
void
moz_dom_SetCompact (htmlmenuelement, compact)
	nsIDOMHTMLMenuElement *htmlmenuelement;
	PRBool  compact;
    CODE:
	htmlmenuelement->SetCompact(compact);

# -----------------------------------------------------------------------------

MODULE = Mozilla::DOM	PACKAGE = Mozilla::DOM::HTMLMetaElement	PREFIX = moz_dom_

# /usr/include/mozilla/nsIDOMHTMLMetaElement.h

=for object Mozilla::DOM::HTMLMetaElement

Mozilla::DOM::HTMLMetaElement is a wrapper around an instance of Mozilla's
nsIDOMHTMLMetaElement interface. This class inherits from
L<HTMLElement|Mozilla::DOM::HTMLElement>.

 * The nsIDOMHTMLMetaElement interface is the interface to a [X]HTML
 * meta element.
 *
 * For more information on this interface please see
 * http://www.w3.org/TR/DOM-Level-2-HTML/
 *
 * @status FROZEN


=cut

=head1 CLASS METHODS

=head2 $iid = Mozilla::DOM::HTMLMetaElement->B<GetIID>()

Pass this to QueryInterface.

=cut

## NS_DEFINE_STATIC_IID_ACCESSOR(NS_IDOMHTMLMETAELEMENT_IID)
static nsIID
nsIDOMHTMLMetaElement::GetIID()
    CODE:
	const nsIID &id = nsIDOMHTMLMetaElement::GetIID();
	RETVAL = (nsIID) id;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLMetaElement::GetContent

=for signature $content = $htmlmetaelement->GetContent()



=cut

## GetContent(nsAString & aContent)
nsEmbedString
moz_dom_GetContent (htmlmetaelement)
	nsIDOMHTMLMetaElement *htmlmetaelement;
    PREINIT:
	nsEmbedString content;
    CODE:
	htmlmetaelement->GetContent(content);
	RETVAL = content;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLMetaElement::SetContent

=for signature $htmlmetaelement->SetContent($content)



=cut

## SetContent(const nsAString & aContent)
void
moz_dom_SetContent (htmlmetaelement, content)
	nsIDOMHTMLMetaElement *htmlmetaelement;
	nsEmbedString content;
    CODE:
	htmlmetaelement->SetContent(content);

=for apidoc Mozilla::DOM::HTMLMetaElement::GetHttpEquiv

=for signature $httpequiv = $htmlmetaelement->GetHttpEquiv()



=cut

## GetHttpEquiv(nsAString & aHttpEquiv)
nsEmbedString
moz_dom_GetHttpEquiv (htmlmetaelement)
	nsIDOMHTMLMetaElement *htmlmetaelement;
    PREINIT:
	nsEmbedString httpequiv;
    CODE:
	htmlmetaelement->GetHttpEquiv(httpequiv);
	RETVAL = httpequiv;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLMetaElement::SetHttpEquiv

=for signature $htmlmetaelement->SetHttpEquiv($httpequiv)



=cut

## SetHttpEquiv(const nsAString & aHttpEquiv)
void
moz_dom_SetHttpEquiv (htmlmetaelement, httpequiv)
	nsIDOMHTMLMetaElement *htmlmetaelement;
	nsEmbedString httpequiv;
    CODE:
	htmlmetaelement->SetHttpEquiv(httpequiv);

=for apidoc Mozilla::DOM::HTMLMetaElement::GetName

=for signature $name = $htmlmetaelement->GetName()



=cut

## GetName(nsAString & aName)
nsEmbedString
moz_dom_GetName (htmlmetaelement)
	nsIDOMHTMLMetaElement *htmlmetaelement;
    PREINIT:
	nsEmbedString name;
    CODE:
	htmlmetaelement->GetName(name);
	RETVAL = name;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLMetaElement::SetName

=for signature $htmlmetaelement->SetName($name)



=cut

## SetName(const nsAString & aName)
void
moz_dom_SetName (htmlmetaelement, name)
	nsIDOMHTMLMetaElement *htmlmetaelement;
	nsEmbedString name;
    CODE:
	htmlmetaelement->SetName(name);

=for apidoc Mozilla::DOM::HTMLMetaElement::GetScheme

=for signature $scheme = $htmlmetaelement->GetScheme()



=cut

## GetScheme(nsAString & aScheme)
nsEmbedString
moz_dom_GetScheme (htmlmetaelement)
	nsIDOMHTMLMetaElement *htmlmetaelement;
    PREINIT:
	nsEmbedString scheme;
    CODE:
	htmlmetaelement->GetScheme(scheme);
	RETVAL = scheme;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLMetaElement::SetScheme

=for signature $htmlmetaelement->SetScheme($scheme)



=cut

## SetScheme(const nsAString & aScheme)
void
moz_dom_SetScheme (htmlmetaelement, scheme)
	nsIDOMHTMLMetaElement *htmlmetaelement;
	nsEmbedString scheme;
    CODE:
	htmlmetaelement->SetScheme(scheme);

# -----------------------------------------------------------------------------

MODULE = Mozilla::DOM	PACKAGE = Mozilla::DOM::HTMLModElement	PREFIX = moz_dom_

# /usr/include/mozilla/nsIDOMHTMLModElement.h

=for object Mozilla::DOM::HTMLModElement

Mozilla::DOM::HTMLModElement is a wrapper around an instance of Mozilla's
nsIDOMHTMLModElement interface. This class inherits from
L<HTMLElement|Mozilla::DOM::HTMLElement>.

 * The nsIDOMHTMLModElement interface is the interface to a [X]HTML
 * ins and del element.
 *
 * For more information on this interface please see
 * http://www.w3.org/TR/DOM-Level-2-HTML/
 *
 * @status FROZEN


=cut

=head1 CLASS METHODS

=head2 $iid = Mozilla::DOM::HTMLModElement->B<GetIID>()

Pass this to QueryInterface.

=cut

## NS_DEFINE_STATIC_IID_ACCESSOR(NS_IDOMHTMLMODELEMENT_IID)
static nsIID
nsIDOMHTMLModElement::GetIID()
    CODE:
	const nsIID &id = nsIDOMHTMLModElement::GetIID();
	RETVAL = (nsIID) id;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLModElement::GetCite

=for signature $cite = $htmlmodelement->GetCite()



=cut

## GetCite(nsAString & aCite)
nsEmbedString
moz_dom_GetCite (htmlmodelement)
	nsIDOMHTMLModElement *htmlmodelement;
    PREINIT:
	nsEmbedString cite;
    CODE:
	htmlmodelement->GetCite(cite);
	RETVAL = cite;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLModElement::SetCite

=for signature $htmlmodelement->SetCite($cite)



=cut

## SetCite(const nsAString & aCite)
void
moz_dom_SetCite (htmlmodelement, cite)
	nsIDOMHTMLModElement *htmlmodelement;
	nsEmbedString cite;
    CODE:
	htmlmodelement->SetCite(cite);

=for apidoc Mozilla::DOM::HTMLModElement::GetDateTime

=for signature $datetime = $htmlmodelement->GetDateTime()



=cut

## GetDateTime(nsAString & aDateTime)
nsEmbedString
moz_dom_GetDateTime (htmlmodelement)
	nsIDOMHTMLModElement *htmlmodelement;
    PREINIT:
	nsEmbedString datetime;
    CODE:
	htmlmodelement->GetDateTime(datetime);
	RETVAL = datetime;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLModElement::SetDateTime

=for signature $htmlmodelement->SetDateTime($datetime)



=cut

## SetDateTime(const nsAString & aDateTime)
void
moz_dom_SetDateTime (htmlmodelement, datetime)
	nsIDOMHTMLModElement *htmlmodelement;
	nsEmbedString datetime;
    CODE:
	htmlmodelement->SetDateTime(datetime);

# -----------------------------------------------------------------------------

MODULE = Mozilla::DOM	PACKAGE = Mozilla::DOM::HTMLOListElement	PREFIX = moz_dom_

# /usr/include/mozilla/nsIDOMHTMLOListElement.h

=for object Mozilla::DOM::HTMLOListElement

Mozilla::DOM::HTMLOListElement is a wrapper around an instance of Mozilla's
nsIDOMHTMLOListElement interface. This class inherits from
L<HTMLElement|Mozilla::DOM::HTMLElement>.

 * The nsIDOMHTMLOListElement interface is the interface to a [X]HTML
 * ol element.
 *
 * For more information on this interface please see
 * http://www.w3.org/TR/DOM-Level-2-HTML/
 *
 * @status FROZEN


=cut

=head1 CLASS METHODS

=head2 $iid = Mozilla::DOM::HTMLOListElement->B<GetIID>()

Pass this to QueryInterface.

=cut

## NS_DEFINE_STATIC_IID_ACCESSOR(NS_IDOMHTMLOLISTELEMENT_IID)
static nsIID
nsIDOMHTMLOListElement::GetIID()
    CODE:
	const nsIID &id = nsIDOMHTMLOListElement::GetIID();
	RETVAL = (nsIID) id;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLOListElement::GetCompact

=for signature $bool = $htmlolistelement->GetCompact()



=cut

## GetCompact(PRBool *aCompact)
PRBool
moz_dom_GetCompact (htmlolistelement)
	nsIDOMHTMLOListElement *htmlolistelement;
    PREINIT:
	PRBool compact;
    CODE:
	htmlolistelement->GetCompact(&compact);
	RETVAL = compact;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLOListElement::SetCompact

=for signature $htmlolistelement->SetCompact($compact)



=cut

## SetCompact(PRBool aCompact)
void
moz_dom_SetCompact (htmlolistelement, compact)
	nsIDOMHTMLOListElement *htmlolistelement;
	PRBool  compact;
    CODE:
	htmlolistelement->SetCompact(compact);

=for apidoc Mozilla::DOM::HTMLOListElement::GetStart

=for signature $start = $htmlolistelement->GetStart()



=cut

## GetStart(PRInt32 *aStart)
PRInt32
moz_dom_GetStart (htmlolistelement)
	nsIDOMHTMLOListElement *htmlolistelement;
    PREINIT:
	PRInt32 start;
    CODE:
	htmlolistelement->GetStart(&start);
	RETVAL = start;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLOListElement::SetStart

=for signature $htmlolistelement->SetStart($start)



=cut

## SetStart(PRInt32 aStart)
void
moz_dom_SetStart (htmlolistelement, start)
	nsIDOMHTMLOListElement *htmlolistelement;
	PRInt32  start;
    CODE:
	htmlolistelement->SetStart(start);

=for apidoc Mozilla::DOM::HTMLOListElement::GetType

=for signature $type = $htmlolistelement->GetType()



=cut

## GetType(nsAString & aType)
nsEmbedString
moz_dom_GetType (htmlolistelement)
	nsIDOMHTMLOListElement *htmlolistelement;
    PREINIT:
	nsEmbedString type;
    CODE:
	htmlolistelement->GetType(type);
	RETVAL = type;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLOListElement::SetType

=for signature $htmlolistelement->SetType($type)



=cut

## SetType(const nsAString & aType)
void
moz_dom_SetType (htmlolistelement, type)
	nsIDOMHTMLOListElement *htmlolistelement;
	nsEmbedString type;
    CODE:
	htmlolistelement->SetType(type);

# -----------------------------------------------------------------------------

MODULE = Mozilla::DOM	PACKAGE = Mozilla::DOM::HTMLObjectElement	PREFIX = moz_dom_

# /usr/include/mozilla/nsIDOMHTMLObjectElement.h

=for object Mozilla::DOM::HTMLObjectElement

Mozilla::DOM::HTMLObjectElement is a wrapper around an instance of Mozilla's
nsIDOMHTMLObjectElement interface. This class inherits from
L<HTMLElement|Mozilla::DOM::HTMLElement>.

 * The nsIDOMHTMLObjectElement interface is the interface to a [X]HTML
 * object element.
 *
 * For more information on this interface please see
 * http://www.w3.org/TR/DOM-Level-2-HTML/
 *
 * @status FROZEN


=cut

=head1 CLASS METHODS

=head2 $iid = Mozilla::DOM::HTMLObjectElement->B<GetIID>()

Pass this to QueryInterface.

=cut

## NS_DEFINE_STATIC_IID_ACCESSOR(NS_IDOMHTMLOBJECTELEMENT_IID)
static nsIID
nsIDOMHTMLObjectElement::GetIID()
    CODE:
	const nsIID &id = nsIDOMHTMLObjectElement::GetIID();
	RETVAL = (nsIID) id;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLObjectElement::GetForm

=for signature $form = $htmlobjectelement->GetForm()



=cut

## GetForm(nsIDOMHTMLFormElement * *aForm)
nsIDOMHTMLFormElement *
moz_dom_GetForm (htmlobjectelement)
	nsIDOMHTMLObjectElement *htmlobjectelement;
    PREINIT:
	nsIDOMHTMLFormElement * form;
    CODE:
	htmlobjectelement->GetForm(&form);
	RETVAL = form;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLObjectElement::GetCode

=for signature $code = $htmlobjectelement->GetCode()



=cut

## GetCode(nsAString & aCode)
nsEmbedString
moz_dom_GetCode (htmlobjectelement)
	nsIDOMHTMLObjectElement *htmlobjectelement;
    PREINIT:
	nsEmbedString code;
    CODE:
	htmlobjectelement->GetCode(code);
	RETVAL = code;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLObjectElement::SetCode

=for signature $htmlobjectelement->SetCode($code)



=cut

## SetCode(const nsAString & aCode)
void
moz_dom_SetCode (htmlobjectelement, code)
	nsIDOMHTMLObjectElement *htmlobjectelement;
	nsEmbedString code;
    CODE:
	htmlobjectelement->SetCode(code);

=for apidoc Mozilla::DOM::HTMLObjectElement::GetAlign

=for signature $align = $htmlobjectelement->GetAlign()



=cut

## GetAlign(nsAString & aAlign)
nsEmbedString
moz_dom_GetAlign (htmlobjectelement)
	nsIDOMHTMLObjectElement *htmlobjectelement;
    PREINIT:
	nsEmbedString align;
    CODE:
	htmlobjectelement->GetAlign(align);
	RETVAL = align;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLObjectElement::SetAlign

=for signature $htmlobjectelement->SetAlign($align)



=cut

## SetAlign(const nsAString & aAlign)
void
moz_dom_SetAlign (htmlobjectelement, align)
	nsIDOMHTMLObjectElement *htmlobjectelement;
	nsEmbedString align;
    CODE:
	htmlobjectelement->SetAlign(align);

=for apidoc Mozilla::DOM::HTMLObjectElement::GetArchive

=for signature $archive = $htmlobjectelement->GetArchive()



=cut

## GetArchive(nsAString & aArchive)
nsEmbedString
moz_dom_GetArchive (htmlobjectelement)
	nsIDOMHTMLObjectElement *htmlobjectelement;
    PREINIT:
	nsEmbedString archive;
    CODE:
	htmlobjectelement->GetArchive(archive);
	RETVAL = archive;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLObjectElement::SetArchive

=for signature $htmlobjectelement->SetArchive($archive)



=cut

## SetArchive(const nsAString & aArchive)
void
moz_dom_SetArchive (htmlobjectelement, archive)
	nsIDOMHTMLObjectElement *htmlobjectelement;
	nsEmbedString archive;
    CODE:
	htmlobjectelement->SetArchive(archive);

=for apidoc Mozilla::DOM::HTMLObjectElement::GetBorder

=for signature $border = $htmlobjectelement->GetBorder()



=cut

## GetBorder(nsAString & aBorder)
nsEmbedString
moz_dom_GetBorder (htmlobjectelement)
	nsIDOMHTMLObjectElement *htmlobjectelement;
    PREINIT:
	nsEmbedString border;
    CODE:
	htmlobjectelement->GetBorder(border);
	RETVAL = border;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLObjectElement::SetBorder

=for signature $htmlobjectelement->SetBorder($border)



=cut

## SetBorder(const nsAString & aBorder)
void
moz_dom_SetBorder (htmlobjectelement, border)
	nsIDOMHTMLObjectElement *htmlobjectelement;
	nsEmbedString border;
    CODE:
	htmlobjectelement->SetBorder(border);

=for apidoc Mozilla::DOM::HTMLObjectElement::GetCodeBase

=for signature $codebase = $htmlobjectelement->GetCodeBase()



=cut

## GetCodeBase(nsAString & aCodeBase)
nsEmbedString
moz_dom_GetCodeBase (htmlobjectelement)
	nsIDOMHTMLObjectElement *htmlobjectelement;
    PREINIT:
	nsEmbedString codebase;
    CODE:
	htmlobjectelement->GetCodeBase(codebase);
	RETVAL = codebase;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLObjectElement::SetCodeBase

=for signature $htmlobjectelement->SetCodeBase($codebase)



=cut

## SetCodeBase(const nsAString & aCodeBase)
void
moz_dom_SetCodeBase (htmlobjectelement, codebase)
	nsIDOMHTMLObjectElement *htmlobjectelement;
	nsEmbedString codebase;
    CODE:
	htmlobjectelement->SetCodeBase(codebase);

=for apidoc Mozilla::DOM::HTMLObjectElement::GetCodeType

=for signature $codetype = $htmlobjectelement->GetCodeType()



=cut

## GetCodeType(nsAString & aCodeType)
nsEmbedString
moz_dom_GetCodeType (htmlobjectelement)
	nsIDOMHTMLObjectElement *htmlobjectelement;
    PREINIT:
	nsEmbedString codetype;
    CODE:
	htmlobjectelement->GetCodeType(codetype);
	RETVAL = codetype;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLObjectElement::SetCodeType

=for signature $htmlobjectelement->SetCodeType($codetype)



=cut

## SetCodeType(const nsAString & aCodeType)
void
moz_dom_SetCodeType (htmlobjectelement, codetype)
	nsIDOMHTMLObjectElement *htmlobjectelement;
	nsEmbedString codetype;
    CODE:
	htmlobjectelement->SetCodeType(codetype);

=for apidoc Mozilla::DOM::HTMLObjectElement::GetData

=for signature $data = $htmlobjectelement->GetData()



=cut

## GetData(nsAString & aData)
nsEmbedString
moz_dom_GetData (htmlobjectelement)
	nsIDOMHTMLObjectElement *htmlobjectelement;
    PREINIT:
	nsEmbedString data;
    CODE:
	htmlobjectelement->GetData(data);
	RETVAL = data;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLObjectElement::SetData

=for signature $htmlobjectelement->SetData($data)



=cut

## SetData(const nsAString & aData)
void
moz_dom_SetData (htmlobjectelement, data)
	nsIDOMHTMLObjectElement *htmlobjectelement;
	nsEmbedString data;
    CODE:
	htmlobjectelement->SetData(data);

=for apidoc Mozilla::DOM::HTMLObjectElement::GetDeclare

=for signature $bool = $htmlobjectelement->GetDeclare()



=cut

## GetDeclare(PRBool *aDeclare)
PRBool
moz_dom_GetDeclare (htmlobjectelement)
	nsIDOMHTMLObjectElement *htmlobjectelement;
    PREINIT:
	PRBool declare;
    CODE:
	htmlobjectelement->GetDeclare(&declare);
	RETVAL = declare;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLObjectElement::SetDeclare

=for signature $htmlobjectelement->SetDeclare($declare)



=cut

## SetDeclare(PRBool aDeclare)
void
moz_dom_SetDeclare (htmlobjectelement, declare)
	nsIDOMHTMLObjectElement *htmlobjectelement;
	PRBool  declare;
    CODE:
	htmlobjectelement->SetDeclare(declare);

=for apidoc Mozilla::DOM::HTMLObjectElement::GetHeight

=for signature $height = $htmlobjectelement->GetHeight()



=cut

## GetHeight(nsAString & aHeight)
nsEmbedString
moz_dom_GetHeight (htmlobjectelement)
	nsIDOMHTMLObjectElement *htmlobjectelement;
    PREINIT:
	nsEmbedString height;
    CODE:
	htmlobjectelement->GetHeight(height);
	RETVAL = height;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLObjectElement::SetHeight

=for signature $htmlobjectelement->SetHeight($height)



=cut

## SetHeight(const nsAString & aHeight)
void
moz_dom_SetHeight (htmlobjectelement, height)
	nsIDOMHTMLObjectElement *htmlobjectelement;
	nsEmbedString height;
    CODE:
	htmlobjectelement->SetHeight(height);

=for apidoc Mozilla::DOM::HTMLObjectElement::GetHspace

=for signature $hspace = $htmlobjectelement->GetHspace()



=cut

## GetHspace(PRInt32 *aHspace)
PRInt32
moz_dom_GetHspace (htmlobjectelement)
	nsIDOMHTMLObjectElement *htmlobjectelement;
    PREINIT:
	PRInt32 hspace;
    CODE:
	htmlobjectelement->GetHspace(&hspace);
	RETVAL = hspace;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLObjectElement::SetHspace

=for signature $htmlobjectelement->SetHspace($hspace)



=cut

## SetHspace(PRInt32 aHspace)
void
moz_dom_SetHspace (htmlobjectelement, hspace)
	nsIDOMHTMLObjectElement *htmlobjectelement;
	PRInt32  hspace;
    CODE:
	htmlobjectelement->SetHspace(hspace);

=for apidoc Mozilla::DOM::HTMLObjectElement::GetName

=for signature $name = $htmlobjectelement->GetName()



=cut

## GetName(nsAString & aName)
nsEmbedString
moz_dom_GetName (htmlobjectelement)
	nsIDOMHTMLObjectElement *htmlobjectelement;
    PREINIT:
	nsEmbedString name;
    CODE:
	htmlobjectelement->GetName(name);
	RETVAL = name;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLObjectElement::SetName

=for signature $htmlobjectelement->SetName($name)



=cut

## SetName(const nsAString & aName)
void
moz_dom_SetName (htmlobjectelement, name)
	nsIDOMHTMLObjectElement *htmlobjectelement;
	nsEmbedString name;
    CODE:
	htmlobjectelement->SetName(name);

=for apidoc Mozilla::DOM::HTMLObjectElement::GetStandby

=for signature $standby = $htmlobjectelement->GetStandby()



=cut

## GetStandby(nsAString & aStandby)
nsEmbedString
moz_dom_GetStandby (htmlobjectelement)
	nsIDOMHTMLObjectElement *htmlobjectelement;
    PREINIT:
	nsEmbedString standby;
    CODE:
	htmlobjectelement->GetStandby(standby);
	RETVAL = standby;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLObjectElement::SetStandby

=for signature $htmlobjectelement->SetStandby($standby)



=cut

## SetStandby(const nsAString & aStandby)
void
moz_dom_SetStandby (htmlobjectelement, standby)
	nsIDOMHTMLObjectElement *htmlobjectelement;
	nsEmbedString standby;
    CODE:
	htmlobjectelement->SetStandby(standby);

=for apidoc Mozilla::DOM::HTMLObjectElement::GetTabIndex

=for signature $tabindex = $htmlobjectelement->GetTabIndex()



=cut

## GetTabIndex(PRInt32 *aTabIndex)
PRInt32
moz_dom_GetTabIndex (htmlobjectelement)
	nsIDOMHTMLObjectElement *htmlobjectelement;
    PREINIT:
	PRInt32 tabindex;
    CODE:
	htmlobjectelement->GetTabIndex(&tabindex);
	RETVAL = tabindex;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLObjectElement::SetTabIndex

=for signature $htmlobjectelement->SetTabIndex($tabindex)



=cut

## SetTabIndex(PRInt32 aTabIndex)
void
moz_dom_SetTabIndex (htmlobjectelement, tabindex)
	nsIDOMHTMLObjectElement *htmlobjectelement;
	PRInt32  tabindex;
    CODE:
	htmlobjectelement->SetTabIndex(tabindex);

=for apidoc Mozilla::DOM::HTMLObjectElement::GetType

=for signature $type = $htmlobjectelement->GetType()



=cut

## GetType(nsAString & aType)
nsEmbedString
moz_dom_GetType (htmlobjectelement)
	nsIDOMHTMLObjectElement *htmlobjectelement;
    PREINIT:
	nsEmbedString type;
    CODE:
	htmlobjectelement->GetType(type);
	RETVAL = type;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLObjectElement::SetType

=for signature $htmlobjectelement->SetType($type)



=cut

## SetType(const nsAString & aType)
void
moz_dom_SetType (htmlobjectelement, type)
	nsIDOMHTMLObjectElement *htmlobjectelement;
	nsEmbedString type;
    CODE:
	htmlobjectelement->SetType(type);

=for apidoc Mozilla::DOM::HTMLObjectElement::GetUseMap

=for signature $usemap = $htmlobjectelement->GetUseMap()



=cut

## GetUseMap(nsAString & aUseMap)
nsEmbedString
moz_dom_GetUseMap (htmlobjectelement)
	nsIDOMHTMLObjectElement *htmlobjectelement;
    PREINIT:
	nsEmbedString usemap;
    CODE:
	htmlobjectelement->GetUseMap(usemap);
	RETVAL = usemap;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLObjectElement::SetUseMap

=for signature $htmlobjectelement->SetUseMap($usemap)



=cut

## SetUseMap(const nsAString & aUseMap)
void
moz_dom_SetUseMap (htmlobjectelement, usemap)
	nsIDOMHTMLObjectElement *htmlobjectelement;
	nsEmbedString usemap;
    CODE:
	htmlobjectelement->SetUseMap(usemap);

=for apidoc Mozilla::DOM::HTMLObjectElement::GetVspace

=for signature $vspace = $htmlobjectelement->GetVspace()



=cut

## GetVspace(PRInt32 *aVspace)
PRInt32
moz_dom_GetVspace (htmlobjectelement)
	nsIDOMHTMLObjectElement *htmlobjectelement;
    PREINIT:
	PRInt32 vspace;
    CODE:
	htmlobjectelement->GetVspace(&vspace);
	RETVAL = vspace;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLObjectElement::SetVspace

=for signature $htmlobjectelement->SetVspace($vspace)



=cut

## SetVspace(PRInt32 aVspace)
void
moz_dom_SetVspace (htmlobjectelement, vspace)
	nsIDOMHTMLObjectElement *htmlobjectelement;
	PRInt32  vspace;
    CODE:
	htmlobjectelement->SetVspace(vspace);

=for apidoc Mozilla::DOM::HTMLObjectElement::GetWidth

=for signature $width = $htmlobjectelement->GetWidth()



=cut

## GetWidth(nsAString & aWidth)
nsEmbedString
moz_dom_GetWidth (htmlobjectelement)
	nsIDOMHTMLObjectElement *htmlobjectelement;
    PREINIT:
	nsEmbedString width;
    CODE:
	htmlobjectelement->GetWidth(width);
	RETVAL = width;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLObjectElement::SetWidth

=for signature $htmlobjectelement->SetWidth($width)



=cut

## SetWidth(const nsAString & aWidth)
void
moz_dom_SetWidth (htmlobjectelement, width)
	nsIDOMHTMLObjectElement *htmlobjectelement;
	nsEmbedString width;
    CODE:
	htmlobjectelement->SetWidth(width);

=for apidoc Mozilla::DOM::HTMLObjectElement::GetContentDocument

=for signature $contentdocument = $htmlobjectelement->GetContentDocument()



=cut

## GetContentDocument(nsIDOMDocument * *aContentDocument)
nsIDOMDocument *
moz_dom_GetContentDocument (htmlobjectelement)
	nsIDOMHTMLObjectElement *htmlobjectelement;
    PREINIT:
	nsIDOMDocument * contentdocument;
    CODE:
	htmlobjectelement->GetContentDocument(&contentdocument);
	RETVAL = contentdocument;
    OUTPUT:
	RETVAL

# -----------------------------------------------------------------------------

MODULE = Mozilla::DOM	PACKAGE = Mozilla::DOM::HTMLOptGroupElement	PREFIX = moz_dom_

# /usr/include/mozilla/nsIDOMHTMLOptGroupElement.h

=for object Mozilla::DOM::HTMLOptGroupElement

Mozilla::DOM::HTMLOptGroupElement is a wrapper around an instance of Mozilla's
nsIDOMHTMLOptGroupElement interface. This class inherits from
L<HTMLElement|Mozilla::DOM::HTMLElement>.

 * The nsIDOMHTMLOptGroupElement interface is the interface to a
 * [X]HTML optgroup element.
 *
 * For more information on this interface please see
 * http://www.w3.org/TR/DOM-Level-2-HTML/
 *
 * @status FROZEN


=cut

=head1 CLASS METHODS

=head2 $iid = Mozilla::DOM::HTMLOptGroupElement->B<GetIID>()

Pass this to QueryInterface.

=cut

## NS_DEFINE_STATIC_IID_ACCESSOR(NS_IDOMHTMLOPTGROUPELEMENT_IID)
static nsIID
nsIDOMHTMLOptGroupElement::GetIID()
    CODE:
	const nsIID &id = nsIDOMHTMLOptGroupElement::GetIID();
	RETVAL = (nsIID) id;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLOptGroupElement::GetDisabled

=for signature $bool = $htmloptgroupelement->GetDisabled()



=cut

## GetDisabled(PRBool *aDisabled)
PRBool
moz_dom_GetDisabled (htmloptgroupelement)
	nsIDOMHTMLOptGroupElement *htmloptgroupelement;
    PREINIT:
	PRBool disabled;
    CODE:
	htmloptgroupelement->GetDisabled(&disabled);
	RETVAL = disabled;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLOptGroupElement::SetDisabled

=for signature $htmloptgroupelement->SetDisabled($disabled)



=cut

## SetDisabled(PRBool aDisabled)
void
moz_dom_SetDisabled (htmloptgroupelement, disabled)
	nsIDOMHTMLOptGroupElement *htmloptgroupelement;
	PRBool  disabled;
    CODE:
	htmloptgroupelement->SetDisabled(disabled);

=for apidoc Mozilla::DOM::HTMLOptGroupElement::GetLabel

=for signature $label = $htmloptgroupelement->GetLabel()



=cut

## GetLabel(nsAString & aLabel)
nsEmbedString
moz_dom_GetLabel (htmloptgroupelement)
	nsIDOMHTMLOptGroupElement *htmloptgroupelement;
    PREINIT:
	nsEmbedString label;
    CODE:
	htmloptgroupelement->GetLabel(label);
	RETVAL = label;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLOptGroupElement::SetLabel

=for signature $htmloptgroupelement->SetLabel($label)



=cut

## SetLabel(const nsAString & aLabel)
void
moz_dom_SetLabel (htmloptgroupelement, label)
	nsIDOMHTMLOptGroupElement *htmloptgroupelement;
	nsEmbedString label;
    CODE:
	htmloptgroupelement->SetLabel(label);

# -----------------------------------------------------------------------------

MODULE = Mozilla::DOM	PACKAGE = Mozilla::DOM::HTMLOptionElement	PREFIX = moz_dom_

# /usr/include/mozilla/nsIDOMHTMLOptionElement.h

=for object Mozilla::DOM::HTMLOptionElement

Mozilla::DOM::HTMLOptionElement is a wrapper around an instance of Mozilla's
nsIDOMHTMLOptionElement interface. This class inherits from
L<HTMLElement|Mozilla::DOM::HTMLElement>.

 * The nsIDOMHTMLOptionElement interface is the interface to a [X]HTML
 * option element.
 *
 * For more information on this interface please see
 * http://www.w3.org/TR/DOM-Level-2-HTML/
 *
 * @status FROZEN


=cut

=head1 CLASS METHODS

=head2 $iid = Mozilla::DOM::HTMLOptionElement->B<GetIID>()

Pass this to QueryInterface.

=cut

## NS_DEFINE_STATIC_IID_ACCESSOR(NS_IDOMHTMLOPTIONELEMENT_IID)
static nsIID
nsIDOMHTMLOptionElement::GetIID()
    CODE:
	const nsIID &id = nsIDOMHTMLOptionElement::GetIID();
	RETVAL = (nsIID) id;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLOptionElement::GetForm

=for signature $form = $htmloptionelement->GetForm()



=cut

## GetForm(nsIDOMHTMLFormElement * *aForm)
nsIDOMHTMLFormElement *
moz_dom_GetForm (htmloptionelement)
	nsIDOMHTMLOptionElement *htmloptionelement;
    PREINIT:
	nsIDOMHTMLFormElement * form;
    CODE:
	htmloptionelement->GetForm(&form);
	RETVAL = form;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLOptionElement::GetDefaultSelected

=for signature $bool = $htmloptionelement->GetDefaultSelected()



=cut

## GetDefaultSelected(PRBool *aDefaultSelected)
PRBool
moz_dom_GetDefaultSelected (htmloptionelement)
	nsIDOMHTMLOptionElement *htmloptionelement;
    PREINIT:
	PRBool defaultselected;
    CODE:
	htmloptionelement->GetDefaultSelected(&defaultselected);
	RETVAL = defaultselected;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLOptionElement::SetDefaultSelected

=for signature $htmloptionelement->SetDefaultSelected($defaultselected)



=cut

## SetDefaultSelected(PRBool aDefaultSelected)
void
moz_dom_SetDefaultSelected (htmloptionelement, defaultselected)
	nsIDOMHTMLOptionElement *htmloptionelement;
	PRBool  defaultselected;
    CODE:
	htmloptionelement->SetDefaultSelected(defaultselected);

=for apidoc Mozilla::DOM::HTMLOptionElement::GetText

=for signature $text = $htmloptionelement->GetText()



=cut

## GetText(nsAString & aText)
nsEmbedString
moz_dom_GetText (htmloptionelement)
	nsIDOMHTMLOptionElement *htmloptionelement;
    PREINIT:
	nsEmbedString text;
    CODE:
	htmloptionelement->GetText(text);
	RETVAL = text;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLOptionElement::GetIndex

=for signature $index = $htmloptionelement->GetIndex()



=cut

## GetIndex(PRInt32 *aIndex)
PRInt32
moz_dom_GetIndex (htmloptionelement)
	nsIDOMHTMLOptionElement *htmloptionelement;
    PREINIT:
	PRInt32 index;
    CODE:
	htmloptionelement->GetIndex(&index);
	RETVAL = index;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLOptionElement::GetDisabled

=for signature $bool = $htmloptionelement->GetDisabled()



=cut

## GetDisabled(PRBool *aDisabled)
PRBool
moz_dom_GetDisabled (htmloptionelement)
	nsIDOMHTMLOptionElement *htmloptionelement;
    PREINIT:
	PRBool disabled;
    CODE:
	htmloptionelement->GetDisabled(&disabled);
	RETVAL = disabled;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLOptionElement::SetDisabled

=for signature $htmloptionelement->SetDisabled($disabled)



=cut

## SetDisabled(PRBool aDisabled)
void
moz_dom_SetDisabled (htmloptionelement, disabled)
	nsIDOMHTMLOptionElement *htmloptionelement;
	PRBool  disabled;
    CODE:
	htmloptionelement->SetDisabled(disabled);

=for apidoc Mozilla::DOM::HTMLOptionElement::GetLabel

=for signature $label = $htmloptionelement->GetLabel()



=cut

## GetLabel(nsAString & aLabel)
nsEmbedString
moz_dom_GetLabel (htmloptionelement)
	nsIDOMHTMLOptionElement *htmloptionelement;
    PREINIT:
	nsEmbedString label;
    CODE:
	htmloptionelement->GetLabel(label);
	RETVAL = label;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLOptionElement::SetLabel

=for signature $htmloptionelement->SetLabel($label)



=cut

## SetLabel(const nsAString & aLabel)
void
moz_dom_SetLabel (htmloptionelement, label)
	nsIDOMHTMLOptionElement *htmloptionelement;
	nsEmbedString label;
    CODE:
	htmloptionelement->SetLabel(label);

=for apidoc Mozilla::DOM::HTMLOptionElement::GetSelected

=for signature $bool = $htmloptionelement->GetSelected()



=cut

## GetSelected(PRBool *aSelected)
PRBool
moz_dom_GetSelected (htmloptionelement)
	nsIDOMHTMLOptionElement *htmloptionelement;
    PREINIT:
	PRBool selected;
    CODE:
	htmloptionelement->GetSelected(&selected);
	RETVAL = selected;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLOptionElement::SetSelected

=for signature $htmloptionelement->SetSelected($selected)



=cut

## SetSelected(PRBool aSelected)
void
moz_dom_SetSelected (htmloptionelement, selected)
	nsIDOMHTMLOptionElement *htmloptionelement;
	PRBool  selected;
    CODE:
	htmloptionelement->SetSelected(selected);

=for apidoc Mozilla::DOM::HTMLOptionElement::GetValue

=for signature $value = $htmloptionelement->GetValue()



=cut

## GetValue(nsAString & aValue)
nsEmbedString
moz_dom_GetValue (htmloptionelement)
	nsIDOMHTMLOptionElement *htmloptionelement;
    PREINIT:
	nsEmbedString value;
    CODE:
	htmloptionelement->GetValue(value);
	RETVAL = value;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLOptionElement::SetValue

=for signature $htmloptionelement->SetValue($value)



=cut

## SetValue(const nsAString & aValue)
void
moz_dom_SetValue (htmloptionelement, value)
	nsIDOMHTMLOptionElement *htmloptionelement;
	nsEmbedString value;
    CODE:
	htmloptionelement->SetValue(value);

# -----------------------------------------------------------------------------

MODULE = Mozilla::DOM	PACKAGE = Mozilla::DOM::HTMLOptionsCollection	PREFIX = moz_dom_

# /usr/include/mozilla/nsIDOMHTMLOptionsCollection.h

=for object Mozilla::DOM::HTMLOptionsCollection

Mozilla::DOM::HTMLOptionsCollection is a wrapper around an instance of Mozilla's
nsIDOMHTMLOptionsCollection interface. This class inherits from
L<nsISupports|Mozilla::DOM::nsISupports>.

 * The nsIDOMHTMLOptionsCollection interface is the interface to a
 * collection of [X]HTML option elements.
 *
 * For more information on this interface please see
 * http://www.w3.org/TR/DOM-Level-2-HTML/
 *
 * @status FROZEN


=cut

=head1 CLASS METHODS

=head2 $iid = Mozilla::DOM::HTMLOptionsCollection->B<GetIID>()

Pass this to QueryInterface.

=cut

## NS_DEFINE_STATIC_IID_ACCESSOR(NS_IDOMHTMLOPTIONSCOLLECTION_IID)
static nsIID
nsIDOMHTMLOptionsCollection::GetIID()
    CODE:
	const nsIID &id = nsIDOMHTMLOptionsCollection::GetIID();
	RETVAL = (nsIID) id;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLOptionsCollection::GetLength

=for signature $length = $htmloptionscollection->GetLength()



=cut

## GetLength(PRUint32 *aLength)
PRUint32
moz_dom_GetLength (htmloptionscollection)
	nsIDOMHTMLOptionsCollection *htmloptionscollection;
    PREINIT:
	PRUint32 length;
    CODE:
	htmloptionscollection->GetLength(&length);
	RETVAL = length;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLOptionsCollection::SetLength

=for signature $htmloptionscollection->SetLength($length)



=cut

## SetLength(PRUint32 aLength)
void
moz_dom_SetLength (htmloptionscollection, length)
	nsIDOMHTMLOptionsCollection *htmloptionscollection;
	PRUint32  length;
    CODE:
	htmloptionscollection->SetLength(length);

=for apidoc Mozilla::DOM::HTMLOptionsCollection::Item

=for signature $retval = $htmloptionscollection->Item($index)



=cut

## Item(PRUint32 index, nsIDOMNode **_retval)
nsIDOMNode *
moz_dom_Item (htmloptionscollection, index)
	nsIDOMHTMLOptionsCollection *htmloptionscollection;
	PRUint32  index;
    PREINIT:
	nsIDOMNode * retval;
    CODE:
	htmloptionscollection->Item(index, &retval);
	RETVAL = retval;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLOptionsCollection::NamedItem

=for signature $retval = $htmloptionscollection->NamedItem($name)



=cut

## NamedItem(const nsAString & name, nsIDOMNode **_retval)
nsIDOMNode *
moz_dom_NamedItem (htmloptionscollection, name)
	nsIDOMHTMLOptionsCollection *htmloptionscollection;
	nsEmbedString name;
    PREINIT:
	nsIDOMNode * retval;
    CODE:
	htmloptionscollection->NamedItem(name, &retval);
	RETVAL = retval;
    OUTPUT:
	RETVAL

# -----------------------------------------------------------------------------

MODULE = Mozilla::DOM	PACKAGE = Mozilla::DOM::HTMLParagraphElement	PREFIX = moz_dom_

# /usr/include/mozilla/nsIDOMHTMLParagraphElement.h

=for object Mozilla::DOM::HTMLParagraphElement

Mozilla::DOM::HTMLParagraphElement is a wrapper around an instance of Mozilla's
nsIDOMHTMLParagraphElement interface. This class inherits from
L<HTMLElement|Mozilla::DOM::HTMLElement>.

 * The nsIDOMHTMLParagraphElement interface is the interface to a
 * [X]HTML p element.
 *
 * For more information on this interface please see
 * http://www.w3.org/TR/DOM-Level-2-HTML/
 *
 * @status FROZEN


=cut

=head1 CLASS METHODS

=head2 $iid = Mozilla::DOM::HTMLParagraphElement->B<GetIID>()

Pass this to QueryInterface.

=cut

## NS_DEFINE_STATIC_IID_ACCESSOR(NS_IDOMHTMLPARAGRAPHELEMENT_IID)
static nsIID
nsIDOMHTMLParagraphElement::GetIID()
    CODE:
	const nsIID &id = nsIDOMHTMLParagraphElement::GetIID();
	RETVAL = (nsIID) id;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLParagraphElement::GetAlign

=for signature $align = $htmlparagraphelement->GetAlign()



=cut

## GetAlign(nsAString & aAlign)
nsEmbedString
moz_dom_GetAlign (htmlparagraphelement)
	nsIDOMHTMLParagraphElement *htmlparagraphelement;
    PREINIT:
	nsEmbedString align;
    CODE:
	htmlparagraphelement->GetAlign(align);
	RETVAL = align;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLParagraphElement::SetAlign

=for signature $htmlparagraphelement->SetAlign($align)



=cut

## SetAlign(const nsAString & aAlign)
void
moz_dom_SetAlign (htmlparagraphelement, align)
	nsIDOMHTMLParagraphElement *htmlparagraphelement;
	nsEmbedString align;
    CODE:
	htmlparagraphelement->SetAlign(align);

# -----------------------------------------------------------------------------

MODULE = Mozilla::DOM	PACKAGE = Mozilla::DOM::HTMLParamElement	PREFIX = moz_dom_

# /usr/include/mozilla/nsIDOMHTMLParamElement.h

=for object Mozilla::DOM::HTMLParamElement

Mozilla::DOM::HTMLParamElement is a wrapper around an instance of Mozilla's
nsIDOMHTMLParamElement interface. This class inherits from
L<HTMLElement|Mozilla::DOM::HTMLElement>.

 * The nsIDOMHTMLParamElement interface is the interface to a [X]HTML
 * param element.
 *
 * For more information on this interface please see
 * http://www.w3.org/TR/DOM-Level-2-HTML/
 *
 * @status FROZEN


=cut

=head1 CLASS METHODS

=head2 $iid = Mozilla::DOM::HTMLParamElement->B<GetIID>()

Pass this to QueryInterface.

=cut

## NS_DEFINE_STATIC_IID_ACCESSOR(NS_IDOMHTMLPARAMELEMENT_IID)
static nsIID
nsIDOMHTMLParamElement::GetIID()
    CODE:
	const nsIID &id = nsIDOMHTMLParamElement::GetIID();
	RETVAL = (nsIID) id;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLParamElement::GetName

=for signature $name = $htmlparamelement->GetName()



=cut

## GetName(nsAString & aName)
nsEmbedString
moz_dom_GetName (htmlparamelement)
	nsIDOMHTMLParamElement *htmlparamelement;
    PREINIT:
	nsEmbedString name;
    CODE:
	htmlparamelement->GetName(name);
	RETVAL = name;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLParamElement::SetName

=for signature $htmlparamelement->SetName($name)



=cut

## SetName(const nsAString & aName)
void
moz_dom_SetName (htmlparamelement, name)
	nsIDOMHTMLParamElement *htmlparamelement;
	nsEmbedString name;
    CODE:
	htmlparamelement->SetName(name);

=for apidoc Mozilla::DOM::HTMLParamElement::GetType

=for signature $type = $htmlparamelement->GetType()



=cut

## GetType(nsAString & aType)
nsEmbedString
moz_dom_GetType (htmlparamelement)
	nsIDOMHTMLParamElement *htmlparamelement;
    PREINIT:
	nsEmbedString type;
    CODE:
	htmlparamelement->GetType(type);
	RETVAL = type;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLParamElement::SetType

=for signature $htmlparamelement->SetType($type)



=cut

## SetType(const nsAString & aType)
void
moz_dom_SetType (htmlparamelement, type)
	nsIDOMHTMLParamElement *htmlparamelement;
	nsEmbedString type;
    CODE:
	htmlparamelement->SetType(type);

=for apidoc Mozilla::DOM::HTMLParamElement::GetValue

=for signature $value = $htmlparamelement->GetValue()



=cut

## GetValue(nsAString & aValue)
nsEmbedString
moz_dom_GetValue (htmlparamelement)
	nsIDOMHTMLParamElement *htmlparamelement;
    PREINIT:
	nsEmbedString value;
    CODE:
	htmlparamelement->GetValue(value);
	RETVAL = value;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLParamElement::SetValue

=for signature $htmlparamelement->SetValue($value)



=cut

## SetValue(const nsAString & aValue)
void
moz_dom_SetValue (htmlparamelement, value)
	nsIDOMHTMLParamElement *htmlparamelement;
	nsEmbedString value;
    CODE:
	htmlparamelement->SetValue(value);

=for apidoc Mozilla::DOM::HTMLParamElement::GetValueType

=for signature $valuetype = $htmlparamelement->GetValueType()



=cut

## GetValueType(nsAString & aValueType)
nsEmbedString
moz_dom_GetValueType (htmlparamelement)
	nsIDOMHTMLParamElement *htmlparamelement;
    PREINIT:
	nsEmbedString valuetype;
    CODE:
	htmlparamelement->GetValueType(valuetype);
	RETVAL = valuetype;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLParamElement::SetValueType

=for signature $htmlparamelement->SetValueType($valuetype)



=cut

## SetValueType(const nsAString & aValueType)
void
moz_dom_SetValueType (htmlparamelement, valuetype)
	nsIDOMHTMLParamElement *htmlparamelement;
	nsEmbedString valuetype;
    CODE:
	htmlparamelement->SetValueType(valuetype);

# -----------------------------------------------------------------------------

MODULE = Mozilla::DOM	PACKAGE = Mozilla::DOM::HTMLPreElement	PREFIX = moz_dom_

# /usr/include/mozilla/nsIDOMHTMLPreElement.h

=for object Mozilla::DOM::HTMLPreElement

Mozilla::DOM::HTMLPreElement is a wrapper around an instance of Mozilla's
nsIDOMHTMLPreElement interface. This class inherits from
L<HTMLElement|Mozilla::DOM::HTMLElement>.

 * The nsIDOMHTMLPreElement interface is the interface to a [X]HTML
 * pre element.
 *
 * For more information on this interface please see
 * http://www.w3.org/TR/DOM-Level-2-HTML/
 *
 * @status FROZEN


=cut

=head1 CLASS METHODS

=head2 $iid = Mozilla::DOM::HTMLPreElement->B<GetIID>()

Pass this to QueryInterface.

=cut

## NS_DEFINE_STATIC_IID_ACCESSOR(NS_IDOMHTMLPREELEMENT_IID)
static nsIID
nsIDOMHTMLPreElement::GetIID()
    CODE:
	const nsIID &id = nsIDOMHTMLPreElement::GetIID();
	RETVAL = (nsIID) id;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLPreElement::GetWidth

=for signature $width = $htmlpreelement->GetWidth()



=cut

## GetWidth(PRInt32 *aWidth)
PRInt32
moz_dom_GetWidth (htmlpreelement)
	nsIDOMHTMLPreElement *htmlpreelement;
    PREINIT:
	PRInt32 width;
    CODE:
	htmlpreelement->GetWidth(&width);
	RETVAL = width;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLPreElement::SetWidth

=for signature $htmlpreelement->SetWidth($width)



=cut

## SetWidth(PRInt32 aWidth)
void
moz_dom_SetWidth (htmlpreelement, width)
	nsIDOMHTMLPreElement *htmlpreelement;
	PRInt32  width;
    CODE:
	htmlpreelement->SetWidth(width);

# -----------------------------------------------------------------------------

MODULE = Mozilla::DOM	PACKAGE = Mozilla::DOM::HTMLQuoteElement	PREFIX = moz_dom_

# /usr/include/mozilla/nsIDOMHTMLQuoteElement.h

=for object Mozilla::DOM::HTMLQuoteElement

Mozilla::DOM::HTMLQuoteElement is a wrapper around an instance of Mozilla's
nsIDOMHTMLQuoteElement interface. This class inherits from
L<HTMLElement|Mozilla::DOM::HTMLElement>.

 * The nsIDOMHTMLQuoteElement interface is the interface to a [X]HTML
 * q element.
 *
 * For more information on this interface please see
 * http://www.w3.org/TR/DOM-Level-2-HTML/
 *
 * @status FROZEN


=cut

=head1 CLASS METHODS

=head2 $iid = Mozilla::DOM::HTMLQuoteElement->B<GetIID>()

Pass this to QueryInterface.

=cut

## NS_DEFINE_STATIC_IID_ACCESSOR(NS_IDOMHTMLQUOTEELEMENT_IID)
static nsIID
nsIDOMHTMLQuoteElement::GetIID()
    CODE:
	const nsIID &id = nsIDOMHTMLQuoteElement::GetIID();
	RETVAL = (nsIID) id;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLQuoteElement::GetCite

=for signature $cite = $htmlquoteelement->GetCite()



=cut

## GetCite(nsAString & aCite)
nsEmbedString
moz_dom_GetCite (htmlquoteelement)
	nsIDOMHTMLQuoteElement *htmlquoteelement;
    PREINIT:
	nsEmbedString cite;
    CODE:
	htmlquoteelement->GetCite(cite);
	RETVAL = cite;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLQuoteElement::SetCite

=for signature $htmlquoteelement->SetCite($cite)



=cut

## SetCite(const nsAString & aCite)
void
moz_dom_SetCite (htmlquoteelement, cite)
	nsIDOMHTMLQuoteElement *htmlquoteelement;
	nsEmbedString cite;
    CODE:
	htmlquoteelement->SetCite(cite);

# -----------------------------------------------------------------------------

MODULE = Mozilla::DOM	PACKAGE = Mozilla::DOM::HTMLScriptElement	PREFIX = moz_dom_

# /usr/include/mozilla/nsIDOMHTMLScriptElement.h

=for object Mozilla::DOM::HTMLScriptElement

Mozilla::DOM::HTMLScriptElement is a wrapper around an instance of Mozilla's
nsIDOMHTMLScriptElement interface. This class inherits from
L<HTMLElement|Mozilla::DOM::HTMLElement>.

 * The nsIDOMHTMLScriptElement interface is the interface to a [X]HTML
 * script element.
 *
 * For more information on this interface please see
 * http://www.w3.org/TR/DOM-Level-2-HTML/
 *
 * @status FROZEN


=cut

=head1 CLASS METHODS

=head2 $iid = Mozilla::DOM::HTMLScriptElement->B<GetIID>()

Pass this to QueryInterface.

=cut

## NS_DEFINE_STATIC_IID_ACCESSOR(NS_IDOMHTMLSCRIPTELEMENT_IID)
static nsIID
nsIDOMHTMLScriptElement::GetIID()
    CODE:
	const nsIID &id = nsIDOMHTMLScriptElement::GetIID();
	RETVAL = (nsIID) id;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLScriptElement::GetText

=for signature $text = $htmlscriptelement->GetText()



=cut

## GetText(nsAString & aText)
nsEmbedString
moz_dom_GetText (htmlscriptelement)
	nsIDOMHTMLScriptElement *htmlscriptelement;
    PREINIT:
	nsEmbedString text;
    CODE:
	htmlscriptelement->GetText(text);
	RETVAL = text;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLScriptElement::SetText

=for signature $htmlscriptelement->SetText($text)



=cut

## SetText(const nsAString & aText)
void
moz_dom_SetText (htmlscriptelement, text)
	nsIDOMHTMLScriptElement *htmlscriptelement;
	nsEmbedString text;
    CODE:
	htmlscriptelement->SetText(text);

=for apidoc Mozilla::DOM::HTMLScriptElement::GetHtmlFor

=for signature $htmlfor = $htmlscriptelement->GetHtmlFor()



=cut

## GetHtmlFor(nsAString & aHtmlFor)
nsEmbedString
moz_dom_GetHtmlFor (htmlscriptelement)
	nsIDOMHTMLScriptElement *htmlscriptelement;
    PREINIT:
	nsEmbedString htmlfor;
    CODE:
	htmlscriptelement->GetHtmlFor(htmlfor);
	RETVAL = htmlfor;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLScriptElement::SetHtmlFor

=for signature $htmlscriptelement->SetHtmlFor($htmlfor)



=cut

## SetHtmlFor(const nsAString & aHtmlFor)
void
moz_dom_SetHtmlFor (htmlscriptelement, htmlfor)
	nsIDOMHTMLScriptElement *htmlscriptelement;
	nsEmbedString htmlfor;
    CODE:
	htmlscriptelement->SetHtmlFor(htmlfor);

=for apidoc Mozilla::DOM::HTMLScriptElement::GetEvent

=for signature $event = $htmlscriptelement->GetEvent()



=cut

## GetEvent(nsAString & aEvent)
nsEmbedString
moz_dom_GetEvent (htmlscriptelement)
	nsIDOMHTMLScriptElement *htmlscriptelement;
    PREINIT:
	nsEmbedString event;
    CODE:
	htmlscriptelement->GetEvent(event);
	RETVAL = event;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLScriptElement::SetEvent

=for signature $htmlscriptelement->SetEvent($event)



=cut

## SetEvent(const nsAString & aEvent)
void
moz_dom_SetEvent (htmlscriptelement, event)
	nsIDOMHTMLScriptElement *htmlscriptelement;
	nsEmbedString event;
    CODE:
	htmlscriptelement->SetEvent(event);

=for apidoc Mozilla::DOM::HTMLScriptElement::GetCharset

=for signature $charset = $htmlscriptelement->GetCharset()



=cut

## GetCharset(nsAString & aCharset)
nsEmbedString
moz_dom_GetCharset (htmlscriptelement)
	nsIDOMHTMLScriptElement *htmlscriptelement;
    PREINIT:
	nsEmbedString charset;
    CODE:
	htmlscriptelement->GetCharset(charset);
	RETVAL = charset;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLScriptElement::SetCharset

=for signature $htmlscriptelement->SetCharset($charset)



=cut

## SetCharset(const nsAString & aCharset)
void
moz_dom_SetCharset (htmlscriptelement, charset)
	nsIDOMHTMLScriptElement *htmlscriptelement;
	nsEmbedString charset;
    CODE:
	htmlscriptelement->SetCharset(charset);

=for apidoc Mozilla::DOM::HTMLScriptElement::GetDefer

=for signature $bool = $htmlscriptelement->GetDefer()



=cut

## GetDefer(PRBool *aDefer)
PRBool
moz_dom_GetDefer (htmlscriptelement)
	nsIDOMHTMLScriptElement *htmlscriptelement;
    PREINIT:
	PRBool defer;
    CODE:
	htmlscriptelement->GetDefer(&defer);
	RETVAL = defer;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLScriptElement::SetDefer

=for signature $htmlscriptelement->SetDefer($defer)



=cut

## SetDefer(PRBool aDefer)
void
moz_dom_SetDefer (htmlscriptelement, defer)
	nsIDOMHTMLScriptElement *htmlscriptelement;
	PRBool  defer;
    CODE:
	htmlscriptelement->SetDefer(defer);

=for apidoc Mozilla::DOM::HTMLScriptElement::GetSrc

=for signature $src = $htmlscriptelement->GetSrc()



=cut

## GetSrc(nsAString & aSrc)
nsEmbedString
moz_dom_GetSrc (htmlscriptelement)
	nsIDOMHTMLScriptElement *htmlscriptelement;
    PREINIT:
	nsEmbedString src;
    CODE:
	htmlscriptelement->GetSrc(src);
	RETVAL = src;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLScriptElement::SetSrc

=for signature $htmlscriptelement->SetSrc($src)



=cut

## SetSrc(const nsAString & aSrc)
void
moz_dom_SetSrc (htmlscriptelement, src)
	nsIDOMHTMLScriptElement *htmlscriptelement;
	nsEmbedString src;
    CODE:
	htmlscriptelement->SetSrc(src);

=for apidoc Mozilla::DOM::HTMLScriptElement::GetType

=for signature $type = $htmlscriptelement->GetType()



=cut

## GetType(nsAString & aType)
nsEmbedString
moz_dom_GetType (htmlscriptelement)
	nsIDOMHTMLScriptElement *htmlscriptelement;
    PREINIT:
	nsEmbedString type;
    CODE:
	htmlscriptelement->GetType(type);
	RETVAL = type;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLScriptElement::SetType

=for signature $htmlscriptelement->SetType($type)



=cut

## SetType(const nsAString & aType)
void
moz_dom_SetType (htmlscriptelement, type)
	nsIDOMHTMLScriptElement *htmlscriptelement;
	nsEmbedString type;
    CODE:
	htmlscriptelement->SetType(type);

# -----------------------------------------------------------------------------

MODULE = Mozilla::DOM	PACKAGE = Mozilla::DOM::HTMLSelectElement	PREFIX = moz_dom_

# /usr/include/mozilla/nsIDOMHTMLSelectElement.h

=for object Mozilla::DOM::HTMLSelectElement

Mozilla::DOM::HTMLSelectElement is a wrapper around an instance of Mozilla's
nsIDOMHTMLSelectElement interface. This class inherits from
L<HTMLElement|Mozilla::DOM::HTMLElement>.

 * The nsIDOMHTMLSelectElement interface is the interface to a [X]HTML
 * select element.
 *
 * For more information on this interface please see
 * http://www.w3.org/TR/DOM-Level-2-HTML/
 *
 * @status FROZEN


=cut

=head1 CLASS METHODS

=head2 $iid = Mozilla::DOM::HTMLSelectElement->B<GetIID>()

Pass this to QueryInterface.

=cut

## NS_DEFINE_STATIC_IID_ACCESSOR(NS_IDOMHTMLSELECTELEMENT_IID)
static nsIID
nsIDOMHTMLSelectElement::GetIID()
    CODE:
	const nsIID &id = nsIDOMHTMLSelectElement::GetIID();
	RETVAL = (nsIID) id;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLSelectElement::GetType

=for signature $type = $htmlselectelement->GetType()



=cut

## GetType(nsAString & aType)
nsEmbedString
moz_dom_GetType (htmlselectelement)
	nsIDOMHTMLSelectElement *htmlselectelement;
    PREINIT:
	nsEmbedString type;
    CODE:
	htmlselectelement->GetType(type);
	RETVAL = type;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLSelectElement::GetSelectedIndex

=for signature $selectedindex = $htmlselectelement->GetSelectedIndex()



=cut

## GetSelectedIndex(PRInt32 *aSelectedIndex)
PRInt32
moz_dom_GetSelectedIndex (htmlselectelement)
	nsIDOMHTMLSelectElement *htmlselectelement;
    PREINIT:
	PRInt32 selectedindex;
    CODE:
	htmlselectelement->GetSelectedIndex(&selectedindex);
	RETVAL = selectedindex;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLSelectElement::SetSelectedIndex

=for signature $htmlselectelement->SetSelectedIndex($selectedindex)



=cut

## SetSelectedIndex(PRInt32 aSelectedIndex)
void
moz_dom_SetSelectedIndex (htmlselectelement, selectedindex)
	nsIDOMHTMLSelectElement *htmlselectelement;
	PRInt32  selectedindex;
    CODE:
	htmlselectelement->SetSelectedIndex(selectedindex);

=for apidoc Mozilla::DOM::HTMLSelectElement::GetValue

=for signature $value = $htmlselectelement->GetValue()



=cut

## GetValue(nsAString & aValue)
nsEmbedString
moz_dom_GetValue (htmlselectelement)
	nsIDOMHTMLSelectElement *htmlselectelement;
    PREINIT:
	nsEmbedString value;
    CODE:
	htmlselectelement->GetValue(value);
	RETVAL = value;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLSelectElement::SetValue

=for signature $htmlselectelement->SetValue($value)



=cut

## SetValue(const nsAString & aValue)
void
moz_dom_SetValue (htmlselectelement, value)
	nsIDOMHTMLSelectElement *htmlselectelement;
	nsEmbedString value;
    CODE:
	htmlselectelement->SetValue(value);

=for apidoc Mozilla::DOM::HTMLSelectElement::GetLength

=for signature $length = $htmlselectelement->GetLength()



=cut

## GetLength(PRUint32 *aLength)
PRUint32
moz_dom_GetLength (htmlselectelement)
	nsIDOMHTMLSelectElement *htmlselectelement;
    PREINIT:
	PRUint32 length;
    CODE:
	htmlselectelement->GetLength(&length);
	RETVAL = length;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLSelectElement::SetLength

=for signature $htmlselectelement->SetLength($length)



=cut

## SetLength(PRUint32 aLength)
void
moz_dom_SetLength (htmlselectelement, length)
	nsIDOMHTMLSelectElement *htmlselectelement;
	PRUint32  length;
    CODE:
	htmlselectelement->SetLength(length);

=for apidoc Mozilla::DOM::HTMLSelectElement::GetForm

=for signature $form = $htmlselectelement->GetForm()



=cut

## GetForm(nsIDOMHTMLFormElement * *aForm)
nsIDOMHTMLFormElement *
moz_dom_GetForm (htmlselectelement)
	nsIDOMHTMLSelectElement *htmlselectelement;
    PREINIT:
	nsIDOMHTMLFormElement * form;
    CODE:
	htmlselectelement->GetForm(&form);
	RETVAL = form;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLSelectElement::GetOptions

=for signature $options = $htmlselectelement->GetOptions()



=cut

## GetOptions(nsIDOMHTMLOptionsCollection * *aOptions)
nsIDOMHTMLOptionsCollection *
moz_dom_GetOptions (htmlselectelement)
	nsIDOMHTMLSelectElement *htmlselectelement;
    PREINIT:
	nsIDOMHTMLOptionsCollection * options;
    CODE:
	htmlselectelement->GetOptions(&options);
	RETVAL = options;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLSelectElement::GetDisabled

=for signature $bool = $htmlselectelement->GetDisabled()



=cut

## GetDisabled(PRBool *aDisabled)
PRBool
moz_dom_GetDisabled (htmlselectelement)
	nsIDOMHTMLSelectElement *htmlselectelement;
    PREINIT:
	PRBool disabled;
    CODE:
	htmlselectelement->GetDisabled(&disabled);
	RETVAL = disabled;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLSelectElement::SetDisabled

=for signature $htmlselectelement->SetDisabled($disabled)



=cut

## SetDisabled(PRBool aDisabled)
void
moz_dom_SetDisabled (htmlselectelement, disabled)
	nsIDOMHTMLSelectElement *htmlselectelement;
	PRBool  disabled;
    CODE:
	htmlselectelement->SetDisabled(disabled);

=for apidoc Mozilla::DOM::HTMLSelectElement::GetMultiple

=for signature $bool = $htmlselectelement->GetMultiple()



=cut

## GetMultiple(PRBool *aMultiple)
PRBool
moz_dom_GetMultiple (htmlselectelement)
	nsIDOMHTMLSelectElement *htmlselectelement;
    PREINIT:
	PRBool multiple;
    CODE:
	htmlselectelement->GetMultiple(&multiple);
	RETVAL = multiple;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLSelectElement::SetMultiple

=for signature $htmlselectelement->SetMultiple($multiple)



=cut

## SetMultiple(PRBool aMultiple)
void
moz_dom_SetMultiple (htmlselectelement, multiple)
	nsIDOMHTMLSelectElement *htmlselectelement;
	PRBool  multiple;
    CODE:
	htmlselectelement->SetMultiple(multiple);

=for apidoc Mozilla::DOM::HTMLSelectElement::GetName

=for signature $name = $htmlselectelement->GetName()



=cut

## GetName(nsAString & aName)
nsEmbedString
moz_dom_GetName (htmlselectelement)
	nsIDOMHTMLSelectElement *htmlselectelement;
    PREINIT:
	nsEmbedString name;
    CODE:
	htmlselectelement->GetName(name);
	RETVAL = name;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLSelectElement::SetName

=for signature $htmlselectelement->SetName($name)



=cut

## SetName(const nsAString & aName)
void
moz_dom_SetName (htmlselectelement, name)
	nsIDOMHTMLSelectElement *htmlselectelement;
	nsEmbedString name;
    CODE:
	htmlselectelement->SetName(name);

=for apidoc Mozilla::DOM::HTMLSelectElement::GetSize

=for signature $size = $htmlselectelement->GetSize()



=cut

## GetSize(PRInt32 *aSize)
PRInt32
moz_dom_GetSize (htmlselectelement)
	nsIDOMHTMLSelectElement *htmlselectelement;
    PREINIT:
	PRInt32 size;
    CODE:
	htmlselectelement->GetSize(&size);
	RETVAL = size;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLSelectElement::SetSize

=for signature $htmlselectelement->SetSize($size)



=cut

## SetSize(PRInt32 aSize)
void
moz_dom_SetSize (htmlselectelement, size)
	nsIDOMHTMLSelectElement *htmlselectelement;
	PRInt32  size;
    CODE:
	htmlselectelement->SetSize(size);

=for apidoc Mozilla::DOM::HTMLSelectElement::GetTabIndex

=for signature $tabindex = $htmlselectelement->GetTabIndex()



=cut

## GetTabIndex(PRInt32 *aTabIndex)
PRInt32
moz_dom_GetTabIndex (htmlselectelement)
	nsIDOMHTMLSelectElement *htmlselectelement;
    PREINIT:
	PRInt32 tabindex;
    CODE:
	htmlselectelement->GetTabIndex(&tabindex);
	RETVAL = tabindex;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLSelectElement::SetTabIndex

=for signature $htmlselectelement->SetTabIndex($tabindex)



=cut

## SetTabIndex(PRInt32 aTabIndex)
void
moz_dom_SetTabIndex (htmlselectelement, tabindex)
	nsIDOMHTMLSelectElement *htmlselectelement;
	PRInt32  tabindex;
    CODE:
	htmlselectelement->SetTabIndex(tabindex);

=for apidoc Mozilla::DOM::HTMLSelectElement::Add

=for signature $htmlselectelement->Add($element, $before)



=cut

## Add(nsIDOMHTMLElement *element, nsIDOMHTMLElement *before)
void
moz_dom_Add (htmlselectelement, element, before)
	nsIDOMHTMLSelectElement *htmlselectelement;
	nsIDOMHTMLElement * element;
	nsIDOMHTMLElement * before;
    CODE:
	htmlselectelement->Add(element, before);

=for apidoc Mozilla::DOM::HTMLSelectElement::Remove

=for signature $htmlselectelement->Remove($index)



=cut

## Remove(PRInt32 index)
void
moz_dom_Remove (htmlselectelement, index)
	nsIDOMHTMLSelectElement *htmlselectelement;
	PRInt32  index;
    CODE:
	htmlselectelement->Remove(index);

=for apidoc Mozilla::DOM::HTMLSelectElement::Blur

=for signature $htmlselectelement->Blur()



=cut

## Blur(void)
void
moz_dom_Blur (htmlselectelement)
	nsIDOMHTMLSelectElement *htmlselectelement;
    CODE:
	htmlselectelement->Blur();

=for apidoc Mozilla::DOM::HTMLSelectElement::Focus

=for signature $htmlselectelement->Focus()



=cut

## Focus(void)
void
moz_dom_Focus (htmlselectelement)
	nsIDOMHTMLSelectElement *htmlselectelement;
    CODE:
	htmlselectelement->Focus();

# -----------------------------------------------------------------------------

MODULE = Mozilla::DOM	PACKAGE = Mozilla::DOM::HTMLStyleElement	PREFIX = moz_dom_

# /usr/include/mozilla/nsIDOMHTMLStyleElement.h

=for object Mozilla::DOM::HTMLStyleElement

Mozilla::DOM::HTMLStyleElement is a wrapper around an instance of Mozilla's
nsIDOMHTMLStyleElement interface. This class inherits from
L<HTMLElement|Mozilla::DOM::HTMLElement>.

 * The nsIDOMHTMLStyleElement interface is the interface to a [X]HTML
 * style element.
 *
 * For more information on this interface please see
 * http://www.w3.org/TR/DOM-Level-2-HTML/
 *
 * @status FROZEN


=cut

=head1 CLASS METHODS

=head2 $iid = Mozilla::DOM::HTMLStyleElement->B<GetIID>()

Pass this to QueryInterface.

=cut

## NS_DEFINE_STATIC_IID_ACCESSOR(NS_IDOMHTMLSTYLEELEMENT_IID)
static nsIID
nsIDOMHTMLStyleElement::GetIID()
    CODE:
	const nsIID &id = nsIDOMHTMLStyleElement::GetIID();
	RETVAL = (nsIID) id;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLStyleElement::GetDisabled

=for signature $bool = $htmlstyleelement->GetDisabled()



=cut

## GetDisabled(PRBool *aDisabled)
PRBool
moz_dom_GetDisabled (htmlstyleelement)
	nsIDOMHTMLStyleElement *htmlstyleelement;
    PREINIT:
	PRBool disabled;
    CODE:
	htmlstyleelement->GetDisabled(&disabled);
	RETVAL = disabled;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLStyleElement::SetDisabled

=for signature $htmlstyleelement->SetDisabled($disabled)



=cut

## SetDisabled(PRBool aDisabled)
void
moz_dom_SetDisabled (htmlstyleelement, disabled)
	nsIDOMHTMLStyleElement *htmlstyleelement;
	PRBool  disabled;
    CODE:
	htmlstyleelement->SetDisabled(disabled);

=for apidoc Mozilla::DOM::HTMLStyleElement::GetMedia

=for signature $media = $htmlstyleelement->GetMedia()



=cut

## GetMedia(nsAString & aMedia)
nsEmbedString
moz_dom_GetMedia (htmlstyleelement)
	nsIDOMHTMLStyleElement *htmlstyleelement;
    PREINIT:
	nsEmbedString media;
    CODE:
	htmlstyleelement->GetMedia(media);
	RETVAL = media;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLStyleElement::SetMedia

=for signature $htmlstyleelement->SetMedia($media)



=cut

## SetMedia(const nsAString & aMedia)
void
moz_dom_SetMedia (htmlstyleelement, media)
	nsIDOMHTMLStyleElement *htmlstyleelement;
	nsEmbedString media;
    CODE:
	htmlstyleelement->SetMedia(media);

=for apidoc Mozilla::DOM::HTMLStyleElement::GetType

=for signature $type = $htmlstyleelement->GetType()



=cut

## GetType(nsAString & aType)
nsEmbedString
moz_dom_GetType (htmlstyleelement)
	nsIDOMHTMLStyleElement *htmlstyleelement;
    PREINIT:
	nsEmbedString type;
    CODE:
	htmlstyleelement->GetType(type);
	RETVAL = type;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLStyleElement::SetType

=for signature $htmlstyleelement->SetType($type)



=cut

## SetType(const nsAString & aType)
void
moz_dom_SetType (htmlstyleelement, type)
	nsIDOMHTMLStyleElement *htmlstyleelement;
	nsEmbedString type;
    CODE:
	htmlstyleelement->SetType(type);

# -----------------------------------------------------------------------------

MODULE = Mozilla::DOM	PACKAGE = Mozilla::DOM::HTMLTableCaptionElement	PREFIX = moz_dom_

# /usr/include/mozilla/nsIDOMHTMLTableCaptionElem.h

=for object Mozilla::DOM::HTMLTableCaptionElement

Mozilla::DOM::HTMLTableCaptionElement is a wrapper around an instance of Mozilla's
nsIDOMHTMLTableCaptionElement interface. This class inherits from
L<HTMLElement|Mozilla::DOM::HTMLElement>.

 * The nsIDOMHTMLTableCaptionElement interface is the interface to a
 * [X]HTML caption element.
 *
 * For more information on this interface please see
 * http://www.w3.org/TR/DOM-Level-2-HTML/
 *
 * @status FROZEN


=cut

=head1 CLASS METHODS

=head2 $iid = Mozilla::DOM::HTMLTableCaptionElement->B<GetIID>()

Pass this to QueryInterface.

=cut

## NS_DEFINE_STATIC_IID_ACCESSOR(NS_IDOMHTMLTABLECAPTIONELEMENT_IID)
static nsIID
nsIDOMHTMLTableCaptionElement::GetIID()
    CODE:
	const nsIID &id = nsIDOMHTMLTableCaptionElement::GetIID();
	RETVAL = (nsIID) id;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLTableCaptionElement::GetAlign

=for signature $align = $htmltablecaptionelement->GetAlign()



=cut

## GetAlign(nsAString & aAlign)
nsEmbedString
moz_dom_GetAlign (htmltablecaptionelement)
	nsIDOMHTMLTableCaptionElement *htmltablecaptionelement;
    PREINIT:
	nsEmbedString align;
    CODE:
	htmltablecaptionelement->GetAlign(align);
	RETVAL = align;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLTableCaptionElement::SetAlign

=for signature $htmltablecaptionelement->SetAlign($align)



=cut

## SetAlign(const nsAString & aAlign)
void
moz_dom_SetAlign (htmltablecaptionelement, align)
	nsIDOMHTMLTableCaptionElement *htmltablecaptionelement;
	nsEmbedString align;
    CODE:
	htmltablecaptionelement->SetAlign(align);

# -----------------------------------------------------------------------------

MODULE = Mozilla::DOM	PACKAGE = Mozilla::DOM::HTMLTableCellElement	PREFIX = moz_dom_

# /usr/include/mozilla/nsIDOMHTMLTableCellElement.h

=for object Mozilla::DOM::HTMLTableCellElement

Mozilla::DOM::HTMLTableCellElement is a wrapper around an instance of Mozilla's
nsIDOMHTMLTableCellElement interface. This class inherits from
L<HTMLElement|Mozilla::DOM::HTMLElement>.

 * The nsIDOMHTMLTableCellElement interface is the interface to a
 * [X]HTML td element.
 *
 * For more information on this interface please see
 * http://www.w3.org/TR/DOM-Level-2-HTML/
 *
 * @status FROZEN


=cut

=head1 CLASS METHODS

=head2 $iid = Mozilla::DOM::HTMLTableCellElement->B<GetIID>()

Pass this to QueryInterface.

=cut

## NS_DEFINE_STATIC_IID_ACCESSOR(NS_IDOMHTMLTABLECELLELEMENT_IID)
static nsIID
nsIDOMHTMLTableCellElement::GetIID()
    CODE:
	const nsIID &id = nsIDOMHTMLTableCellElement::GetIID();
	RETVAL = (nsIID) id;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLTableCellElement::GetCellIndex

=for signature $cellindex = $htmltablecellelement->GetCellIndex()



=cut

## GetCellIndex(PRInt32 *aCellIndex)
PRInt32
moz_dom_GetCellIndex (htmltablecellelement)
	nsIDOMHTMLTableCellElement *htmltablecellelement;
    PREINIT:
	PRInt32 cellindex;
    CODE:
	htmltablecellelement->GetCellIndex(&cellindex);
	RETVAL = cellindex;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLTableCellElement::GetAbbr

=for signature $abbr = $htmltablecellelement->GetAbbr()



=cut

## GetAbbr(nsAString & aAbbr)
nsEmbedString
moz_dom_GetAbbr (htmltablecellelement)
	nsIDOMHTMLTableCellElement *htmltablecellelement;
    PREINIT:
	nsEmbedString abbr;
    CODE:
	htmltablecellelement->GetAbbr(abbr);
	RETVAL = abbr;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLTableCellElement::SetAbbr

=for signature $htmltablecellelement->SetAbbr($abbr)



=cut

## SetAbbr(const nsAString & aAbbr)
void
moz_dom_SetAbbr (htmltablecellelement, abbr)
	nsIDOMHTMLTableCellElement *htmltablecellelement;
	nsEmbedString abbr;
    CODE:
	htmltablecellelement->SetAbbr(abbr);

=for apidoc Mozilla::DOM::HTMLTableCellElement::GetAlign

=for signature $align = $htmltablecellelement->GetAlign()



=cut

## GetAlign(nsAString & aAlign)
nsEmbedString
moz_dom_GetAlign (htmltablecellelement)
	nsIDOMHTMLTableCellElement *htmltablecellelement;
    PREINIT:
	nsEmbedString align;
    CODE:
	htmltablecellelement->GetAlign(align);
	RETVAL = align;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLTableCellElement::SetAlign

=for signature $htmltablecellelement->SetAlign($align)



=cut

## SetAlign(const nsAString & aAlign)
void
moz_dom_SetAlign (htmltablecellelement, align)
	nsIDOMHTMLTableCellElement *htmltablecellelement;
	nsEmbedString align;
    CODE:
	htmltablecellelement->SetAlign(align);

=for apidoc Mozilla::DOM::HTMLTableCellElement::GetAxis

=for signature $axis = $htmltablecellelement->GetAxis()



=cut

## GetAxis(nsAString & aAxis)
nsEmbedString
moz_dom_GetAxis (htmltablecellelement)
	nsIDOMHTMLTableCellElement *htmltablecellelement;
    PREINIT:
	nsEmbedString axis;
    CODE:
	htmltablecellelement->GetAxis(axis);
	RETVAL = axis;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLTableCellElement::SetAxis

=for signature $htmltablecellelement->SetAxis($axis)



=cut

## SetAxis(const nsAString & aAxis)
void
moz_dom_SetAxis (htmltablecellelement, axis)
	nsIDOMHTMLTableCellElement *htmltablecellelement;
	nsEmbedString axis;
    CODE:
	htmltablecellelement->SetAxis(axis);

=for apidoc Mozilla::DOM::HTMLTableCellElement::GetBgColor

=for signature $bgcolor = $htmltablecellelement->GetBgColor()



=cut

## GetBgColor(nsAString & aBgColor)
nsEmbedString
moz_dom_GetBgColor (htmltablecellelement)
	nsIDOMHTMLTableCellElement *htmltablecellelement;
    PREINIT:
	nsEmbedString bgcolor;
    CODE:
	htmltablecellelement->GetBgColor(bgcolor);
	RETVAL = bgcolor;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLTableCellElement::SetBgColor

=for signature $htmltablecellelement->SetBgColor($bgcolor)



=cut

## SetBgColor(const nsAString & aBgColor)
void
moz_dom_SetBgColor (htmltablecellelement, bgcolor)
	nsIDOMHTMLTableCellElement *htmltablecellelement;
	nsEmbedString bgcolor;
    CODE:
	htmltablecellelement->SetBgColor(bgcolor);

=for apidoc Mozilla::DOM::HTMLTableCellElement::GetCh

=for signature $ch = $htmltablecellelement->GetCh()



=cut

## GetCh(nsAString & aCh)
nsEmbedString
moz_dom_GetCh (htmltablecellelement)
	nsIDOMHTMLTableCellElement *htmltablecellelement;
    PREINIT:
	nsEmbedString ch;
    CODE:
	htmltablecellelement->GetCh(ch);
	RETVAL = ch;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLTableCellElement::SetCh

=for signature $htmltablecellelement->SetCh($ch)



=cut

## SetCh(const nsAString & aCh)
void
moz_dom_SetCh (htmltablecellelement, ch)
	nsIDOMHTMLTableCellElement *htmltablecellelement;
	nsEmbedString ch;
    CODE:
	htmltablecellelement->SetCh(ch);

=for apidoc Mozilla::DOM::HTMLTableCellElement::GetChOff

=for signature $choff = $htmltablecellelement->GetChOff()



=cut

## GetChOff(nsAString & aChOff)
nsEmbedString
moz_dom_GetChOff (htmltablecellelement)
	nsIDOMHTMLTableCellElement *htmltablecellelement;
    PREINIT:
	nsEmbedString choff;
    CODE:
	htmltablecellelement->GetChOff(choff);
	RETVAL = choff;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLTableCellElement::SetChOff

=for signature $htmltablecellelement->SetChOff($choff)



=cut

## SetChOff(const nsAString & aChOff)
void
moz_dom_SetChOff (htmltablecellelement, choff)
	nsIDOMHTMLTableCellElement *htmltablecellelement;
	nsEmbedString choff;
    CODE:
	htmltablecellelement->SetChOff(choff);

=for apidoc Mozilla::DOM::HTMLTableCellElement::GetColSpan

=for signature $colspan = $htmltablecellelement->GetColSpan()



=cut

## GetColSpan(PRInt32 *aColSpan)
PRInt32
moz_dom_GetColSpan (htmltablecellelement)
	nsIDOMHTMLTableCellElement *htmltablecellelement;
    PREINIT:
	PRInt32 colspan;
    CODE:
	htmltablecellelement->GetColSpan(&colspan);
	RETVAL = colspan;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLTableCellElement::SetColSpan

=for signature $htmltablecellelement->SetColSpan($colspan)



=cut

## SetColSpan(PRInt32 aColSpan)
void
moz_dom_SetColSpan (htmltablecellelement, colspan)
	nsIDOMHTMLTableCellElement *htmltablecellelement;
	PRInt32  colspan;
    CODE:
	htmltablecellelement->SetColSpan(colspan);

=for apidoc Mozilla::DOM::HTMLTableCellElement::GetHeaders

=for signature $headers = $htmltablecellelement->GetHeaders()



=cut

## GetHeaders(nsAString & aHeaders)
nsEmbedString
moz_dom_GetHeaders (htmltablecellelement)
	nsIDOMHTMLTableCellElement *htmltablecellelement;
    PREINIT:
	nsEmbedString headers;
    CODE:
	htmltablecellelement->GetHeaders(headers);
	RETVAL = headers;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLTableCellElement::SetHeaders

=for signature $htmltablecellelement->SetHeaders($headers)



=cut

## SetHeaders(const nsAString & aHeaders)
void
moz_dom_SetHeaders (htmltablecellelement, headers)
	nsIDOMHTMLTableCellElement *htmltablecellelement;
	nsEmbedString headers;
    CODE:
	htmltablecellelement->SetHeaders(headers);

=for apidoc Mozilla::DOM::HTMLTableCellElement::GetHeight

=for signature $height = $htmltablecellelement->GetHeight()



=cut

## GetHeight(nsAString & aHeight)
nsEmbedString
moz_dom_GetHeight (htmltablecellelement)
	nsIDOMHTMLTableCellElement *htmltablecellelement;
    PREINIT:
	nsEmbedString height;
    CODE:
	htmltablecellelement->GetHeight(height);
	RETVAL = height;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLTableCellElement::SetHeight

=for signature $htmltablecellelement->SetHeight($height)



=cut

## SetHeight(const nsAString & aHeight)
void
moz_dom_SetHeight (htmltablecellelement, height)
	nsIDOMHTMLTableCellElement *htmltablecellelement;
	nsEmbedString height;
    CODE:
	htmltablecellelement->SetHeight(height);

=for apidoc Mozilla::DOM::HTMLTableCellElement::GetNoWrap

=for signature $bool = $htmltablecellelement->GetNoWrap()



=cut

## GetNoWrap(PRBool *aNoWrap)
PRBool
moz_dom_GetNoWrap (htmltablecellelement)
	nsIDOMHTMLTableCellElement *htmltablecellelement;
    PREINIT:
	PRBool nowrap;
    CODE:
	htmltablecellelement->GetNoWrap(&nowrap);
	RETVAL = nowrap;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLTableCellElement::SetNoWrap

=for signature $htmltablecellelement->SetNoWrap($nowrap)



=cut

## SetNoWrap(PRBool aNoWrap)
void
moz_dom_SetNoWrap (htmltablecellelement, nowrap)
	nsIDOMHTMLTableCellElement *htmltablecellelement;
	PRBool  nowrap;
    CODE:
	htmltablecellelement->SetNoWrap(nowrap);

=for apidoc Mozilla::DOM::HTMLTableCellElement::GetRowSpan

=for signature $rowspan = $htmltablecellelement->GetRowSpan()



=cut

## GetRowSpan(PRInt32 *aRowSpan)
PRInt32
moz_dom_GetRowSpan (htmltablecellelement)
	nsIDOMHTMLTableCellElement *htmltablecellelement;
    PREINIT:
	PRInt32 rowspan;
    CODE:
	htmltablecellelement->GetRowSpan(&rowspan);
	RETVAL = rowspan;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLTableCellElement::SetRowSpan

=for signature $htmltablecellelement->SetRowSpan($rowspan)



=cut

## SetRowSpan(PRInt32 aRowSpan)
void
moz_dom_SetRowSpan (htmltablecellelement, rowspan)
	nsIDOMHTMLTableCellElement *htmltablecellelement;
	PRInt32  rowspan;
    CODE:
	htmltablecellelement->SetRowSpan(rowspan);

=for apidoc Mozilla::DOM::HTMLTableCellElement::GetScope

=for signature $scope = $htmltablecellelement->GetScope()



=cut

## GetScope(nsAString & aScope)
nsEmbedString
moz_dom_GetScope (htmltablecellelement)
	nsIDOMHTMLTableCellElement *htmltablecellelement;
    PREINIT:
	nsEmbedString scope;
    CODE:
	htmltablecellelement->GetScope(scope);
	RETVAL = scope;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLTableCellElement::SetScope

=for signature $htmltablecellelement->SetScope($scope)



=cut

## SetScope(const nsAString & aScope)
void
moz_dom_SetScope (htmltablecellelement, scope)
	nsIDOMHTMLTableCellElement *htmltablecellelement;
	nsEmbedString scope;
    CODE:
	htmltablecellelement->SetScope(scope);

=for apidoc Mozilla::DOM::HTMLTableCellElement::GetVAlign

=for signature $valign = $htmltablecellelement->GetVAlign()



=cut

## GetVAlign(nsAString & aVAlign)
nsEmbedString
moz_dom_GetVAlign (htmltablecellelement)
	nsIDOMHTMLTableCellElement *htmltablecellelement;
    PREINIT:
	nsEmbedString valign;
    CODE:
	htmltablecellelement->GetVAlign(valign);
	RETVAL = valign;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLTableCellElement::SetVAlign

=for signature $htmltablecellelement->SetVAlign($valign)



=cut

## SetVAlign(const nsAString & aVAlign)
void
moz_dom_SetVAlign (htmltablecellelement, valign)
	nsIDOMHTMLTableCellElement *htmltablecellelement;
	nsEmbedString valign;
    CODE:
	htmltablecellelement->SetVAlign(valign);

=for apidoc Mozilla::DOM::HTMLTableCellElement::GetWidth

=for signature $width = $htmltablecellelement->GetWidth()



=cut

## GetWidth(nsAString & aWidth)
nsEmbedString
moz_dom_GetWidth (htmltablecellelement)
	nsIDOMHTMLTableCellElement *htmltablecellelement;
    PREINIT:
	nsEmbedString width;
    CODE:
	htmltablecellelement->GetWidth(width);
	RETVAL = width;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLTableCellElement::SetWidth

=for signature $htmltablecellelement->SetWidth($width)



=cut

## SetWidth(const nsAString & aWidth)
void
moz_dom_SetWidth (htmltablecellelement, width)
	nsIDOMHTMLTableCellElement *htmltablecellelement;
	nsEmbedString width;
    CODE:
	htmltablecellelement->SetWidth(width);

# -----------------------------------------------------------------------------

MODULE = Mozilla::DOM	PACKAGE = Mozilla::DOM::HTMLTableColElement	PREFIX = moz_dom_

# /usr/include/mozilla/nsIDOMHTMLTableColElement.h

=for object Mozilla::DOM::HTMLTableColElement

Mozilla::DOM::HTMLTableColElement is a wrapper around an instance of Mozilla's
nsIDOMHTMLTableColElement interface. This class inherits from
L<HTMLElement|Mozilla::DOM::HTMLElement>.

 * The nsIDOMHTMLTableColElement interface is the interface to a
 * [X]HTML col element.
 *
 * For more information on this interface please see
 * http://www.w3.org/TR/DOM-Level-2-HTML/
 *
 * @status FROZEN


=cut

=head1 CLASS METHODS

=head2 $iid = Mozilla::DOM::HTMLTableColElement->B<GetIID>()

Pass this to QueryInterface.

=cut

## NS_DEFINE_STATIC_IID_ACCESSOR(NS_IDOMHTMLTABLECOLELEMENT_IID)
static nsIID
nsIDOMHTMLTableColElement::GetIID()
    CODE:
	const nsIID &id = nsIDOMHTMLTableColElement::GetIID();
	RETVAL = (nsIID) id;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLTableColElement::GetAlign

=for signature $align = $htmltablecolelement->GetAlign()



=cut

## GetAlign(nsAString & aAlign)
nsEmbedString
moz_dom_GetAlign (htmltablecolelement)
	nsIDOMHTMLTableColElement *htmltablecolelement;
    PREINIT:
	nsEmbedString align;
    CODE:
	htmltablecolelement->GetAlign(align);
	RETVAL = align;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLTableColElement::SetAlign

=for signature $htmltablecolelement->SetAlign($align)



=cut

## SetAlign(const nsAString & aAlign)
void
moz_dom_SetAlign (htmltablecolelement, align)
	nsIDOMHTMLTableColElement *htmltablecolelement;
	nsEmbedString align;
    CODE:
	htmltablecolelement->SetAlign(align);

=for apidoc Mozilla::DOM::HTMLTableColElement::GetCh

=for signature $ch = $htmltablecolelement->GetCh()



=cut

## GetCh(nsAString & aCh)
nsEmbedString
moz_dom_GetCh (htmltablecolelement)
	nsIDOMHTMLTableColElement *htmltablecolelement;
    PREINIT:
	nsEmbedString ch;
    CODE:
	htmltablecolelement->GetCh(ch);
	RETVAL = ch;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLTableColElement::SetCh

=for signature $htmltablecolelement->SetCh($ch)



=cut

## SetCh(const nsAString & aCh)
void
moz_dom_SetCh (htmltablecolelement, ch)
	nsIDOMHTMLTableColElement *htmltablecolelement;
	nsEmbedString ch;
    CODE:
	htmltablecolelement->SetCh(ch);

=for apidoc Mozilla::DOM::HTMLTableColElement::GetChOff

=for signature $choff = $htmltablecolelement->GetChOff()



=cut

## GetChOff(nsAString & aChOff)
nsEmbedString
moz_dom_GetChOff (htmltablecolelement)
	nsIDOMHTMLTableColElement *htmltablecolelement;
    PREINIT:
	nsEmbedString choff;
    CODE:
	htmltablecolelement->GetChOff(choff);
	RETVAL = choff;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLTableColElement::SetChOff

=for signature $htmltablecolelement->SetChOff($choff)



=cut

## SetChOff(const nsAString & aChOff)
void
moz_dom_SetChOff (htmltablecolelement, choff)
	nsIDOMHTMLTableColElement *htmltablecolelement;
	nsEmbedString choff;
    CODE:
	htmltablecolelement->SetChOff(choff);

=for apidoc Mozilla::DOM::HTMLTableColElement::GetSpan

=for signature $span = $htmltablecolelement->GetSpan()



=cut

## GetSpan(PRInt32 *aSpan)
PRInt32
moz_dom_GetSpan (htmltablecolelement)
	nsIDOMHTMLTableColElement *htmltablecolelement;
    PREINIT:
	PRInt32 span;
    CODE:
	htmltablecolelement->GetSpan(&span);
	RETVAL = span;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLTableColElement::SetSpan

=for signature $htmltablecolelement->SetSpan($span)



=cut

## SetSpan(PRInt32 aSpan)
void
moz_dom_SetSpan (htmltablecolelement, span)
	nsIDOMHTMLTableColElement *htmltablecolelement;
	PRInt32  span;
    CODE:
	htmltablecolelement->SetSpan(span);

=for apidoc Mozilla::DOM::HTMLTableColElement::GetVAlign

=for signature $valign = $htmltablecolelement->GetVAlign()



=cut

## GetVAlign(nsAString & aVAlign)
nsEmbedString
moz_dom_GetVAlign (htmltablecolelement)
	nsIDOMHTMLTableColElement *htmltablecolelement;
    PREINIT:
	nsEmbedString valign;
    CODE:
	htmltablecolelement->GetVAlign(valign);
	RETVAL = valign;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLTableColElement::SetVAlign

=for signature $htmltablecolelement->SetVAlign($valign)



=cut

## SetVAlign(const nsAString & aVAlign)
void
moz_dom_SetVAlign (htmltablecolelement, valign)
	nsIDOMHTMLTableColElement *htmltablecolelement;
	nsEmbedString valign;
    CODE:
	htmltablecolelement->SetVAlign(valign);

=for apidoc Mozilla::DOM::HTMLTableColElement::GetWidth

=for signature $width = $htmltablecolelement->GetWidth()



=cut

## GetWidth(nsAString & aWidth)
nsEmbedString
moz_dom_GetWidth (htmltablecolelement)
	nsIDOMHTMLTableColElement *htmltablecolelement;
    PREINIT:
	nsEmbedString width;
    CODE:
	htmltablecolelement->GetWidth(width);
	RETVAL = width;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLTableColElement::SetWidth

=for signature $htmltablecolelement->SetWidth($width)



=cut

## SetWidth(const nsAString & aWidth)
void
moz_dom_SetWidth (htmltablecolelement, width)
	nsIDOMHTMLTableColElement *htmltablecolelement;
	nsEmbedString width;
    CODE:
	htmltablecolelement->SetWidth(width);

# -----------------------------------------------------------------------------

MODULE = Mozilla::DOM	PACKAGE = Mozilla::DOM::HTMLTableElement	PREFIX = moz_dom_

# /usr/include/mozilla/nsIDOMHTMLTableElement.h

=for object Mozilla::DOM::HTMLTableElement

Mozilla::DOM::HTMLTableElement is a wrapper around an instance of Mozilla's
nsIDOMHTMLTableElement interface. This class inherits from
L<HTMLElement|Mozilla::DOM::HTMLElement>.

 * The nsIDOMHTMLTableElement interface is the interface to a [X]HTML
 * table element.
 *
 * For more information on this interface please see
 * http://www.w3.org/TR/DOM-Level-2-HTML/
 *
 * @status FROZEN


=cut

=head1 CLASS METHODS

=head2 $iid = Mozilla::DOM::HTMLTableElement->B<GetIID>()

Pass this to QueryInterface.

=cut

## NS_DEFINE_STATIC_IID_ACCESSOR(NS_IDOMHTMLTABLEELEMENT_IID)
static nsIID
nsIDOMHTMLTableElement::GetIID()
    CODE:
	const nsIID &id = nsIDOMHTMLTableElement::GetIID();
	RETVAL = (nsIID) id;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLTableElement::GetCaption

=for signature $caption = $htmltableelement->GetCaption()



=cut

## GetCaption(nsIDOMHTMLTableCaptionElement * *aCaption)
nsIDOMHTMLTableCaptionElement *
moz_dom_GetCaption (htmltableelement)
	nsIDOMHTMLTableElement *htmltableelement;
    PREINIT:
	nsIDOMHTMLTableCaptionElement * caption;
    CODE:
	htmltableelement->GetCaption(&caption);
	RETVAL = caption;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLTableElement::SetCaption

=for signature $htmltableelement->SetCaption($caption)



=cut

## SetCaption(nsIDOMHTMLTableCaptionElement * aCaption)
void
moz_dom_SetCaption (htmltableelement, caption)
	nsIDOMHTMLTableElement *htmltableelement;
	nsIDOMHTMLTableCaptionElement *  caption;
    CODE:
	htmltableelement->SetCaption(caption);

=for apidoc Mozilla::DOM::HTMLTableElement::GetTHead

=for signature $thead = $htmltableelement->GetTHead()



=cut

## GetTHead(nsIDOMHTMLTableSectionElement * *aTHead)
nsIDOMHTMLTableSectionElement *
moz_dom_GetTHead (htmltableelement)
	nsIDOMHTMLTableElement *htmltableelement;
    PREINIT:
	nsIDOMHTMLTableSectionElement * thead;
    CODE:
	htmltableelement->GetTHead(&thead);
	RETVAL = thead;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLTableElement::SetTHead

=for signature $htmltableelement->SetTHead($thead)



=cut

## SetTHead(nsIDOMHTMLTableSectionElement * aTHead)
void
moz_dom_SetTHead (htmltableelement, thead)
	nsIDOMHTMLTableElement *htmltableelement;
	nsIDOMHTMLTableSectionElement *  thead;
    CODE:
	htmltableelement->SetTHead(thead);

=for apidoc Mozilla::DOM::HTMLTableElement::GetTFoot

=for signature $tfoot = $htmltableelement->GetTFoot()



=cut

## GetTFoot(nsIDOMHTMLTableSectionElement * *aTFoot)
nsIDOMHTMLTableSectionElement *
moz_dom_GetTFoot (htmltableelement)
	nsIDOMHTMLTableElement *htmltableelement;
    PREINIT:
	nsIDOMHTMLTableSectionElement * tfoot;
    CODE:
	htmltableelement->GetTFoot(&tfoot);
	RETVAL = tfoot;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLTableElement::SetTFoot

=for signature $htmltableelement->SetTFoot($tfoot)



=cut

## SetTFoot(nsIDOMHTMLTableSectionElement * aTFoot)
void
moz_dom_SetTFoot (htmltableelement, tfoot)
	nsIDOMHTMLTableElement *htmltableelement;
	nsIDOMHTMLTableSectionElement *  tfoot;
    CODE:
	htmltableelement->SetTFoot(tfoot);

=for apidoc Mozilla::DOM::HTMLTableElement::GetRows

=for signature $rows = $htmltableelement->GetRows()



=cut

## GetRows(nsIDOMHTMLCollection * *aRows)
nsIDOMHTMLCollection *
moz_dom_GetRows (htmltableelement)
	nsIDOMHTMLTableElement *htmltableelement;
    PREINIT:
	nsIDOMHTMLCollection * rows;
    CODE:
	htmltableelement->GetRows(&rows);
	RETVAL = rows;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLTableElement::GetTBodies

=for signature $tbodies = $htmltableelement->GetTBodies()



=cut

## GetTBodies(nsIDOMHTMLCollection * *aTBodies)
nsIDOMHTMLCollection *
moz_dom_GetTBodies (htmltableelement)
	nsIDOMHTMLTableElement *htmltableelement;
    PREINIT:
	nsIDOMHTMLCollection * tbodies;
    CODE:
	htmltableelement->GetTBodies(&tbodies);
	RETVAL = tbodies;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLTableElement::GetAlign

=for signature $align = $htmltableelement->GetAlign()



=cut

## GetAlign(nsAString & aAlign)
nsEmbedString
moz_dom_GetAlign (htmltableelement)
	nsIDOMHTMLTableElement *htmltableelement;
    PREINIT:
	nsEmbedString align;
    CODE:
	htmltableelement->GetAlign(align);
	RETVAL = align;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLTableElement::SetAlign

=for signature $htmltableelement->SetAlign($align)



=cut

## SetAlign(const nsAString & aAlign)
void
moz_dom_SetAlign (htmltableelement, align)
	nsIDOMHTMLTableElement *htmltableelement;
	nsEmbedString align;
    CODE:
	htmltableelement->SetAlign(align);

=for apidoc Mozilla::DOM::HTMLTableElement::GetBgColor

=for signature $bgcolor = $htmltableelement->GetBgColor()



=cut

## GetBgColor(nsAString & aBgColor)
nsEmbedString
moz_dom_GetBgColor (htmltableelement)
	nsIDOMHTMLTableElement *htmltableelement;
    PREINIT:
	nsEmbedString bgcolor;
    CODE:
	htmltableelement->GetBgColor(bgcolor);
	RETVAL = bgcolor;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLTableElement::SetBgColor

=for signature $htmltableelement->SetBgColor($bgcolor)



=cut

## SetBgColor(const nsAString & aBgColor)
void
moz_dom_SetBgColor (htmltableelement, bgcolor)
	nsIDOMHTMLTableElement *htmltableelement;
	nsEmbedString bgcolor;
    CODE:
	htmltableelement->SetBgColor(bgcolor);

=for apidoc Mozilla::DOM::HTMLTableElement::GetBorder

=for signature $border = $htmltableelement->GetBorder()



=cut

## GetBorder(nsAString & aBorder)
nsEmbedString
moz_dom_GetBorder (htmltableelement)
	nsIDOMHTMLTableElement *htmltableelement;
    PREINIT:
	nsEmbedString border;
    CODE:
	htmltableelement->GetBorder(border);
	RETVAL = border;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLTableElement::SetBorder

=for signature $htmltableelement->SetBorder($border)



=cut

## SetBorder(const nsAString & aBorder)
void
moz_dom_SetBorder (htmltableelement, border)
	nsIDOMHTMLTableElement *htmltableelement;
	nsEmbedString border;
    CODE:
	htmltableelement->SetBorder(border);

=for apidoc Mozilla::DOM::HTMLTableElement::GetCellPadding

=for signature $cellpadding = $htmltableelement->GetCellPadding()



=cut

## GetCellPadding(nsAString & aCellPadding)
nsEmbedString
moz_dom_GetCellPadding (htmltableelement)
	nsIDOMHTMLTableElement *htmltableelement;
    PREINIT:
	nsEmbedString cellpadding;
    CODE:
	htmltableelement->GetCellPadding(cellpadding);
	RETVAL = cellpadding;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLTableElement::SetCellPadding

=for signature $htmltableelement->SetCellPadding($cellpadding)



=cut

## SetCellPadding(const nsAString & aCellPadding)
void
moz_dom_SetCellPadding (htmltableelement, cellpadding)
	nsIDOMHTMLTableElement *htmltableelement;
	nsEmbedString cellpadding;
    CODE:
	htmltableelement->SetCellPadding(cellpadding);

=for apidoc Mozilla::DOM::HTMLTableElement::GetCellSpacing

=for signature $cellspacing = $htmltableelement->GetCellSpacing()



=cut

## GetCellSpacing(nsAString & aCellSpacing)
nsEmbedString
moz_dom_GetCellSpacing (htmltableelement)
	nsIDOMHTMLTableElement *htmltableelement;
    PREINIT:
	nsEmbedString cellspacing;
    CODE:
	htmltableelement->GetCellSpacing(cellspacing);
	RETVAL = cellspacing;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLTableElement::SetCellSpacing

=for signature $htmltableelement->SetCellSpacing($cellspacing)



=cut

## SetCellSpacing(const nsAString & aCellSpacing)
void
moz_dom_SetCellSpacing (htmltableelement, cellspacing)
	nsIDOMHTMLTableElement *htmltableelement;
	nsEmbedString cellspacing;
    CODE:
	htmltableelement->SetCellSpacing(cellspacing);

=for apidoc Mozilla::DOM::HTMLTableElement::GetFrame

=for signature $frame = $htmltableelement->GetFrame()



=cut

## GetFrame(nsAString & aFrame)
nsEmbedString
moz_dom_GetFrame (htmltableelement)
	nsIDOMHTMLTableElement *htmltableelement;
    PREINIT:
	nsEmbedString frame;
    CODE:
	htmltableelement->GetFrame(frame);
	RETVAL = frame;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLTableElement::SetFrame

=for signature $htmltableelement->SetFrame($frame)



=cut

## SetFrame(const nsAString & aFrame)
void
moz_dom_SetFrame (htmltableelement, frame)
	nsIDOMHTMLTableElement *htmltableelement;
	nsEmbedString frame;
    CODE:
	htmltableelement->SetFrame(frame);

=for apidoc Mozilla::DOM::HTMLTableElement::GetRules

=for signature $rules = $htmltableelement->GetRules()



=cut

## GetRules(nsAString & aRules)
nsEmbedString
moz_dom_GetRules (htmltableelement)
	nsIDOMHTMLTableElement *htmltableelement;
    PREINIT:
	nsEmbedString rules;
    CODE:
	htmltableelement->GetRules(rules);
	RETVAL = rules;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLTableElement::SetRules

=for signature $htmltableelement->SetRules($rules)



=cut

## SetRules(const nsAString & aRules)
void
moz_dom_SetRules (htmltableelement, rules)
	nsIDOMHTMLTableElement *htmltableelement;
	nsEmbedString rules;
    CODE:
	htmltableelement->SetRules(rules);

=for apidoc Mozilla::DOM::HTMLTableElement::GetSummary

=for signature $summary = $htmltableelement->GetSummary()



=cut

## GetSummary(nsAString & aSummary)
nsEmbedString
moz_dom_GetSummary (htmltableelement)
	nsIDOMHTMLTableElement *htmltableelement;
    PREINIT:
	nsEmbedString summary;
    CODE:
	htmltableelement->GetSummary(summary);
	RETVAL = summary;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLTableElement::SetSummary

=for signature $htmltableelement->SetSummary($summary)



=cut

## SetSummary(const nsAString & aSummary)
void
moz_dom_SetSummary (htmltableelement, summary)
	nsIDOMHTMLTableElement *htmltableelement;
	nsEmbedString summary;
    CODE:
	htmltableelement->SetSummary(summary);

=for apidoc Mozilla::DOM::HTMLTableElement::GetWidth

=for signature $width = $htmltableelement->GetWidth()



=cut

## GetWidth(nsAString & aWidth)
nsEmbedString
moz_dom_GetWidth (htmltableelement)
	nsIDOMHTMLTableElement *htmltableelement;
    PREINIT:
	nsEmbedString width;
    CODE:
	htmltableelement->GetWidth(width);
	RETVAL = width;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLTableElement::SetWidth

=for signature $htmltableelement->SetWidth($width)



=cut

## SetWidth(const nsAString & aWidth)
void
moz_dom_SetWidth (htmltableelement, width)
	nsIDOMHTMLTableElement *htmltableelement;
	nsEmbedString width;
    CODE:
	htmltableelement->SetWidth(width);

=for apidoc Mozilla::DOM::HTMLTableElement::CreateTHead

=for signature $retval = $htmltableelement->CreateTHead()



=cut

## CreateTHead(nsIDOMHTMLElement **_retval)
nsIDOMHTMLElement *
moz_dom_CreateTHead (htmltableelement)
	nsIDOMHTMLTableElement *htmltableelement;
    PREINIT:
	nsIDOMHTMLElement * retval;
    CODE:
	htmltableelement->CreateTHead(&retval);
	RETVAL = retval;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLTableElement::DeleteTHead

=for signature $htmltableelement->DeleteTHead()



=cut

## DeleteTHead(void)
void
moz_dom_DeleteTHead (htmltableelement)
	nsIDOMHTMLTableElement *htmltableelement;
    CODE:
	htmltableelement->DeleteTHead();

=for apidoc Mozilla::DOM::HTMLTableElement::CreateTFoot

=for signature $retval = $htmltableelement->CreateTFoot()



=cut

## CreateTFoot(nsIDOMHTMLElement **_retval)
nsIDOMHTMLElement *
moz_dom_CreateTFoot (htmltableelement)
	nsIDOMHTMLTableElement *htmltableelement;
    PREINIT:
	nsIDOMHTMLElement * retval;
    CODE:
	htmltableelement->CreateTFoot(&retval);
	RETVAL = retval;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLTableElement::DeleteTFoot

=for signature $htmltableelement->DeleteTFoot()



=cut

## DeleteTFoot(void)
void
moz_dom_DeleteTFoot (htmltableelement)
	nsIDOMHTMLTableElement *htmltableelement;
    CODE:
	htmltableelement->DeleteTFoot();

=for apidoc Mozilla::DOM::HTMLTableElement::CreateCaption

=for signature $retval = $htmltableelement->CreateCaption()



=cut

## CreateCaption(nsIDOMHTMLElement **_retval)
nsIDOMHTMLElement *
moz_dom_CreateCaption (htmltableelement)
	nsIDOMHTMLTableElement *htmltableelement;
    PREINIT:
	nsIDOMHTMLElement * retval;
    CODE:
	htmltableelement->CreateCaption(&retval);
	RETVAL = retval;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLTableElement::DeleteCaption

=for signature $htmltableelement->DeleteCaption()



=cut

## DeleteCaption(void)
void
moz_dom_DeleteCaption (htmltableelement)
	nsIDOMHTMLTableElement *htmltableelement;
    CODE:
	htmltableelement->DeleteCaption();

=for apidoc Mozilla::DOM::HTMLTableElement::InsertRow

=for signature $retval = $htmltableelement->InsertRow($index)



=cut

## InsertRow(PRInt32 index, nsIDOMHTMLElement **_retval)
nsIDOMHTMLElement *
moz_dom_InsertRow (htmltableelement, index)
	nsIDOMHTMLTableElement *htmltableelement;
	PRInt32  index;
    PREINIT:
	nsIDOMHTMLElement * retval;
    CODE:
	htmltableelement->InsertRow(index, &retval);
	RETVAL = retval;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLTableElement::DeleteRow

=for signature $htmltableelement->DeleteRow($index)



=cut

## DeleteRow(PRInt32 index)
void
moz_dom_DeleteRow (htmltableelement, index)
	nsIDOMHTMLTableElement *htmltableelement;
	PRInt32  index;
    CODE:
	htmltableelement->DeleteRow(index);

# -----------------------------------------------------------------------------

MODULE = Mozilla::DOM	PACKAGE = Mozilla::DOM::HTMLTableRowElement	PREFIX = moz_dom_

# /usr/include/mozilla/nsIDOMHTMLTableRowElement.h

=for object Mozilla::DOM::HTMLTableRowElement

Mozilla::DOM::HTMLTableRowElement is a wrapper around an instance of Mozilla's
nsIDOMHTMLTableRowElement interface. This class inherits from
L<HTMLElement|Mozilla::DOM::HTMLElement>.

 * The nsIDOMHTMLTableRowElement interface is the interface to a
 * [X]HTML tr element.
 *
 * For more information on this interface please see
 * http://www.w3.org/TR/DOM-Level-2-HTML/
 *
 * @status FROZEN


=cut

=head1 CLASS METHODS

=head2 $iid = Mozilla::DOM::HTMLTableRowElement->B<GetIID>()

Pass this to QueryInterface.

=cut

## NS_DEFINE_STATIC_IID_ACCESSOR(NS_IDOMHTMLTABLEROWELEMENT_IID)
static nsIID
nsIDOMHTMLTableRowElement::GetIID()
    CODE:
	const nsIID &id = nsIDOMHTMLTableRowElement::GetIID();
	RETVAL = (nsIID) id;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLTableRowElement::GetRowIndex

=for signature $rowindex = $htmltablerowelement->GetRowIndex()



=cut

## GetRowIndex(PRInt32 *aRowIndex)
PRInt32
moz_dom_GetRowIndex (htmltablerowelement)
	nsIDOMHTMLTableRowElement *htmltablerowelement;
    PREINIT:
	PRInt32 rowindex;
    CODE:
	htmltablerowelement->GetRowIndex(&rowindex);
	RETVAL = rowindex;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLTableRowElement::GetSectionRowIndex

=for signature $sectionrowindex = $htmltablerowelement->GetSectionRowIndex()



=cut

## GetSectionRowIndex(PRInt32 *aSectionRowIndex)
PRInt32
moz_dom_GetSectionRowIndex (htmltablerowelement)
	nsIDOMHTMLTableRowElement *htmltablerowelement;
    PREINIT:
	PRInt32 sectionrowindex;
    CODE:
	htmltablerowelement->GetSectionRowIndex(&sectionrowindex);
	RETVAL = sectionrowindex;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLTableRowElement::GetCells

=for signature $cells = $htmltablerowelement->GetCells()



=cut

## GetCells(nsIDOMHTMLCollection * *aCells)
nsIDOMHTMLCollection *
moz_dom_GetCells (htmltablerowelement)
	nsIDOMHTMLTableRowElement *htmltablerowelement;
    PREINIT:
	nsIDOMHTMLCollection * cells;
    CODE:
	htmltablerowelement->GetCells(&cells);
	RETVAL = cells;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLTableRowElement::GetAlign

=for signature $align = $htmltablerowelement->GetAlign()



=cut

## GetAlign(nsAString & aAlign)
nsEmbedString
moz_dom_GetAlign (htmltablerowelement)
	nsIDOMHTMLTableRowElement *htmltablerowelement;
    PREINIT:
	nsEmbedString align;
    CODE:
	htmltablerowelement->GetAlign(align);
	RETVAL = align;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLTableRowElement::SetAlign

=for signature $htmltablerowelement->SetAlign($align)



=cut

## SetAlign(const nsAString & aAlign)
void
moz_dom_SetAlign (htmltablerowelement, align)
	nsIDOMHTMLTableRowElement *htmltablerowelement;
	nsEmbedString align;
    CODE:
	htmltablerowelement->SetAlign(align);

=for apidoc Mozilla::DOM::HTMLTableRowElement::GetBgColor

=for signature $bgcolor = $htmltablerowelement->GetBgColor()



=cut

## GetBgColor(nsAString & aBgColor)
nsEmbedString
moz_dom_GetBgColor (htmltablerowelement)
	nsIDOMHTMLTableRowElement *htmltablerowelement;
    PREINIT:
	nsEmbedString bgcolor;
    CODE:
	htmltablerowelement->GetBgColor(bgcolor);
	RETVAL = bgcolor;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLTableRowElement::SetBgColor

=for signature $htmltablerowelement->SetBgColor($bgcolor)



=cut

## SetBgColor(const nsAString & aBgColor)
void
moz_dom_SetBgColor (htmltablerowelement, bgcolor)
	nsIDOMHTMLTableRowElement *htmltablerowelement;
	nsEmbedString bgcolor;
    CODE:
	htmltablerowelement->SetBgColor(bgcolor);

=for apidoc Mozilla::DOM::HTMLTableRowElement::GetCh

=for signature $ch = $htmltablerowelement->GetCh()



=cut

## GetCh(nsAString & aCh)
nsEmbedString
moz_dom_GetCh (htmltablerowelement)
	nsIDOMHTMLTableRowElement *htmltablerowelement;
    PREINIT:
	nsEmbedString ch;
    CODE:
	htmltablerowelement->GetCh(ch);
	RETVAL = ch;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLTableRowElement::SetCh

=for signature $htmltablerowelement->SetCh($ch)



=cut

## SetCh(const nsAString & aCh)
void
moz_dom_SetCh (htmltablerowelement, ch)
	nsIDOMHTMLTableRowElement *htmltablerowelement;
	nsEmbedString ch;
    CODE:
	htmltablerowelement->SetCh(ch);

=for apidoc Mozilla::DOM::HTMLTableRowElement::GetChOff

=for signature $choff = $htmltablerowelement->GetChOff()



=cut

## GetChOff(nsAString & aChOff)
nsEmbedString
moz_dom_GetChOff (htmltablerowelement)
	nsIDOMHTMLTableRowElement *htmltablerowelement;
    PREINIT:
	nsEmbedString choff;
    CODE:
	htmltablerowelement->GetChOff(choff);
	RETVAL = choff;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLTableRowElement::SetChOff

=for signature $htmltablerowelement->SetChOff($choff)



=cut

## SetChOff(const nsAString & aChOff)
void
moz_dom_SetChOff (htmltablerowelement, choff)
	nsIDOMHTMLTableRowElement *htmltablerowelement;
	nsEmbedString choff;
    CODE:
	htmltablerowelement->SetChOff(choff);

=for apidoc Mozilla::DOM::HTMLTableRowElement::GetVAlign

=for signature $valign = $htmltablerowelement->GetVAlign()



=cut

## GetVAlign(nsAString & aVAlign)
nsEmbedString
moz_dom_GetVAlign (htmltablerowelement)
	nsIDOMHTMLTableRowElement *htmltablerowelement;
    PREINIT:
	nsEmbedString valign;
    CODE:
	htmltablerowelement->GetVAlign(valign);
	RETVAL = valign;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLTableRowElement::SetVAlign

=for signature $htmltablerowelement->SetVAlign($valign)



=cut

## SetVAlign(const nsAString & aVAlign)
void
moz_dom_SetVAlign (htmltablerowelement, valign)
	nsIDOMHTMLTableRowElement *htmltablerowelement;
	nsEmbedString valign;
    CODE:
	htmltablerowelement->SetVAlign(valign);

=for apidoc Mozilla::DOM::HTMLTableRowElement::InsertCell

=for signature $retval = $htmltablerowelement->InsertCell($index)



=cut

## InsertCell(PRInt32 index, nsIDOMHTMLElement **_retval)
nsIDOMHTMLElement *
moz_dom_InsertCell (htmltablerowelement, index)
	nsIDOMHTMLTableRowElement *htmltablerowelement;
	PRInt32  index;
    PREINIT:
	nsIDOMHTMLElement * retval;
    CODE:
	htmltablerowelement->InsertCell(index, &retval);
	RETVAL = retval;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLTableRowElement::DeleteCell

=for signature $htmltablerowelement->DeleteCell($index)



=cut

## DeleteCell(PRInt32 index)
void
moz_dom_DeleteCell (htmltablerowelement, index)
	nsIDOMHTMLTableRowElement *htmltablerowelement;
	PRInt32  index;
    CODE:
	htmltablerowelement->DeleteCell(index);

# -----------------------------------------------------------------------------

MODULE = Mozilla::DOM	PACKAGE = Mozilla::DOM::HTMLTableSectionElement	PREFIX = moz_dom_

# /usr/include/mozilla/nsIDOMHTMLTableSectionElem.h

=for object Mozilla::DOM::HTMLTableSectionElement

Mozilla::DOM::HTMLTableSectionElement is a wrapper around an instance of Mozilla's
nsIDOMHTMLTableSectionElement interface. This class inherits from
L<HTMLElement|Mozilla::DOM::HTMLElement>.

 * The nsIDOMHTMLTableSectionElement interface is the interface to a
 * [X]HTML thead, tbody, and tfoot element.
 *
 * For more information on this interface please see
 * http://www.w3.org/TR/DOM-Level-2-HTML/
 *
 * @status FROZEN


=cut

=head1 CLASS METHODS

=head2 $iid = Mozilla::DOM::HTMLTableSectionElement->B<GetIID>()

Pass this to QueryInterface.

=cut

## NS_DEFINE_STATIC_IID_ACCESSOR(NS_IDOMHTMLTABLESECTIONELEMENT_IID)
static nsIID
nsIDOMHTMLTableSectionElement::GetIID()
    CODE:
	const nsIID &id = nsIDOMHTMLTableSectionElement::GetIID();
	RETVAL = (nsIID) id;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLTableSectionElement::GetAlign

=for signature $align = $htmltablesectionelement->GetAlign()



=cut

## GetAlign(nsAString & aAlign)
nsEmbedString
moz_dom_GetAlign (htmltablesectionelement)
	nsIDOMHTMLTableSectionElement *htmltablesectionelement;
    PREINIT:
	nsEmbedString align;
    CODE:
	htmltablesectionelement->GetAlign(align);
	RETVAL = align;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLTableSectionElement::SetAlign

=for signature $htmltablesectionelement->SetAlign($align)



=cut

## SetAlign(const nsAString & aAlign)
void
moz_dom_SetAlign (htmltablesectionelement, align)
	nsIDOMHTMLTableSectionElement *htmltablesectionelement;
	nsEmbedString align;
    CODE:
	htmltablesectionelement->SetAlign(align);

=for apidoc Mozilla::DOM::HTMLTableSectionElement::GetCh

=for signature $ch = $htmltablesectionelement->GetCh()



=cut

## GetCh(nsAString & aCh)
nsEmbedString
moz_dom_GetCh (htmltablesectionelement)
	nsIDOMHTMLTableSectionElement *htmltablesectionelement;
    PREINIT:
	nsEmbedString ch;
    CODE:
	htmltablesectionelement->GetCh(ch);
	RETVAL = ch;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLTableSectionElement::SetCh

=for signature $htmltablesectionelement->SetCh($ch)



=cut

## SetCh(const nsAString & aCh)
void
moz_dom_SetCh (htmltablesectionelement, ch)
	nsIDOMHTMLTableSectionElement *htmltablesectionelement;
	nsEmbedString ch;
    CODE:
	htmltablesectionelement->SetCh(ch);

=for apidoc Mozilla::DOM::HTMLTableSectionElement::GetChOff

=for signature $choff = $htmltablesectionelement->GetChOff()



=cut

## GetChOff(nsAString & aChOff)
nsEmbedString
moz_dom_GetChOff (htmltablesectionelement)
	nsIDOMHTMLTableSectionElement *htmltablesectionelement;
    PREINIT:
	nsEmbedString choff;
    CODE:
	htmltablesectionelement->GetChOff(choff);
	RETVAL = choff;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLTableSectionElement::SetChOff

=for signature $htmltablesectionelement->SetChOff($choff)



=cut

## SetChOff(const nsAString & aChOff)
void
moz_dom_SetChOff (htmltablesectionelement, choff)
	nsIDOMHTMLTableSectionElement *htmltablesectionelement;
	nsEmbedString choff;
    CODE:
	htmltablesectionelement->SetChOff(choff);

=for apidoc Mozilla::DOM::HTMLTableSectionElement::GetVAlign

=for signature $valign = $htmltablesectionelement->GetVAlign()



=cut

## GetVAlign(nsAString & aVAlign)
nsEmbedString
moz_dom_GetVAlign (htmltablesectionelement)
	nsIDOMHTMLTableSectionElement *htmltablesectionelement;
    PREINIT:
	nsEmbedString valign;
    CODE:
	htmltablesectionelement->GetVAlign(valign);
	RETVAL = valign;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLTableSectionElement::SetVAlign

=for signature $htmltablesectionelement->SetVAlign($valign)



=cut

## SetVAlign(const nsAString & aVAlign)
void
moz_dom_SetVAlign (htmltablesectionelement, valign)
	nsIDOMHTMLTableSectionElement *htmltablesectionelement;
	nsEmbedString valign;
    CODE:
	htmltablesectionelement->SetVAlign(valign);

=for apidoc Mozilla::DOM::HTMLTableSectionElement::GetRows

=for signature $rows = $htmltablesectionelement->GetRows()



=cut

## GetRows(nsIDOMHTMLCollection * *aRows)
nsIDOMHTMLCollection *
moz_dom_GetRows (htmltablesectionelement)
	nsIDOMHTMLTableSectionElement *htmltablesectionelement;
    PREINIT:
	nsIDOMHTMLCollection * rows;
    CODE:
	htmltablesectionelement->GetRows(&rows);
	RETVAL = rows;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLTableSectionElement::InsertRow

=for signature $retval = $htmltablesectionelement->InsertRow($index)



=cut

## InsertRow(PRInt32 index, nsIDOMHTMLElement **_retval)
nsIDOMHTMLElement *
moz_dom_InsertRow (htmltablesectionelement, index)
	nsIDOMHTMLTableSectionElement *htmltablesectionelement;
	PRInt32  index;
    PREINIT:
	nsIDOMHTMLElement * retval;
    CODE:
	htmltablesectionelement->InsertRow(index, &retval);
	RETVAL = retval;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLTableSectionElement::DeleteRow

=for signature $htmltablesectionelement->DeleteRow($index)



=cut

## DeleteRow(PRInt32 index)
void
moz_dom_DeleteRow (htmltablesectionelement, index)
	nsIDOMHTMLTableSectionElement *htmltablesectionelement;
	PRInt32  index;
    CODE:
	htmltablesectionelement->DeleteRow(index);

# -----------------------------------------------------------------------------

MODULE = Mozilla::DOM	PACKAGE = Mozilla::DOM::HTMLTextAreaElement	PREFIX = moz_dom_

# /usr/include/mozilla/nsIDOMHTMLTextAreaElement.h

=for object Mozilla::DOM::HTMLTextAreaElement

Mozilla::DOM::HTMLTextAreaElement is a wrapper around an instance of Mozilla's
nsIDOMHTMLTextAreaElement interface. This class inherits from
L<HTMLElement|Mozilla::DOM::HTMLElement>.

 * The nsIDOMHTMLTextAreaElement interface is the interface to a
 * [X]HTML textarea element.
 *
 * For more information on this interface please see
 * http://www.w3.org/TR/DOM-Level-2-HTML/
 *
 * @status FROZEN


=cut

=head1 CLASS METHODS

=head2 $iid = Mozilla::DOM::HTMLTextAreaElement->B<GetIID>()

Pass this to QueryInterface.

=cut

## NS_DEFINE_STATIC_IID_ACCESSOR(NS_IDOMHTMLTEXTAREAELEMENT_IID)
static nsIID
nsIDOMHTMLTextAreaElement::GetIID()
    CODE:
	const nsIID &id = nsIDOMHTMLTextAreaElement::GetIID();
	RETVAL = (nsIID) id;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLTextAreaElement::GetDefaultValue

=for signature $defaultvalue = $htmltextareaelement->GetDefaultValue()



=cut

## GetDefaultValue(nsAString & aDefaultValue)
nsEmbedString
moz_dom_GetDefaultValue (htmltextareaelement)
	nsIDOMHTMLTextAreaElement *htmltextareaelement;
    PREINIT:
	nsEmbedString defaultvalue;
    CODE:
	htmltextareaelement->GetDefaultValue(defaultvalue);
	RETVAL = defaultvalue;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLTextAreaElement::SetDefaultValue

=for signature $htmltextareaelement->SetDefaultValue($defaultvalue)



=cut

## SetDefaultValue(const nsAString & aDefaultValue)
void
moz_dom_SetDefaultValue (htmltextareaelement, defaultvalue)
	nsIDOMHTMLTextAreaElement *htmltextareaelement;
	nsEmbedString defaultvalue;
    CODE:
	htmltextareaelement->SetDefaultValue(defaultvalue);

=for apidoc Mozilla::DOM::HTMLTextAreaElement::GetForm

=for signature $form = $htmltextareaelement->GetForm()



=cut

## GetForm(nsIDOMHTMLFormElement * *aForm)
nsIDOMHTMLFormElement *
moz_dom_GetForm (htmltextareaelement)
	nsIDOMHTMLTextAreaElement *htmltextareaelement;
    PREINIT:
	nsIDOMHTMLFormElement * form;
    CODE:
	htmltextareaelement->GetForm(&form);
	RETVAL = form;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLTextAreaElement::GetAccessKey

=for signature $accesskey = $htmltextareaelement->GetAccessKey()



=cut

## GetAccessKey(nsAString & aAccessKey)
nsEmbedString
moz_dom_GetAccessKey (htmltextareaelement)
	nsIDOMHTMLTextAreaElement *htmltextareaelement;
    PREINIT:
	nsEmbedString accesskey;
    CODE:
	htmltextareaelement->GetAccessKey(accesskey);
	RETVAL = accesskey;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLTextAreaElement::SetAccessKey

=for signature $htmltextareaelement->SetAccessKey($accesskey)



=cut

## SetAccessKey(const nsAString & aAccessKey)
void
moz_dom_SetAccessKey (htmltextareaelement, accesskey)
	nsIDOMHTMLTextAreaElement *htmltextareaelement;
	nsEmbedString accesskey;
    CODE:
	htmltextareaelement->SetAccessKey(accesskey);

=for apidoc Mozilla::DOM::HTMLTextAreaElement::GetCols

=for signature $cols = $htmltextareaelement->GetCols()



=cut

## GetCols(PRInt32 *aCols)
PRInt32
moz_dom_GetCols (htmltextareaelement)
	nsIDOMHTMLTextAreaElement *htmltextareaelement;
    PREINIT:
	PRInt32 cols;
    CODE:
	htmltextareaelement->GetCols(&cols);
	RETVAL = cols;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLTextAreaElement::SetCols

=for signature $htmltextareaelement->SetCols($cols)



=cut

## SetCols(PRInt32 aCols)
void
moz_dom_SetCols (htmltextareaelement, cols)
	nsIDOMHTMLTextAreaElement *htmltextareaelement;
	PRInt32  cols;
    CODE:
	htmltextareaelement->SetCols(cols);

=for apidoc Mozilla::DOM::HTMLTextAreaElement::GetDisabled

=for signature $bool = $htmltextareaelement->GetDisabled()



=cut

## GetDisabled(PRBool *aDisabled)
PRBool
moz_dom_GetDisabled (htmltextareaelement)
	nsIDOMHTMLTextAreaElement *htmltextareaelement;
    PREINIT:
	PRBool disabled;
    CODE:
	htmltextareaelement->GetDisabled(&disabled);
	RETVAL = disabled;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLTextAreaElement::SetDisabled

=for signature $htmltextareaelement->SetDisabled($disabled)



=cut

## SetDisabled(PRBool aDisabled)
void
moz_dom_SetDisabled (htmltextareaelement, disabled)
	nsIDOMHTMLTextAreaElement *htmltextareaelement;
	PRBool  disabled;
    CODE:
	htmltextareaelement->SetDisabled(disabled);

=for apidoc Mozilla::DOM::HTMLTextAreaElement::GetName

=for signature $name = $htmltextareaelement->GetName()



=cut

## GetName(nsAString & aName)
nsEmbedString
moz_dom_GetName (htmltextareaelement)
	nsIDOMHTMLTextAreaElement *htmltextareaelement;
    PREINIT:
	nsEmbedString name;
    CODE:
	htmltextareaelement->GetName(name);
	RETVAL = name;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLTextAreaElement::SetName

=for signature $htmltextareaelement->SetName($name)



=cut

## SetName(const nsAString & aName)
void
moz_dom_SetName (htmltextareaelement, name)
	nsIDOMHTMLTextAreaElement *htmltextareaelement;
	nsEmbedString name;
    CODE:
	htmltextareaelement->SetName(name);

=for apidoc Mozilla::DOM::HTMLTextAreaElement::GetReadOnly

=for signature $bool = $htmltextareaelement->GetReadOnly()



=cut

## GetReadOnly(PRBool *aReadOnly)
PRBool
moz_dom_GetReadOnly (htmltextareaelement)
	nsIDOMHTMLTextAreaElement *htmltextareaelement;
    PREINIT:
	PRBool readonly;
    CODE:
	htmltextareaelement->GetReadOnly(&readonly);
	RETVAL = readonly;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLTextAreaElement::SetReadOnly

=for signature $htmltextareaelement->SetReadOnly($readonly)



=cut

## SetReadOnly(PRBool aReadOnly)
void
moz_dom_SetReadOnly (htmltextareaelement, readonly)
	nsIDOMHTMLTextAreaElement *htmltextareaelement;
	PRBool  readonly;
    CODE:
	htmltextareaelement->SetReadOnly(readonly);

=for apidoc Mozilla::DOM::HTMLTextAreaElement::GetRows

=for signature $rows = $htmltextareaelement->GetRows()



=cut

## GetRows(PRInt32 *aRows)
PRInt32
moz_dom_GetRows (htmltextareaelement)
	nsIDOMHTMLTextAreaElement *htmltextareaelement;
    PREINIT:
	PRInt32 rows;
    CODE:
	htmltextareaelement->GetRows(&rows);
	RETVAL = rows;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLTextAreaElement::SetRows

=for signature $htmltextareaelement->SetRows($rows)



=cut

## SetRows(PRInt32 aRows)
void
moz_dom_SetRows (htmltextareaelement, rows)
	nsIDOMHTMLTextAreaElement *htmltextareaelement;
	PRInt32  rows;
    CODE:
	htmltextareaelement->SetRows(rows);

=for apidoc Mozilla::DOM::HTMLTextAreaElement::GetTabIndex

=for signature $tabindex = $htmltextareaelement->GetTabIndex()



=cut

## GetTabIndex(PRInt32 *aTabIndex)
PRInt32
moz_dom_GetTabIndex (htmltextareaelement)
	nsIDOMHTMLTextAreaElement *htmltextareaelement;
    PREINIT:
	PRInt32 tabindex;
    CODE:
	htmltextareaelement->GetTabIndex(&tabindex);
	RETVAL = tabindex;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLTextAreaElement::SetTabIndex

=for signature $htmltextareaelement->SetTabIndex($tabindex)



=cut

## SetTabIndex(PRInt32 aTabIndex)
void
moz_dom_SetTabIndex (htmltextareaelement, tabindex)
	nsIDOMHTMLTextAreaElement *htmltextareaelement;
	PRInt32  tabindex;
    CODE:
	htmltextareaelement->SetTabIndex(tabindex);

=for apidoc Mozilla::DOM::HTMLTextAreaElement::GetType

=for signature $type = $htmltextareaelement->GetType()



=cut

## GetType(nsAString & aType)
nsEmbedString
moz_dom_GetType (htmltextareaelement)
	nsIDOMHTMLTextAreaElement *htmltextareaelement;
    PREINIT:
	nsEmbedString type;
    CODE:
	htmltextareaelement->GetType(type);
	RETVAL = type;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLTextAreaElement::GetValue

=for signature $value = $htmltextareaelement->GetValue()



=cut

## GetValue(nsAString & aValue)
nsEmbedString
moz_dom_GetValue (htmltextareaelement)
	nsIDOMHTMLTextAreaElement *htmltextareaelement;
    PREINIT:
	nsEmbedString value;
    CODE:
	htmltextareaelement->GetValue(value);
	RETVAL = value;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLTextAreaElement::SetValue

=for signature $htmltextareaelement->SetValue($value)



=cut

## SetValue(const nsAString & aValue)
void
moz_dom_SetValue (htmltextareaelement, value)
	nsIDOMHTMLTextAreaElement *htmltextareaelement;
	nsEmbedString value;
    CODE:
	htmltextareaelement->SetValue(value);

=for apidoc Mozilla::DOM::HTMLTextAreaElement::Blur

=for signature $htmltextareaelement->Blur()



=cut

## Blur(void)
void
moz_dom_Blur (htmltextareaelement)
	nsIDOMHTMLTextAreaElement *htmltextareaelement;
    CODE:
	htmltextareaelement->Blur();

=for apidoc Mozilla::DOM::HTMLTextAreaElement::Focus

=for signature $htmltextareaelement->Focus()



=cut

## Focus(void)
void
moz_dom_Focus (htmltextareaelement)
	nsIDOMHTMLTextAreaElement *htmltextareaelement;
    CODE:
	htmltextareaelement->Focus();

=for apidoc Mozilla::DOM::HTMLTextAreaElement::Select

=for signature $htmltextareaelement->Select()



=cut

## Select(void)
void
moz_dom_Select (htmltextareaelement)
	nsIDOMHTMLTextAreaElement *htmltextareaelement;
    CODE:
	htmltextareaelement->Select();

# -----------------------------------------------------------------------------

MODULE = Mozilla::DOM	PACKAGE = Mozilla::DOM::HTMLTitleElement	PREFIX = moz_dom_

# /usr/include/mozilla/nsIDOMHTMLTitleElement.h

=for object Mozilla::DOM::HTMLTitleElement

Mozilla::DOM::HTMLTitleElement is a wrapper around an instance of Mozilla's
nsIDOMHTMLTitleElement interface. This class inherits from
L<HTMLElement|Mozilla::DOM::HTMLElement>.

 * The nsIDOMHTMLTitleElement interface is the interface to a [X]HTML
 * title element.
 *
 * For more information on this interface please see
 * http://www.w3.org/TR/DOM-Level-2-HTML/
 *
 * @status FROZEN


=cut

=head1 CLASS METHODS

=head2 $iid = Mozilla::DOM::HTMLTitleElement->B<GetIID>()

Pass this to QueryInterface.

=cut

## NS_DEFINE_STATIC_IID_ACCESSOR(NS_IDOMHTMLTITLEELEMENT_IID)
static nsIID
nsIDOMHTMLTitleElement::GetIID()
    CODE:
	const nsIID &id = nsIDOMHTMLTitleElement::GetIID();
	RETVAL = (nsIID) id;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLTitleElement::GetText

=for signature $text = $htmltitleelement->GetText()



=cut

## GetText(nsAString & aText)
nsEmbedString
moz_dom_GetText (htmltitleelement)
	nsIDOMHTMLTitleElement *htmltitleelement;
    PREINIT:
	nsEmbedString text;
    CODE:
	htmltitleelement->GetText(text);
	RETVAL = text;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLTitleElement::SetText

=for signature $htmltitleelement->SetText($text)



=cut

## SetText(const nsAString & aText)
void
moz_dom_SetText (htmltitleelement, text)
	nsIDOMHTMLTitleElement *htmltitleelement;
	nsEmbedString text;
    CODE:
	htmltitleelement->SetText(text);

# -----------------------------------------------------------------------------

MODULE = Mozilla::DOM	PACKAGE = Mozilla::DOM::HTMLUListElement	PREFIX = moz_dom_

# /usr/include/mozilla/nsIDOMHTMLUListElement.h

=for object Mozilla::DOM::HTMLUListElement

Mozilla::DOM::HTMLUListElement is a wrapper around an instance of Mozilla's
nsIDOMHTMLUListElement interface. This class inherits from
L<HTMLElement|Mozilla::DOM::HTMLElement>.

 * The nsIDOMHTMLUListElement interface is the interface to a [X]HTML
 * ul element.
 *
 * For more information on this interface please see
 * http://www.w3.org/TR/DOM-Level-2-HTML/
 *
 * @status FROZEN


=cut

=head1 CLASS METHODS

=head2 $iid = Mozilla::DOM::HTMLUListElement->B<GetIID>()

Pass this to QueryInterface.

=cut

## NS_DEFINE_STATIC_IID_ACCESSOR(NS_IDOMHTMLULISTELEMENT_IID)
static nsIID
nsIDOMHTMLUListElement::GetIID()
    CODE:
	const nsIID &id = nsIDOMHTMLUListElement::GetIID();
	RETVAL = (nsIID) id;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLUListElement::GetCompact

=for signature $bool = $htmlulistelement->GetCompact()



=cut

## GetCompact(PRBool *aCompact)
PRBool
moz_dom_GetCompact (htmlulistelement)
	nsIDOMHTMLUListElement *htmlulistelement;
    PREINIT:
	PRBool compact;
    CODE:
	htmlulistelement->GetCompact(&compact);
	RETVAL = compact;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLUListElement::SetCompact

=for signature $htmlulistelement->SetCompact($compact)



=cut

## SetCompact(PRBool aCompact)
void
moz_dom_SetCompact (htmlulistelement, compact)
	nsIDOMHTMLUListElement *htmlulistelement;
	PRBool  compact;
    CODE:
	htmlulistelement->SetCompact(compact);

=for apidoc Mozilla::DOM::HTMLUListElement::GetType

=for signature $type = $htmlulistelement->GetType()



=cut

## GetType(nsAString & aType)
nsEmbedString
moz_dom_GetType (htmlulistelement)
	nsIDOMHTMLUListElement *htmlulistelement;
    PREINIT:
	nsEmbedString type;
    CODE:
	htmlulistelement->GetType(type);
	RETVAL = type;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::HTMLUListElement::SetType

=for signature $htmlulistelement->SetType($type)



=cut

## SetType(const nsAString & aType)
void
moz_dom_SetType (htmlulistelement, type)
	nsIDOMHTMLUListElement *htmlulistelement;
	nsEmbedString type;
    CODE:
	htmlulistelement->SetType(type);


# -----------------------------------------------------------------------------

MODULE = Mozilla::DOM	PACKAGE = Mozilla::DOM::Navigator	PREFIX = moz_dom_

# /usr/include/mozilla/dom/nsIDOMNavigator.h

=for object Mozilla::DOM::Navigator

Mozilla::DOM::Navigator is a wrapper around an instance of Mozilla's
nsIDOMNavigator interface. This class inherits from
L<Supports|Mozilla::DOM::Supports>.

Note: the GetMimeTypes and GetPlugins methods are not wrapped
(otherwise, have to wrap Plugin, PluginArray, MimeType, MimeTypeArray).
Let me know if you think those would actually be useful.

=cut

=head1 CLASS METHODS

=head2 $iid = Mozilla::DOM::Navigator->B<GetIID>()

Pass this to QueryInterface.

=cut

## NS_DEFINE_STATIC_IID_ACCESSOR(NS_IDOMNAVIGATOR_IID)
static nsIID
nsIDOMNavigator::GetIID()
    CODE:
	const nsIID &id = nsIDOMNavigator::GetIID();
	RETVAL = (nsIID) id;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::Navigator::GetAppCodeName

=for signature $appcodename = $navigator->GetAppCodeName()



=cut

## GetAppCodeName(nsAString & aAppCodeName)
nsEmbedString
moz_dom_GetAppCodeName (navigator)
	nsIDOMNavigator *navigator;
    PREINIT:
	nsEmbedString aAppCodeName;
    CODE:
	navigator->GetAppCodeName(aAppCodeName);
	RETVAL = aAppCodeName;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::Navigator::GetAppName

=for signature $appname = $navigator->GetAppName()



=cut

## GetAppName(nsAString & aAppName)
nsEmbedString
moz_dom_GetAppName (navigator)
	nsIDOMNavigator *navigator;
    PREINIT:
	nsEmbedString aAppName;
    CODE:
	navigator->GetAppName(aAppName);
	RETVAL = aAppName;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::Navigator::GetAppVersion

=for signature $appversion = $navigator->GetAppVersion()



=cut

## GetAppVersion(nsAString & aAppVersion)
nsEmbedString
moz_dom_GetAppVersion (navigator)
	nsIDOMNavigator *navigator;
    PREINIT:
	nsEmbedString aAppVersion;
    CODE:
	navigator->GetAppVersion(aAppVersion);
	RETVAL = aAppVersion;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::Navigator::GetLanguage

=for signature $language = $navigator->GetLanguage()



=cut

## GetLanguage(nsAString & aLanguage)
nsEmbedString
moz_dom_GetLanguage (navigator)
	nsIDOMNavigator *navigator;
    PREINIT:
	nsEmbedString aLanguage;
    CODE:
	navigator->GetLanguage(aLanguage);
	RETVAL = aLanguage;
    OUTPUT:
	RETVAL

#=for apidoc Mozilla::DOM::Navigator::GetMimeTypes
#
#=for signature $mimetypes = $navigator->GetMimeTypes()
#
#
#
#=cut
#
### GetMimeTypes(nsIDOMMimeTypeArray * *aMimeTypes)
#nsIDOMMimeTypeArray *
#moz_dom_GetMimeTypes (navigator)
#	nsIDOMNavigator *navigator;
#    PREINIT:
#	nsIDOMMimeTypeArray * aMimeTypes;
#    CODE:
#	navigator->GetMimeTypes(&aMimeTypes);
#	RETVAL = aMimeTypes;
#    OUTPUT:
#	RETVAL

=for apidoc Mozilla::DOM::Navigator::GetPlatform

=for signature $platform = $navigator->GetPlatform()



=cut

## GetPlatform(nsAString & aPlatform)
nsEmbedString
moz_dom_GetPlatform (navigator)
	nsIDOMNavigator *navigator;
    PREINIT:
	nsEmbedString aPlatform;
    CODE:
	navigator->GetPlatform(aPlatform);
	RETVAL = aPlatform;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::Navigator::GetOscpu

=for signature $oscpu = $navigator->GetOscpu()



=cut

## GetOscpu(nsAString & aOscpu)
nsEmbedString
moz_dom_GetOscpu (navigator)
	nsIDOMNavigator *navigator;
    PREINIT:
	nsEmbedString aOscpu;
    CODE:
	navigator->GetOscpu(aOscpu);
	RETVAL = aOscpu;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::Navigator::GetVendor

=for signature $vendor = $navigator->GetVendor()



=cut

## GetVendor(nsAString & aVendor)
nsEmbedString
moz_dom_GetVendor (navigator)
	nsIDOMNavigator *navigator;
    PREINIT:
	nsEmbedString aVendor;
    CODE:
	navigator->GetVendor(aVendor);
	RETVAL = aVendor;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::Navigator::GetVendorSub

=for signature $vendorsub = $navigator->GetVendorSub()



=cut

## GetVendorSub(nsAString & aVendorSub)
nsEmbedString
moz_dom_GetVendorSub (navigator)
	nsIDOMNavigator *navigator;
    PREINIT:
	nsEmbedString aVendorSub;
    CODE:
	navigator->GetVendorSub(aVendorSub);
	RETVAL = aVendorSub;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::Navigator::GetProduct

=for signature $product = $navigator->GetProduct()



=cut

## GetProduct(nsAString & aProduct)
nsEmbedString
moz_dom_GetProduct (navigator)
	nsIDOMNavigator *navigator;
    PREINIT:
	nsEmbedString aProduct;
    CODE:
	navigator->GetProduct(aProduct);
	RETVAL = aProduct;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::Navigator::GetProductSub

=for signature $productsub = $navigator->GetProductSub()



=cut

## GetProductSub(nsAString & aProductSub)
nsEmbedString
moz_dom_GetProductSub (navigator)
	nsIDOMNavigator *navigator;
    PREINIT:
	nsEmbedString aProductSub;
    CODE:
	navigator->GetProductSub(aProductSub);
	RETVAL = aProductSub;
    OUTPUT:
	RETVAL

#=for apidoc Mozilla::DOM::Navigator::GetPlugins
#
#=for signature $plugins = $navigator->GetPlugins()
#
#
#
#=cut
#
### GetPlugins(nsIDOMPluginArray * *aPlugins)
#nsIDOMPluginArray *
#moz_dom_GetPlugins (navigator)
#	nsIDOMNavigator *navigator;
#    PREINIT:
#	nsIDOMPluginArray * aPlugins;
#    CODE:
#	navigator->GetPlugins(&aPlugins);
#	RETVAL = aPlugins;
#    OUTPUT:
#	RETVAL

=for apidoc Mozilla::DOM::Navigator::GetSecurityPolicy

=for signature $securitypolicy = $navigator->GetSecurityPolicy()



=cut

## GetSecurityPolicy(nsAString & aSecurityPolicy)
nsEmbedString
moz_dom_GetSecurityPolicy (navigator)
	nsIDOMNavigator *navigator;
    PREINIT:
	nsEmbedString aSecurityPolicy;
    CODE:
	navigator->GetSecurityPolicy(aSecurityPolicy);
	RETVAL = aSecurityPolicy;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::Navigator::GetUserAgent

=for signature $useragent = $navigator->GetUserAgent()



=cut

## GetUserAgent(nsAString & aUserAgent)
nsEmbedString
moz_dom_GetUserAgent (navigator)
	nsIDOMNavigator *navigator;
    PREINIT:
	nsEmbedString aUserAgent;
    CODE:
	navigator->GetUserAgent(aUserAgent);
	RETVAL = aUserAgent;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::Navigator::GetCookieEnabled

=for signature $bool = $navigator->GetCookieEnabled()



=cut

## GetCookieEnabled(PRBool *aCookieEnabled)
PRBool
moz_dom_GetCookieEnabled (navigator)
	nsIDOMNavigator *navigator;
    PREINIT:
	PRBool aCookieEnabled;
    CODE:
	navigator->GetCookieEnabled(&aCookieEnabled);
	RETVAL = aCookieEnabled;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::Navigator::JavaEnabled

=for signature $bool = $navigator->JavaEnabled()



=cut

## JavaEnabled(PRBool *_retval)
PRBool
moz_dom_JavaEnabled (navigator)
	nsIDOMNavigator *navigator;
    PREINIT:
	PRBool _retval;
    CODE:
	navigator->JavaEnabled(&_retval);
	RETVAL = _retval;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::Navigator::TaintEnabled

=for signature $bool = $navigator->TaintEnabled()



=cut

## TaintEnabled(PRBool *_retval)
PRBool
moz_dom_TaintEnabled (navigator)
	nsIDOMNavigator *navigator;
    PREINIT:
	PRBool _retval;
    CODE:
	navigator->TaintEnabled(&_retval);
	RETVAL = _retval;
    OUTPUT:
	RETVAL

# -----------------------------------------------------------------------------

MODULE = Mozilla::DOM	PACKAGE = Mozilla::DOM::History	PREFIX = moz_dom_

# /usr/include/mozilla/dom/nsIDOMHistory.h

=for object Mozilla::DOM::History

Mozilla::DOM::History is a wrapper around an instance of Mozilla's
nsIDOMHistory interface. This class inherits from
L<Supports|Mozilla::DOM::Supports>.



=cut

=head1 CLASS METHODS

=head2 $iid = Mozilla::DOM::History->B<GetIID>()

Pass this to QueryInterface.

=cut

## NS_DEFINE_STATIC_IID_ACCESSOR(NS_IDOMHISTORY_IID)
static nsIID
nsIDOMHistory::GetIID()
    CODE:
	const nsIID &id = nsIDOMHistory::GetIID();
	RETVAL = (nsIID) id;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::History::GetLength

=for signature $length = $history->GetLength()



=cut

## GetLength(PRInt32 *aLength)
PRInt32
moz_dom_GetLength (history)
	nsIDOMHistory *history;
    PREINIT:
	PRInt32 aLength;
    CODE:
	history->GetLength(&aLength);
	RETVAL = aLength;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::History::GetCurrent

=for signature $current = $history->GetCurrent()



=cut

## GetCurrent(nsAString & aCurrent)
nsEmbedString
moz_dom_GetCurrent (history)
	nsIDOMHistory *history;
    PREINIT:
	nsEmbedString aCurrent;
    CODE:
	history->GetCurrent(aCurrent);
	RETVAL = aCurrent;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::History::GetPrevious

=for signature $previous = $history->GetPrevious()



=cut

## GetPrevious(nsAString & aPrevious)
nsEmbedString
moz_dom_GetPrevious (history)
	nsIDOMHistory *history;
    PREINIT:
	nsEmbedString aPrevious;
    CODE:
	history->GetPrevious(aPrevious);
	RETVAL = aPrevious;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::History::GetNext

=for signature $next = $history->GetNext()



=cut

## GetNext(nsAString & aNext)
nsEmbedString
moz_dom_GetNext (history)
	nsIDOMHistory *history;
    PREINIT:
	nsEmbedString aNext;
    CODE:
	history->GetNext(aNext);
	RETVAL = aNext;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::History::Back

=for signature $history->Back()



=cut

## Back(void)
void
moz_dom_Back (history)
	nsIDOMHistory *history;
    CODE:
	history->Back();

=for apidoc Mozilla::DOM::History::Forward

=for signature $history->Forward()



=cut

## Forward(void)
void
moz_dom_Forward (history)
	nsIDOMHistory *history;
    CODE:
	history->Forward();

=for apidoc Mozilla::DOM::History::Go

=for signature $history->Go($delta)



=cut

## Go(PRInt32 aDelta)
void
moz_dom_Go (history, aDelta)
	nsIDOMHistory *history;
	PRInt32  aDelta;
    CODE:
	history->Go(aDelta);

=for apidoc Mozilla::DOM::History::Item

=for signature $retval = $history->Item($index)



=cut

## Item(PRUint32 index, nsAString & _retval)
nsEmbedString
moz_dom_Item (history, index)
	nsIDOMHistory *history;
	PRUint32  index;
    PREINIT:
	nsEmbedString _retval;
    CODE:
	history->Item(index, _retval);
	RETVAL = _retval;
    OUTPUT:
	RETVAL

# -----------------------------------------------------------------------------

MODULE = Mozilla::DOM	PACKAGE = Mozilla::DOM::Location	PREFIX = moz_dom_

# /usr/include/mozilla/dom/nsIDOMLocation.h

=for object Mozilla::DOM::Location

Mozilla::DOM::Location is a wrapper around an instance of Mozilla's
nsIDOMLocation interface. This class inherits from
L<Supports|Mozilla::DOM::Supports>.



=cut

=head1 CLASS METHODS

=head2 $iid = Mozilla::DOM::Location->B<GetIID>()

Pass this to QueryInterface.

=cut

## NS_DEFINE_STATIC_IID_ACCESSOR(NS_IDOMLOCATION_IID)
static nsIID
nsIDOMLocation::GetIID()
    CODE:
	const nsIID &id = nsIDOMLocation::GetIID();
	RETVAL = (nsIID) id;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::Location::GetHash

=for signature $hash = $location->GetHash()



=cut

## GetHash(nsAString & aHash)
nsEmbedString
moz_dom_GetHash (location)
	nsIDOMLocation *location;
    PREINIT:
	nsEmbedString aHash;
    CODE:
	location->GetHash(aHash);
	RETVAL = aHash;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::Location::SetHash

=for signature $location->SetHash($hash)



=cut

## SetHash(const nsAString & aHash)
void
moz_dom_SetHash (location, aHash)
	nsIDOMLocation *location;
	nsEmbedString aHash;
    CODE:
	location->SetHash(aHash);

=for apidoc Mozilla::DOM::Location::GetHost

=for signature $host = $location->GetHost()



=cut

## GetHost(nsAString & aHost)
nsEmbedString
moz_dom_GetHost (location)
	nsIDOMLocation *location;
    PREINIT:
	nsEmbedString aHost;
    CODE:
	location->GetHost(aHost);
	RETVAL = aHost;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::Location::SetHost

=for signature $location->SetHost($host)



=cut

## SetHost(const nsAString & aHost)
void
moz_dom_SetHost (location, aHost)
	nsIDOMLocation *location;
	nsEmbedString aHost;
    CODE:
	location->SetHost(aHost);

=for apidoc Mozilla::DOM::Location::GetHostname

=for signature $hostname = $location->GetHostname()



=cut

## GetHostname(nsAString & aHostname)
nsEmbedString
moz_dom_GetHostname (location)
	nsIDOMLocation *location;
    PREINIT:
	nsEmbedString aHostname;
    CODE:
	location->GetHostname(aHostname);
	RETVAL = aHostname;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::Location::SetHostname

=for signature $location->SetHostname($hostname)



=cut

## SetHostname(const nsAString & aHostname)
void
moz_dom_SetHostname (location, aHostname)
	nsIDOMLocation *location;
	nsEmbedString aHostname;
    CODE:
	location->SetHostname(aHostname);

=for apidoc Mozilla::DOM::Location::GetHref

=for signature $href = $location->GetHref()



=cut

## GetHref(nsAString & aHref)
nsEmbedString
moz_dom_GetHref (location)
	nsIDOMLocation *location;
    PREINIT:
	nsEmbedString aHref;
    CODE:
	location->GetHref(aHref);
	RETVAL = aHref;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::Location::SetHref

=for signature $location->SetHref($href)



=cut

## SetHref(const nsAString & aHref)
void
moz_dom_SetHref (location, aHref)
	nsIDOMLocation *location;
	nsEmbedString aHref;
    CODE:
	location->SetHref(aHref);

=for apidoc Mozilla::DOM::Location::GetPathname

=for signature $pathname = $location->GetPathname()



=cut

## GetPathname(nsAString & aPathname)
nsEmbedString
moz_dom_GetPathname (location)
	nsIDOMLocation *location;
    PREINIT:
	nsEmbedString aPathname;
    CODE:
	location->GetPathname(aPathname);
	RETVAL = aPathname;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::Location::SetPathname

=for signature $location->SetPathname($pathname)



=cut

## SetPathname(const nsAString & aPathname)
void
moz_dom_SetPathname (location, aPathname)
	nsIDOMLocation *location;
	nsEmbedString aPathname;
    CODE:
	location->SetPathname(aPathname);

=for apidoc Mozilla::DOM::Location::GetPort

=for signature $port = $location->GetPort()



=cut

## GetPort(nsAString & aPort)
nsEmbedString
moz_dom_GetPort (location)
	nsIDOMLocation *location;
    PREINIT:
	nsEmbedString aPort;
    CODE:
	location->GetPort(aPort);
	RETVAL = aPort;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::Location::SetPort

=for signature $location->SetPort($port)



=cut

## SetPort(const nsAString & aPort)
void
moz_dom_SetPort (location, aPort)
	nsIDOMLocation *location;
	nsEmbedString aPort;
    CODE:
	location->SetPort(aPort);

=for apidoc Mozilla::DOM::Location::GetProtocol

=for signature $protocol = $location->GetProtocol()



=cut

## GetProtocol(nsAString & aProtocol)
nsEmbedString
moz_dom_GetProtocol (location)
	nsIDOMLocation *location;
    PREINIT:
	nsEmbedString aProtocol;
    CODE:
	location->GetProtocol(aProtocol);
	RETVAL = aProtocol;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::Location::SetProtocol

=for signature $location->SetProtocol($protocol)



=cut

## SetProtocol(const nsAString & aProtocol)
void
moz_dom_SetProtocol (location, aProtocol)
	nsIDOMLocation *location;
	nsEmbedString aProtocol;
    CODE:
	location->SetProtocol(aProtocol);

=for apidoc Mozilla::DOM::Location::GetSearch

=for signature $search = $location->GetSearch()



=cut

## GetSearch(nsAString & aSearch)
nsEmbedString
moz_dom_GetSearch (location)
	nsIDOMLocation *location;
    PREINIT:
	nsEmbedString aSearch;
    CODE:
	location->GetSearch(aSearch);
	RETVAL = aSearch;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::Location::SetSearch

=for signature $location->SetSearch($search)



=cut

## SetSearch(const nsAString & aSearch)
void
moz_dom_SetSearch (location, aSearch)
	nsIDOMLocation *location;
	nsEmbedString aSearch;
    CODE:
	location->SetSearch(aSearch);

=for apidoc Mozilla::DOM::Location::Reload

=for signature $location->Reload($forceget)



=cut

## Reload(PRBool forceget)
void
moz_dom_Reload (location, forceget)
	nsIDOMLocation *location;
	PRBool  forceget;
    CODE:
	location->Reload(forceget);

=for apidoc Mozilla::DOM::Location::Replace

=for signature $location->Replace($url)



=cut

## Replace(const nsAString & url)
void
moz_dom_Replace (location, url)
	nsIDOMLocation *location;
	nsEmbedString url;
    CODE:
	location->Replace(url);

=for apidoc Mozilla::DOM::Location::Assign

=for signature $location->Assign($url)



=cut

## Assign(const nsAString & url)
void
moz_dom_Assign (location, url)
	nsIDOMLocation *location;
	nsEmbedString url;
    CODE:
	location->Assign(url);

=for apidoc Mozilla::DOM::Location::ToString

=for signature $retval = $location->ToString()



=cut

## ToString(nsAString & _retval)
nsEmbedString
moz_dom_ToString (location)
	nsIDOMLocation *location;
    PREINIT:
	nsEmbedString _retval;
    CODE:
	location->ToString(_retval);
	RETVAL = _retval;
    OUTPUT:
	RETVAL

# -----------------------------------------------------------------------------

MODULE = Mozilla::DOM	PACKAGE = Mozilla::DOM::Screen	PREFIX = moz_dom_

# /usr/include/mozilla/dom/nsIDOMScreen.h

=for object Mozilla::DOM::Screen

Mozilla::DOM::Screen is a wrapper around an instance of Mozilla's
nsIDOMScreen interface. This class inherits from
L<Supports|Mozilla::DOM::Supports>.



=cut

=head1 CLASS METHODS

=head2 $iid = Mozilla::DOM::Screen->B<GetIID>()

Pass this to QueryInterface.

=cut

## NS_DEFINE_STATIC_IID_ACCESSOR(NS_IDOMSCREEN_IID)
static nsIID
nsIDOMScreen::GetIID()
    CODE:
	const nsIID &id = nsIDOMScreen::GetIID();
	RETVAL = (nsIID) id;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::Screen::GetTop

=for signature $top = $screen->GetTop()



=cut

## GetTop(PRInt32 *aTop)
PRInt32
moz_dom_GetTop (screen)
	nsIDOMScreen *screen;
    PREINIT:
	PRInt32 aTop;
    CODE:
	screen->GetTop(&aTop);
	RETVAL = aTop;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::Screen::GetLeft

=for signature $left = $screen->GetLeft()



=cut

## GetLeft(PRInt32 *aLeft)
PRInt32
moz_dom_GetLeft (screen)
	nsIDOMScreen *screen;
    PREINIT:
	PRInt32 aLeft;
    CODE:
	screen->GetLeft(&aLeft);
	RETVAL = aLeft;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::Screen::GetWidth

=for signature $width = $screen->GetWidth()



=cut

## GetWidth(PRInt32 *aWidth)
PRInt32
moz_dom_GetWidth (screen)
	nsIDOMScreen *screen;
    PREINIT:
	PRInt32 aWidth;
    CODE:
	screen->GetWidth(&aWidth);
	RETVAL = aWidth;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::Screen::GetHeight

=for signature $height = $screen->GetHeight()



=cut

## GetHeight(PRInt32 *aHeight)
PRInt32
moz_dom_GetHeight (screen)
	nsIDOMScreen *screen;
    PREINIT:
	PRInt32 aHeight;
    CODE:
	screen->GetHeight(&aHeight);
	RETVAL = aHeight;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::Screen::GetPixelDepth

=for signature $pixeldepth = $screen->GetPixelDepth()



=cut

## GetPixelDepth(PRInt32 *aPixelDepth)
PRInt32
moz_dom_GetPixelDepth (screen)
	nsIDOMScreen *screen;
    PREINIT:
	PRInt32 aPixelDepth;
    CODE:
	screen->GetPixelDepth(&aPixelDepth);
	RETVAL = aPixelDepth;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::Screen::GetColorDepth

=for signature $colordepth = $screen->GetColorDepth()



=cut

## GetColorDepth(PRInt32 *aColorDepth)
PRInt32
moz_dom_GetColorDepth (screen)
	nsIDOMScreen *screen;
    PREINIT:
	PRInt32 aColorDepth;
    CODE:
	screen->GetColorDepth(&aColorDepth);
	RETVAL = aColorDepth;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::Screen::GetAvailWidth

=for signature $availwidth = $screen->GetAvailWidth()



=cut

## GetAvailWidth(PRInt32 *aAvailWidth)
PRInt32
moz_dom_GetAvailWidth (screen)
	nsIDOMScreen *screen;
    PREINIT:
	PRInt32 aAvailWidth;
    CODE:
	screen->GetAvailWidth(&aAvailWidth);
	RETVAL = aAvailWidth;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::Screen::GetAvailHeight

=for signature $availheight = $screen->GetAvailHeight()



=cut

## GetAvailHeight(PRInt32 *aAvailHeight)
PRInt32
moz_dom_GetAvailHeight (screen)
	nsIDOMScreen *screen;
    PREINIT:
	PRInt32 aAvailHeight;
    CODE:
	screen->GetAvailHeight(&aAvailHeight);
	RETVAL = aAvailHeight;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::Screen::GetAvailLeft

=for signature $availleft = $screen->GetAvailLeft()



=cut

## GetAvailLeft(PRInt32 *aAvailLeft)
PRInt32
moz_dom_GetAvailLeft (screen)
	nsIDOMScreen *screen;
    PREINIT:
	PRInt32 aAvailLeft;
    CODE:
	screen->GetAvailLeft(&aAvailLeft);
	RETVAL = aAvailLeft;
    OUTPUT:
	RETVAL

=for apidoc Mozilla::DOM::Screen::GetAvailTop

=for signature $availtop = $screen->GetAvailTop()



=cut

## GetAvailTop(PRInt32 *aAvailTop)
PRInt32
moz_dom_GetAvailTop (screen)
	nsIDOMScreen *screen;
    PREINIT:
	PRInt32 aAvailTop;
    CODE:
	screen->GetAvailTop(&aAvailTop);
	RETVAL = aAvailTop;
    OUTPUT:
	RETVAL


# -----------------------------------------------------------------------------
