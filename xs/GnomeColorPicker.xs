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
 * $Header: /cvsroot/gtk2-perl/gtk2-perl-xs/Gnome2/xs/GnomeColorPicker.xs,v 1.3 2003/05/22 16:10:20 muppetman Exp $
 */

#include "gnome2perl.h"

MODULE = Gnome2::ColorPicker	PACKAGE = Gnome2::ColorPicker	PREFIX = gnome_color_picker_

GtkWidget *
gnome_color_picker_new (class)
	SV * class
    C_ARGS:
	

## void gnome_color_picker_set_d (GnomeColorPicker *cp, gdouble r, gdouble g, gdouble b, gdouble a) 
void
gnome_color_picker_set_d (cp, r, g, b, a)
	GnomeColorPicker *cp
	gdouble r
	gdouble g
	gdouble b
	gdouble a

## void gnome_color_picker_get_d (GnomeColorPicker *cp, gdouble *r, gdouble *g, gdouble *b, gdouble *a) 
void gnome_color_picker_get_d (GnomeColorPicker *cp, OUTLIST gdouble r, OUTLIST gdouble g, OUTLIST gdouble b, OUTLIST gdouble a) 

## void gnome_color_picker_set_i8 (GnomeColorPicker *cp, guint8 r, guint8 g, guint8 b, guint8 a) 
void
gnome_color_picker_set_i8 (cp, r, g, b, a)
	GnomeColorPicker *cp
	guint8 r
	guint8 g
	guint8 b
	guint8 a

## void gnome_color_picker_get_i8 (GnomeColorPicker *cp, guint8 *r, guint8 *g, guint8 *b, guint8 *a) 
void gnome_color_picker_get_i8 (GnomeColorPicker *cp, OUTLIST guint8 r, OUTLIST guint8 g, OUTLIST guint8 b, OUTLIST guint8 a) 

## void gnome_color_picker_set_i16 (GnomeColorPicker *cp, gushort r, gushort g, gushort b, gushort a) 
void
gnome_color_picker_set_i16 (cp, r, g, b, a)
	GnomeColorPicker *cp
	guint16 r
	guint16 g
	guint16 b
	guint16 a

## void gnome_color_picker_get_i16 (GnomeColorPicker *cp, gushort *r, gushort *g, gushort *b, gushort *a) 
void gnome_color_picker_get_i16 (GnomeColorPicker *cp, OUTLIST guint16 r, OUTLIST guint16 g, OUTLIST guint16 b, OUTLIST guint16 a) 

## void gnome_color_picker_set_dither (GnomeColorPicker *cp, gboolean dither) 
void
gnome_color_picker_set_dither (cp, dither)
	GnomeColorPicker *cp
	gboolean dither

## gboolean gnome_color_picker_get_dither (GnomeColorPicker *cp) 
gboolean
gnome_color_picker_get_dither (cp)
	GnomeColorPicker *cp

## void gnome_color_picker_set_use_alpha (GnomeColorPicker *cp, gboolean use_alpha) 
void
gnome_color_picker_set_use_alpha (cp, use_alpha)
	GnomeColorPicker *cp
	gboolean use_alpha

## gboolean gnome_color_picker_get_use_alpha (GnomeColorPicker *cp) 
gboolean
gnome_color_picker_get_use_alpha (cp)
	GnomeColorPicker *cp

## void gnome_color_picker_set_title (GnomeColorPicker *cp, const gchar *title) 
void
gnome_color_picker_set_title (cp, title)
	GnomeColorPicker *cp
	const gchar *title

const gchar *
gnome_color_picker_get_title (cp)
	GnomeColorPicker *cp
