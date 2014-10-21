/*
 * Copyright (c) 2003 by the gtk2-perl team (see the file AUTHORS)
 *
 * This library is free software; you can redistribute it and/or
 * modify it under the terms of the GNU Library General Public
 * License as published by the Free Software Foundation; either
 * version 2 of the License, or (at your option) any later version.
 *
 * This library is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 * Library General Public License for more details.
 *
 * You should have received a copy of the GNU Library General Public
 * License along with this library; if not, write to the 
 * Free Software Foundation, Inc., 59 Temple Place - Suite 330, 
 * Boston, MA  02111-1307  USA.
 *
 * $Header: /cvsroot/gtk2-perl/gtk2-perl-xs/Gnome2/gnome2perl.h,v 1.4 2003/07/11 05:02:14 muppetman Exp $
 */

#ifndef _GNOME2PERL_H_
#define _GNOME2PERL_H_

#include <gtk2perl.h>
#undef _ /* gnome and perl disagree on this one */
#include <gnome.h>
#include <libgnome/libgnometypebuiltins.h>
#include "gnome2perl-autogen.h"

/*
 * custom typemap handling for GnomeUIInfo, defined in GnomeAppHelper.xs
 */
GnomeUIInfo * SvGnomeUIInfo (SV * sv);


#endif /* _GNOME2PERL_H_ */
