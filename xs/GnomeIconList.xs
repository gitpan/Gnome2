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
 * $Header: /cvsroot/gtk2-perl/gtk2-perl-xs/Gnome2/xs/GnomeIconList.xs,v 1.3 2003/09/25 15:06:17 kaffeetisch Exp $
 */

#include "gnome2perl.h"

MODULE = Gnome2::IconList	PACKAGE = Gnome2::IconList	PREFIX = gnome_icon_list_

# FIXME: should somehow enable the cool flags wrapping for this one too.
##  GtkWidget *gnome_icon_list_new (guint icon_width, GtkAdjustment *adj, int flags) 
GtkWidget *
gnome_icon_list_new (class, icon_width, adj, flags)
	SV * class
	guint icon_width
	GtkAdjustment *adj
	int flags
    C_ARGS:
	icon_width, adj, flags

##  void gnome_icon_list_set_hadjustment (GnomeIconList *gil, GtkAdjustment *hadj) 
void
gnome_icon_list_set_hadjustment (gil, hadj)
	GnomeIconList *gil
	GtkAdjustment *hadj

##  void gnome_icon_list_set_vadjustment (GnomeIconList *gil, GtkAdjustment *vadj) 
void
gnome_icon_list_set_vadjustment (gil, vadj)
	GnomeIconList *gil
	GtkAdjustment *vadj

##  void gnome_icon_list_freeze (GnomeIconList *gil) 
void
gnome_icon_list_freeze (gil)
	GnomeIconList *gil

##  void gnome_icon_list_thaw (GnomeIconList *gil) 
void
gnome_icon_list_thaw (gil)
	GnomeIconList *gil

##  void gnome_icon_list_insert (GnomeIconList *gil, int pos, const char *icon_filename, const char *text) 
void
gnome_icon_list_insert (gil, pos, icon_filename, text)
	GnomeIconList *gil
	int pos
	const char *icon_filename
	const char *text

##  void gnome_icon_list_insert_pixbuf (GnomeIconList *gil, int pos, GdkPixbuf *im, const char *icon_filename, const char *text) 
void
gnome_icon_list_insert_pixbuf (gil, pos, im, icon_filename, text)
	GnomeIconList *gil
	int pos
	GdkPixbuf *im
	const char *icon_filename
	const char *text

##  int gnome_icon_list_append (GnomeIconList *gil, const char *icon_filename, const char *text) 
int
gnome_icon_list_append (gil, icon_filename, text)
	GnomeIconList *gil
	const char *icon_filename
	const char *text

##  int gnome_icon_list_append_pixbuf (GnomeIconList *gil, GdkPixbuf *im, const char *icon_filename, const char *text) 
int
gnome_icon_list_append_pixbuf (gil, im, icon_filename, text)
	GnomeIconList *gil
	GdkPixbuf *im
	const char *icon_filename
	const char *text

##  void gnome_icon_list_clear (GnomeIconList *gil) 
void
gnome_icon_list_clear (gil)
	GnomeIconList *gil

##  void gnome_icon_list_remove (GnomeIconList *gil, int pos) 
void
gnome_icon_list_remove (gil, pos)
	GnomeIconList *gil
	int pos

##  guint gnome_icon_list_get_num_icons (GnomeIconList *gil) 
guint
gnome_icon_list_get_num_icons (gil)
	GnomeIconList *gil

##  GtkSelectionMode gnome_icon_list_get_selection_mode(GnomeIconList *gil) 
GtkSelectionMode
gnome_icon_list_get_selection_mode (gil)
	GnomeIconList *gil

##  void gnome_icon_list_set_selection_mode (GnomeIconList *gil, GtkSelectionMode mode) 
void
gnome_icon_list_set_selection_mode (gil, mode)
	GnomeIconList *gil
	GtkSelectionMode mode

##  void gnome_icon_list_select_icon (GnomeIconList *gil, int pos) 
void
gnome_icon_list_select_icon (gil, pos)
	GnomeIconList *gil
	int pos

##  void gnome_icon_list_unselect_icon (GnomeIconList *gil, int pos) 
void
gnome_icon_list_unselect_icon (gil, pos)
	GnomeIconList *gil
	int pos

##  int gnome_icon_list_unselect_all (GnomeIconList *gil) 
int
gnome_icon_list_unselect_all (gil)
	GnomeIconList *gil

