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
 * $Header: /cvsroot/gtk2-perl/gtk2-perl-xs/Gnome2/xs/GnomeDruidPage.xs,v 1.5 2003/11/07 18:46:15 kaffeetisch Exp $
 */

#include "gnome2perl.h"

MODULE = Gnome2::DruidPage	PACKAGE = Gnome2::DruidPage	PREFIX = gnome_druid_page_

GtkWidget *
gnome_druid_page_new (class)
    C_ARGS:
	/* void */

gboolean
gnome_druid_page_next (druid_page)
	GnomeDruidPage *druid_page

void
gnome_druid_page_prepare (druid_page)
	GnomeDruidPage *druid_page

gboolean
gnome_druid_page_back (druid_page)
	GnomeDruidPage *druid_page

gboolean
gnome_druid_page_cancel (druid_page)
	GnomeDruidPage *druid_page

void
gnome_druid_page_finish (druid_page)
	GnomeDruidPage *druid_page

