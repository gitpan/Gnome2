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
 * $Header: /cvsroot/gtk2-perl/gtk2-perl-xs/Gnome2/xs/BonoboDock.xs,v 1.1 2003/09/21 01:17:06 kaffeetisch Exp $
 */

#include "gnome2perl.h"

MODULE = Gnome2::Bonobo::Dock	PACKAGE = Gnome2::Bonobo::Dock	PREFIX = bonobo_dock_

##  GtkWidget *bonobo_dock_new (void) 
GtkWidget *
bonobo_dock_new (class)
	SV * class
    C_ARGS:
	/* void */

##  void bonobo_dock_allow_floating_items (BonoboDock *dock, gboolean enable) 
void
bonobo_dock_allow_floating_items (dock, enable)
	BonoboDock *dock
	gboolean enable

##  void bonobo_dock_add_item (BonoboDock *dock, BonoboDockItem *item, BonoboDockPlacement placement, guint band_num, gint position, guint offset, gboolean in_new_band) 
void
bonobo_dock_add_item (dock, item, placement, band_num, position, offset, in_new_band)
	BonoboDock *dock
	BonoboDockItem *item
	BonoboDockPlacement placement
	guint band_num
	gint position
	guint offset
	gboolean in_new_band

##  void bonobo_dock_add_floating_item (BonoboDock *dock, BonoboDockItem *widget, gint x, gint y, GtkOrientation orientation) 
void
bonobo_dock_add_floating_item (dock, widget, x, y, orientation)
	BonoboDock *dock
	BonoboDockItem *widget
	gint x
	gint y
	GtkOrientation orientation

##  void bonobo_dock_set_client_area (BonoboDock *dock, GtkWidget *widget) 
void
bonobo_dock_set_client_area (dock, widget)
	BonoboDock *dock
	GtkWidget *widget

##  GtkWidget *bonobo_dock_get_client_area (BonoboDock *dock) 
GtkWidget *
bonobo_dock_get_client_area (dock)
	BonoboDock *dock

##  BonoboDockItem *bonobo_dock_get_item_by_name (BonoboDock *dock, const gchar *name, BonoboDockPlacement *placement_return, guint *num_band_return, guint *band_position_return, guint *offset_return) 
void
bonobo_dock_get_item_by_name (dock, name)
	BonoboDock *dock
	const gchar *name
    PREINIT:
	BonoboDockItem *dock_item_return;
	BonoboDockPlacement placement_return;
	guint num_band_return;
	guint band_position_return;
	guint offset_return;
    PPCODE:
	EXTEND (SP, 5);
	dock_item_return = bonobo_dock_get_item_by_name (dock, name,
				&placement_return, &num_band_return,
				&band_position_return, &offset_return);
	PUSHs (sv_2mortal (newSVBonoboDockItem (dock_item_return)));
	PUSHs (sv_2mortal (newSVBonoboDockPlacement (placement_return)));
	PUSHs (sv_2mortal (newSVuv (num_band_return)));
	PUSHs (sv_2mortal (newSVuv (band_position_return)));
	PUSHs (sv_2mortal (newSVuv (offset_return)));
	

##  BonoboDockLayout *bonobo_dock_get_layout (BonoboDock *dock) 
BonoboDockLayout *
bonobo_dock_get_layout (dock)
	BonoboDock *dock

##  gboolean bonobo_dock_add_from_layout (BonoboDock *dock, BonoboDockLayout *layout) 
gboolean
bonobo_dock_add_from_layout (dock, layout)
	BonoboDock *dock
	BonoboDockLayout *layout
