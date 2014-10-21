/*
 * Copyright (C) 2003 by the gtk2-perl team (see the file AUTHORS)
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
 * $Header: /cvsroot/gtk2-perl/gtk2-perl-xs/Gnome2/xs/GnomeI18N.xs,v 1.4 2003/12/15 23:05:06 kaffeetisch Exp $
 */

#include "gnome2perl.h"

MODULE = Gnome2::I18N	PACKAGE = Gnome2::I18N	PREFIX = gnome_i18n_

=for apidoc

Returns a list of languages.

=cut
##  const GList * gnome_i18n_get_language_list (const gchar *category_name)
void
gnome_i18n_get_language_list (class, category_name=NULL)
	const gchar *category_name
    PREINIT:
	const GList *results;
    PPCODE:
	results = gnome_i18n_get_language_list (category_name);
	for ( ; results != NULL; results = results->next)
		XPUSHs (sv_2mortal (newSVpv (results->data, PL_na)));

##  void gnome_i18n_push_c_numeric_locale (void) 
void
gnome_i18n_push_c_numeric_locale (class)
    C_ARGS:
	/* void */

##  void gnome_i18n_pop_c_numeric_locale (void) 
void
gnome_i18n_pop_c_numeric_locale (class)
    C_ARGS:
	/* void */

