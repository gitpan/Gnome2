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
 * $Header: /cvsroot/gtk2-perl/gtk2-perl-xs/Gnome2/xs/GnomeDruidPageEdge.xs,v 1.3 2003/05/22 16:10:20 muppetman Exp $
 */

#include "gnome2perl.h"

MODULE = Gnome2::DruidPageEdge	PACKAGE = Gnome2::DruidPageEdge	PREFIX = gnome_druid_page_edge_

## GtkWidget * gnome_druid_page_edge_new (GnomeEdgePosition position);
GtkWidget *
gnome_druid_page_edge_new (class, position)
	SV * class
	GnomeEdgePosition position
    C_ARGS:
	position

## GtkWidget * gnome_druid_page_edge_new_aa (GnomeEdgePosition position);
GtkWidget *
gnome_druid_page_edge_new_aa (class, position)
	SV * class
	GnomeEdgePosition position
    C_ARGS:
	position

## GtkWidget * gnome_druid_page_edge_new_with_vals (GnomeEdgePosition position, gboolean antialiased, const gchar *title, const gchar *text, GdkPixbuf *logo, GdkPixbuf *watermark, GdkPixbuf *top_watermark);
GtkWidget *
gnome_druid_page_edge_new_with_vals (class, position, antialiased, title, text, logo, watermark, top_watermark)
	SV * class
	GnomeEdgePosition position
	gboolean antialiased
	const gchar *title
	const gchar *text
	GdkPixbuf_ornull *logo
	GdkPixbuf_ornull *watermark
	GdkPixbuf_ornull *top_watermark
    C_ARGS:
	position, antialiased, title, text, logo, watermark, top_watermark


## void gnome_druid_page_edge_set_bg_color (GnomeDruidPageEdge *druid_page_edge, GdkColor *color) 
void
gnome_druid_page_edge_set_bg_color (druid_page_edge, color)
	GnomeDruidPageEdge *druid_page_edge
	GdkColor *color

## void gnome_druid_page_edge_set_textbox_color (GnomeDruidPageEdge *druid_page_edge, GdkColor *color) 
void
gnome_druid_page_edge_set_textbox_color (druid_page_edge, color)
	GnomeDruidPageEdge *druid_page_edge
	GdkColor *color

## void gnome_druid_page_edge_set_logo_bg_color (GnomeDruidPageEdge *druid_page_edge, GdkColor *color) 
void
gnome_druid_page_edge_set_logo_bg_color (druid_page_edge, color)
	GnomeDruidPageEdge *druid_page_edge
	GdkColor *color

## void gnome_druid_page_edge_set_title_color (GnomeDruidPageEdge *druid_page_edge, GdkColor *color) 
void
gnome_druid_page_edge_set_title_color (druid_page_edge, color)
	GnomeDruidPageEdge *druid_page_edge
	GdkColor *color

## void gnome_druid_page_edge_set_text_color (GnomeDruidPageEdge *druid_page_edge, GdkColor *color) 
void
gnome_druid_page_edge_set_text_color (druid_page_edge, color)
	GnomeDruidPageEdge *druid_page_edge
	GdkColor *color

## void gnome_druid_page_edge_set_text (GnomeDruidPageEdge *druid_page_edge, const gchar *text) 
void
gnome_druid_page_edge_set_text (druid_page_edge, text)
	GnomeDruidPageEdge *druid_page_edge
	const gchar *text

## void gnome_druid_page_edge_set_title (GnomeDruidPageEdge *druid_page_edge, const gchar *title) 
void
gnome_druid_page_edge_set_title (druid_page_edge, title)
	GnomeDruidPageEdge *druid_page_edge
	const gchar *title

void
gnome_druid_page_edge_set_logo (druid_page_edge, logo_image)
	GnomeDruidPageEdge *druid_page_edge
	GdkPixbuf_ornull *logo_image

void
gnome_druid_page_edge_set_watermark (druid_page_edge, watermark)
	GnomeDruidPageEdge *druid_page_edge
	GdkPixbuf_ornull *watermark

void
gnome_druid_page_edge_set_top_watermark (druid_page_edge, top_watermark_image)
	GnomeDruidPageEdge *druid_page_edge
	GdkPixbuf_ornull *top_watermark_image