##  GList * gnome_icon_list_get_selection (GnomeIconList *gil) 
void
gnome_icon_list_get_selection (gil)
	GnomeIconList *gil
    PREINIT:
	GList * list, * i;
    PPCODE:
	list = gnome_icon_list_get_selection (gil);
	if (!list)
		XSRETURN_EMPTY;
	for (i = list ; i != NULL ; i = i->next)
		/* cast to avoid warning. */
		XPUSHs (sv_2mortal (newSViv ((gint) i->data)));
	g_list_free (list);

##  void gnome_icon_list_focus_icon (GnomeIconList *gil, gint idx) 
void
gnome_icon_list_focus_icon (gil, idx)
	GnomeIconList *gil
	gint idx

##  void gnome_icon_list_set_icon_width (GnomeIconList *gil, int w) 
void
gnome_icon_list_set_icon_width (gil, w)
	GnomeIconList *gil
	int w

##  void gnome_icon_list_set_row_spacing (GnomeIconList *gil, int pixels) 
void
gnome_icon_list_set_row_spacing (gil, pixels)
	GnomeIconList *gil
	int pixels

##  void gnome_icon_list_set_col_spacing (GnomeIconList *gil, int pixels) 
void
gnome_icon_list_set_col_spacing (gil, pixels)
	GnomeIconList *gil
	int pixels

##  void gnome_icon_list_set_text_spacing (GnomeIconList *gil, int pixels) 
void
gnome_icon_list_set_text_spacing (gil, pixels)
	GnomeIconList *gil
	int pixels

##  void gnome_icon_list_set_icon_border (GnomeIconList *gil, int pixels) 
void
gnome_icon_list_set_icon_border (gil, pixels)
	GnomeIconList *gil
	int pixels

##  void gnome_icon_list_set_separators (GnomeIconList *gil, const char *sep) 
void
gnome_icon_list_set_separators (gil, sep)
	GnomeIconList *gil
	const char *sep

##  gchar * gnome_icon_list_get_icon_filename (GnomeIconList *gil, int idx) 
gchar *
gnome_icon_list_get_icon_filename (gil, idx)
	GnomeIconList *gil
	int idx

##  int gnome_icon_list_find_icon_from_filename (GnomeIconList *gil, const char *filename) 
int
gnome_icon_list_find_icon_from_filename (gil, filename)
	GnomeIconList *gil
	const char *filename

# FIXME: how to implement these?
###  void gnome_icon_list_set_icon_data (GnomeIconList *gil, int idx, gpointer data) 
#void
#gnome_icon_list_set_icon_data (gil, idx, data)
#	 GnomeIconList *gil
#	 int idx
#	 gpointer data
#
###  void gnome_icon_list_set_icon_data_full (GnomeIconList *gil, int pos, gpointer data, GDestroyNotify destroy) 
#void
#gnome_icon_list_set_icon_data_full (gil, pos, data, destroy)
#	 GnomeIconList *gil
#	 int pos
#	 gpointer data
#	 GDestroyNotify destroy
#
###  int gnome_icon_list_find_icon_from_data (GnomeIconList *gil, gpointer data) 
#int
#gnome_icon_list_find_icon_from_data (gil, data)
#	 GnomeIconList *gil
#	 gpointer data
#
###  gpointer gnome_icon_list_get_icon_data (GnomeIconList *gil, int pos) 
#gpointer
#gnome_icon_list_get_icon_data (gil, pos)
#	 GnomeIconList *gil
#	 int pos

##  void gnome_icon_list_moveto (GnomeIconList *gil, int pos, double yalign) 
void
gnome_icon_list_moveto (gil, pos, yalign)
	GnomeIconList *gil
	int pos
	double yalign

##  GtkVisibility gnome_icon_list_icon_is_visible (GnomeIconList *gil, int pos) 
GtkVisibility
gnome_icon_list_icon_is_visible (gil, pos)
	GnomeIconList *gil
	int pos

##  int gnome_icon_list_get_icon_at (GnomeIconList *gil, int x, int y) 
int
gnome_icon_list_get_icon_at (gil, x, y)
	GnomeIconList *gil
	int x
	int y

##  int gnome_icon_list_get_items_per_line (GnomeIconList *gil) 
int
gnome_icon_list_get_items_per_line (gil)
	GnomeIconList *gil

##  GnomeIconTextItem *gnome_icon_list_get_icon_text_item (GnomeIconList *gil, int idx) 
GnomeIconTextItem *
gnome_icon_list_get_icon_text_item (gil, idx)
	GnomeIconList *gil
	int idx

##  GnomeCanvasPixbuf *gnome_icon_list_get_icon_pixbuf_item (GnomeIconList *gil, int idx) 
GObject *
gnome_icon_list_get_icon_pixbuf_item (gil, idx)
	GnomeIconList *gil
	int idx
