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
 * $CVSHeader: Mozilla-DOM/mozilladom2perl.h,v 1.10 2005/04/10 23:48:18 slanning Exp $
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
   something like nsIDOMEvent *):
   0. add header include below
   1. add a declaration macro below
   2. add a definition macro to the top of xs/DOM.xs
   3. add a MODULE section to xs/DOM.xs
      (e.g. Mozilla::DOM::Event for nsIDOMEvent)
   4. add a T_MOZDOM_GENERIC_WRAPPER line to the TYPEMAP section
      in mozilladom.typemap
   5. add an entry to doctypes
 */


/* XXX: would be nice if these includes could be
   put in the macros below - but how do you make
   a literal '#' in a macro, and does an include
   work in one? */

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

#include "nsIWebBrowser.h"
#include "nsISelection.h"
#include "nsISupports.h"

#include "nsEmbedString.h"
#include "nsIID.h"


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

MOZDOM_DECL_I_TYPEMAPPERS(WebBrowser)
MOZDOM_DECL_I_TYPEMAPPERS(Selection)
MOZDOM_DECL_I_TYPEMAPPERS(Supports)


#include "mozilladom2perl-version.h"
/* #include "mozilladom2perl-autogen.h" */

#endif /* _MOZILLADOM2PERL_H_ */
