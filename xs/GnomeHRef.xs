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
 * $Header: /cvsroot/gtk2-perl/gtk2-perl-xs/Gnome2/xs/GnomeHRef.xs,v 1.3 2003/05/22 16:10:20 muppetman Exp $
 */

#include "gnome2perl.h"

MODULE = Gnome2::HRef	PACKAGE = Gnome2::HRef	PREFIX = gnome_href_

GtkWidget *
gnome_href_new (class, url, text)
	SV * class
	const gchar *url
	const gchar *text
    C_ARGS:
	url, text

void
gnome_href_set_url (href, url)
	GnomeHRef *href
	const gchar *url

const gchar *
gnome_href_get_url (href)
	GnomeHRef * href

void
gnome_href_set_text (href, text)
	GnomeHRef *href
	const gchar *text

const gchar *
gnome_href_get_text (href)
	GnomeHRef * href

void
gnome_href_set_label (href, label)
	GnomeHRef *href
	const gchar *label

const gchar *
gnome_href_get_label (href)
	GnomeHRef * href
