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
 * $CVSHeader: Mozilla-DOM/mozilladom2perl.h,v 1.12 2005/04/18 05:30:24 slanning Exp $
 */

#ifndef _MOZILLADOM2PERL_H_
#define _MOZILLADOM2PERL_H_


#ifdef __cplusplus
extern "C" {
#endif
#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"
#ifdef __cplusplus
}
#endif


/* Procedure to add a new typemap (necessary if an XSUB returns
   something like nsIDOMEvent *)
   Add:
   0. header include below
   1. declaration macro below
   2. definition macro to the top of xs/DOM.xs
   3. MODULE section to xs/DOM.xs
      (e.g. Mozilla::DOM::Event for nsIDOMEvent)
   4. T_MOZDOM_GENERIC_WRAPPER line to the TYPEMAP section
      in mozilladom.typemap
   5. entry to doctypes
 */


/* XXX: would be nice if these includes could be
   put in the macros below - but how do you make
   a literal '#' in a macro, and does an include
   work in one? */

#include "nsEmbedString.h"
#include "nsIID.h"

#include "nsIWebBrowser.h"
#include "nsISelection.h"
#include "nsISupports.h"

#include "nsIDOMAbstractView.h"
#include "nsIDOMAttr.h"
#include "nsIDOMCharacterData.h"
#include "nsIDOMCDATASection.h"
#include "nsIDOMComment.h"
#include "nsIDOMDOMImplementation.h"
#include "nsIDOMDocument.h"
#include "nsIDOMDocumentEvent.h"
#include "nsIDOMDocumentFragment.h"
#include "nsIDOMDocumentType.h"
#include "nsIDOMDocumentView.h"
#include "nsIDOMElement.h"
#include "nsIDOMEntityReference.h"
#include "nsIDOMEvent.h"
#include "nsIDOMEventListener.h"
#include "nsIDOMEventTarget.h"
#include "nsIDOMDOMException.h"
#include "nsIDOMKeyEvent.h"
#include "nsIDOMMouseEvent.h"
#include "nsIDOMMutationEvent.h"
#include "nsIDOMNamedNodeMap.h"
#include "nsIDOMNodeList.h"
#include "nsIDOMProcessingInstruction.h"
#include "nsIDOMRange.h"
#include "nsIDOMText.h"
#include "nsIDOMUIEvent.h"
#include "nsIDOMWindow.h"
#include "nsIDOMWindowCollection.h"

#include "nsIDOMHTMLAreaElement.h"
#include "nsIDOMHTMLDirectoryElement.h"
#include "nsIDOMHTMLAnchorElement.h"
#include "nsIDOMHTMLAppletElement.h"
#include "nsIDOMHTMLBRElement.h"
#include "nsIDOMHTMLBaseElement.h"
#include "nsIDOMHTMLBaseFontElement.h"
#include "nsIDOMHTMLBodyElement.h"
#include "nsIDOMHTMLButtonElement.h"
#include "nsIDOMHTMLCollection.h"
#include "nsIDOMHTMLDListElement.h"
#include "nsIDOMHTMLDivElement.h"
#include "nsIDOMHTMLElement.h"
#include "nsIDOMHTMLEmbedElement.h"
#include "nsIDOMHTMLFieldSetElement.h"
#include "nsIDOMHTMLFontElement.h"
#include "nsIDOMHTMLFrameElement.h"
#include "nsIDOMHTMLFormElement.h"
#include "nsIDOMHTMLFrameSetElement.h"
#include "nsIDOMHTMLHRElement.h"
#include "nsIDOMHTMLHeadElement.h"
#include "nsIDOMHTMLHeadingElement.h"
#include "nsIDOMHTMLHtmlElement.h"
#include "nsIDOMHTMLIFrameElement.h"
#include "nsIDOMHTMLImageElement.h"
#include "nsIDOMHTMLInputElement.h"
#include "nsIDOMHTMLIsIndexElement.h"
#include "nsIDOMHTMLLIElement.h"
#include "nsIDOMHTMLLabelElement.h"
#include "nsIDOMHTMLLegendElement.h"
#include "nsIDOMHTMLLinkElement.h"
#include "nsIDOMHTMLMapElement.h"
#include "nsIDOMHTMLMenuElement.h"
#include "nsIDOMHTMLMetaElement.h"
#include "nsIDOMHTMLModElement.h"
#include "nsIDOMHTMLOListElement.h"
#include "nsIDOMHTMLObjectElement.h"
#include "nsIDOMHTMLOptGroupElement.h"
#include "nsIDOMHTMLOptionElement.h"
#include "nsIDOMHTMLOptionsCollection.h"
#include "nsIDOMHTMLParagraphElement.h"
#include "nsIDOMHTMLParamElement.h"
#include "nsIDOMHTMLPreElement.h"
#include "nsIDOMHTMLQuoteElement.h"
#include "nsIDOMHTMLScriptElement.h"
#include "nsIDOMHTMLSelectElement.h"
#include "nsIDOMHTMLStyleElement.h"
#include "nsIDOMHTMLTableCaptionElem.h"   /* grr */
#include "nsIDOMHTMLTableCellElement.h"
#include "nsIDOMHTMLTableColElement.h"
#include "nsIDOMHTMLTableElement.h"
#include "nsIDOMHTMLTableRowElement.h"
#include "nsIDOMHTMLTableSectionElem.h"   /* grr */
#include "nsIDOMHTMLTextAreaElement.h"
#include "nsIDOMHTMLTitleElement.h"
#include "nsIDOMHTMLUListElement.h"


