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
 * $Header: /cvsroot/gtk2-perl/gtk2-perl-xs/Gnome2/xs/GnomeFontPicker.xs,v 1.3 2003/05/22 16:10:20 muppetman Exp $
 */

#include "gnome2perl.h"

MODULE = Gnome2::FontPicker	PACKAGE = Gnome2::FontPicker	PREFIX = gnome_font_picker_

GtkWidget *
gnome_font_picker_new (class)
	SV * class
    C_ARGS:
	

## void gnome_font_picker_set_title (GnomeFontPicker *gfp, const gchar *title) 
void
gnome_font_picker_set_title (gfp, title)
	GnomeFontPicker *gfp
	const gchar *title

## GnomeFontPickerMode gnome_font_picker_get_mode (GnomeFontPicker *gfp) 
GnomeFontPickerMode
gnome_font_picker_get_mode (gfp)
	GnomeFontPicker *gfp

## void gnome_font_picker_set_mode (GnomeFontPicker *gfp, GnomeFontPickerMode mode) 
void
gnome_font_picker_set_mode (gfp, mode)
	GnomeFontPicker *gfp
	GnomeFontPickerMode mode

## void gnome_font_picker_fi_set_use_font_in_label (GnomeFontPicker *gfp, gboolean use_font_in_label, gint size) 
void
gnome_font_picker_fi_set_use_font_in_label (gfp, use_font_in_label, size)
	GnomeFontPicker *gfp
	gboolean use_font_in_label
	gint size

## void gnome_font_picker_fi_set_show_size (GnomeFontPicker *gfp, gboolean show_size) 
void
gnome_font_picker_fi_set_show_size (gfp, show_size)
	GnomeFontPicker *gfp
	gboolean show_size

## void gnome_font_picker_uw_set_widget (GnomeFontPicker *gfp, GtkWidget *widget) 
void
gnome_font_picker_uw_set_widget (gfp, widget)
	GnomeFontPicker *gfp
	GtkWidget *widget

## GtkWidget * gnome_font_picker_uw_get_widget (GnomeFontPicker *gfp) 
GtkWidget *
gnome_font_picker_uw_get_widget (gfp)
	GnomeFontPicker *gfp

## GdkFont* gnome_font_picker_get_font (GnomeFontPicker *gfp) 
GdkFont*
gnome_font_picker_get_font (gfp)
	GnomeFontPicker *gfp

## gboolean gnome_font_picker_set_font_name (GnomeFontPicker *gfp, const gchar *fontname) 
gboolean
gnome_font_picker_set_font_name (gfp, fontname)
	GnomeFontPicker *gfp
	const gchar *fontname

## void gnome_font_picker_set_preview_text (GnomeFontPicker *gfp, const gchar *text) 
void
gnome_font_picker_set_preview_text (gfp, text)
	GnomeFontPicker *gfp
	const gchar *text

const gchar* gnome_font_picker_get_preview_text (GnomeFontPicker *gfp);
