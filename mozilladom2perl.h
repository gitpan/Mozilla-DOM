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
 * $CVSHeader: Mozilla-DOM/mozilladom2perl.h,v 1.3 2005/04/02 12:23:20 slanning Exp $
 */

#ifndef _MOZILLADOM2PERL_H_
#define _MOZILLADOM2PERL_H_

#include "nsEmbedString.h"        /* for nsAString */

#include "nsIDOMAbstractView.h"
#include "nsIDOMDocumentView.h"
#include "nsIDOMEvent.h"
#include "nsIDOMUIEvent.h"
#include "nsIDOMKeyEvent.h"
#include "nsIDOMMouseEvent.h"

#include "mozilladom2perl-version.h"


#define MOZDOM_DECL_DOM_TYPEMAPPERS(name)                           \
  SV * newSVnsIDOM##name (nsIDOM##name *);                          \
  nsIDOM##name * SvnsIDOM##name (SV *);

#define MOZDOM_DEF_DOM_TYPEMAPPERS(name)                            \
  SV * newSVnsIDOM##name (nsIDOM##name * name) {                    \
      SV *sv = newSV(0);                                            \
      return sv_setref_pv (sv, "Mozilla::DOM::" #name, name);       \
  }                                                                 \
  nsIDOM##name * SvnsIDOM##name (SV * name) {                       \
      return INT2PTR (nsIDOM##name *, SvIV(SvRV(name)));            \
  }


MOZDOM_DECL_DOM_TYPEMAPPERS(AbstractView)
MOZDOM_DECL_DOM_TYPEMAPPERS(DocumentView)
MOZDOM_DECL_DOM_TYPEMAPPERS(Event)
MOZDOM_DECL_DOM_TYPEMAPPERS(UIEvent)
MOZDOM_DECL_DOM_TYPEMAPPERS(KeyEvent)
MOZDOM_DECL_DOM_TYPEMAPPERS(MouseEvent)
MOZDOM_DECL_DOM_TYPEMAPPERS(EventTarget)
MOZDOM_DECL_DOM_TYPEMAPPERS(EventListener)


/* #include "mozilladom2perl-autogen.h" */

#endif /* _MOZILLADOM2PERL_H_ */