#define MOZDOM_DECL_I_TYPEMAPPERS(name)                             \
SV * newSVnsI##name (nsI##name *);                                  \
nsI##name * SvnsI##name (SV *);

#define MOZDOM_DEF_I_TYPEMAPPERS(name)                              \
SV * newSVnsI##name (nsI##name * name) {                            \
	SV *sv = newSV(0);                                          \
	return sv_setref_pv (sv, "Mozilla::DOM::" #name, name);     \
}                                                                   \
nsI##name * SvnsI##name (SV * name) {                               \
	return INT2PTR (nsI##name *, SvIV(SvRV(name)));             \
}

#define MOZDOM_DECL_DOM_TYPEMAPPERS(name)                           \
SV * newSVnsIDOM##name (nsIDOM##name *);                            \
nsIDOM##name * SvnsIDOM##name (SV *);

#define MOZDOM_DEF_DOM_TYPEMAPPERS(name)                            \
SV * newSVnsIDOM##name (nsIDOM##name * name) {                      \
	SV *sv = newSV(0);                                          \
	return sv_setref_pv (sv, "Mozilla::DOM::" #name, name);     \
}                                                                   \
nsIDOM##name * SvnsIDOM##name (SV * name) {                         \
	return INT2PTR (nsIDOM##name *, SvIV(SvRV(name)));          \
}


MOZDOM_DECL_I_TYPEMAPPERS(WebBrowser)
MOZDOM_DECL_I_TYPEMAPPERS(Selection)
MOZDOM_DECL_I_TYPEMAPPERS(Supports)

MOZDOM_DECL_DOM_TYPEMAPPERS(AbstractView)
MOZDOM_DECL_DOM_TYPEMAPPERS(DocumentView)
MOZDOM_DECL_DOM_TYPEMAPPERS(Event)
MOZDOM_DECL_DOM_TYPEMAPPERS(UIEvent)
MOZDOM_DECL_DOM_TYPEMAPPERS(DocumentEvent)
MOZDOM_DECL_DOM_TYPEMAPPERS(MutationEvent)
MOZDOM_DECL_DOM_TYPEMAPPERS(KeyEvent)
MOZDOM_DECL_DOM_TYPEMAPPERS(MouseEvent)
MOZDOM_DECL_DOM_TYPEMAPPERS(EventTarget)
MOZDOM_DECL_DOM_TYPEMAPPERS(EventListener)
MOZDOM_DECL_DOM_TYPEMAPPERS(Window)
MOZDOM_DECL_DOM_TYPEMAPPERS(WindowCollection)
MOZDOM_DECL_DOM_TYPEMAPPERS(Document)
MOZDOM_DECL_DOM_TYPEMAPPERS(DOMException)
MOZDOM_DECL_DOM_TYPEMAPPERS(DocumentFragment)
MOZDOM_DECL_DOM_TYPEMAPPERS(DocumentType)
MOZDOM_DECL_DOM_TYPEMAPPERS(Node)
MOZDOM_DECL_DOM_TYPEMAPPERS(NodeList)
MOZDOM_DECL_DOM_TYPEMAPPERS(NamedNodeMap)
MOZDOM_DECL_DOM_TYPEMAPPERS(Element)
MOZDOM_DECL_DOM_TYPEMAPPERS(EntityReference)
MOZDOM_DECL_DOM_TYPEMAPPERS(Attr)
MOZDOM_DECL_DOM_TYPEMAPPERS(ProcessingInstruction)
MOZDOM_DECL_DOM_TYPEMAPPERS(CDATASection)
MOZDOM_DECL_DOM_TYPEMAPPERS(Comment)
MOZDOM_DECL_DOM_TYPEMAPPERS(CharacterData)
MOZDOM_DECL_DOM_TYPEMAPPERS(Text)
MOZDOM_DECL_DOM_TYPEMAPPERS(DOMImplementation)
MOZDOM_DECL_DOM_TYPEMAPPERS(Range)

MOZDOM_DECL_DOM_TYPEMAPPERS(HTMLAreaElement)
MOZDOM_DECL_DOM_TYPEMAPPERS(HTMLDirectoryElement)
MOZDOM_DECL_DOM_TYPEMAPPERS(HTMLAnchorElement)
MOZDOM_DECL_DOM_TYPEMAPPERS(HTMLAppletElement)
MOZDOM_DECL_DOM_TYPEMAPPERS(HTMLBRElement)
MOZDOM_DECL_DOM_TYPEMAPPERS(HTMLBaseElement)
MOZDOM_DECL_DOM_TYPEMAPPERS(HTMLBaseFontElement)
MOZDOM_DECL_DOM_TYPEMAPPERS(HTMLBodyElement)
MOZDOM_DECL_DOM_TYPEMAPPERS(HTMLButtonElement)
MOZDOM_DECL_DOM_TYPEMAPPERS(HTMLCollection)
MOZDOM_DECL_DOM_TYPEMAPPERS(HTMLDListElement)
MOZDOM_DECL_DOM_TYPEMAPPERS(HTMLDivElement)
MOZDOM_DECL_DOM_TYPEMAPPERS(HTMLElement)
MOZDOM_DECL_DOM_TYPEMAPPERS(HTMLEmbedElement)
MOZDOM_DECL_DOM_TYPEMAPPERS(HTMLFieldSetElement)
MOZDOM_DECL_DOM_TYPEMAPPERS(HTMLFontElement)
MOZDOM_DECL_DOM_TYPEMAPPERS(HTMLFrameElement)
MOZDOM_DECL_DOM_TYPEMAPPERS(HTMLFormElement)
MOZDOM_DECL_DOM_TYPEMAPPERS(HTMLFrameSetElement)
MOZDOM_DECL_DOM_TYPEMAPPERS(HTMLHRElement)
MOZDOM_DECL_DOM_TYPEMAPPERS(HTMLHeadElement)
MOZDOM_DECL_DOM_TYPEMAPPERS(HTMLHeadingElement)
MOZDOM_DECL_DOM_TYPEMAPPERS(HTMLHtmlElement)
MOZDOM_DECL_DOM_TYPEMAPPERS(HTMLIFrameElement)
MOZDOM_DECL_DOM_TYPEMAPPERS(HTMLImageElement)
MOZDOM_DECL_DOM_TYPEMAPPERS(HTMLInputElement)
MOZDOM_DECL_DOM_TYPEMAPPERS(HTMLIsIndexElement)
MOZDOM_DECL_DOM_TYPEMAPPERS(HTMLLIElement)
MOZDOM_DECL_DOM_TYPEMAPPERS(HTMLLabelElement)
MOZDOM_DECL_DOM_TYPEMAPPERS(HTMLLegendElement)
MOZDOM_DECL_DOM_TYPEMAPPERS(HTMLLinkElement)
MOZDOM_DECL_DOM_TYPEMAPPERS(HTMLMapElement)
MOZDOM_DECL_DOM_TYPEMAPPERS(HTMLMenuElement)
MOZDOM_DECL_DOM_TYPEMAPPERS(HTMLMetaElement)
MOZDOM_DECL_DOM_TYPEMAPPERS(HTMLModElement)
MOZDOM_DECL_DOM_TYPEMAPPERS(HTMLOListElement)
MOZDOM_DECL_DOM_TYPEMAPPERS(HTMLObjectElement)
MOZDOM_DECL_DOM_TYPEMAPPERS(HTMLOptGroupElement)
MOZDOM_DECL_DOM_TYPEMAPPERS(HTMLOptionElement)
MOZDOM_DECL_DOM_TYPEMAPPERS(HTMLOptionsCollection)
MOZDOM_DECL_DOM_TYPEMAPPERS(HTMLParagraphElement)
MOZDOM_DECL_DOM_TYPEMAPPERS(HTMLParamElement)
MOZDOM_DECL_DOM_TYPEMAPPERS(HTMLPreElement)
MOZDOM_DECL_DOM_TYPEMAPPERS(HTMLQuoteElement)
MOZDOM_DECL_DOM_TYPEMAPPERS(HTMLScriptElement)
MOZDOM_DECL_DOM_TYPEMAPPERS(HTMLSelectElement)
MOZDOM_DECL_DOM_TYPEMAPPERS(HTMLStyleElement)
MOZDOM_DECL_DOM_TYPEMAPPERS(HTMLTableCaptionElement)
MOZDOM_DECL_DOM_TYPEMAPPERS(HTMLTableCellElement)
MOZDOM_DECL_DOM_TYPEMAPPERS(HTMLTableColElement)
MOZDOM_DECL_DOM_TYPEMAPPERS(HTMLTableElement)
MOZDOM_DECL_DOM_TYPEMAPPERS(HTMLTableRowElement)
MOZDOM_DECL_DOM_TYPEMAPPERS(HTMLTableSectionElement)
MOZDOM_DECL_DOM_TYPEMAPPERS(HTMLTextAreaElement)
MOZDOM_DECL_DOM_TYPEMAPPERS(HTMLTitleElement)
MOZDOM_DECL_DOM_TYPEMAPPERS(HTMLUListElement)


class MozDomEventListener : public nsIDOMEventListener
{
public:
	NS_DECL_ISUPPORTS
	NS_DECL_NSIDOMEVENTLISTENER

	MozDomEventListener();
	MozDomEventListener(SV *handler);
	~MozDomEventListener();

private:
	SV *mHandler;
};


#include "mozilladom2perl-version.h"
/* #include "mozilladom2perl-autogen.h" */

#endif /* _MOZILLADOM2PERL_H_ */
