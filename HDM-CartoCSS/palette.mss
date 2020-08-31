/* ****************************************************************** */
/* OSM BRIGHT for Imposm                                              */
/* ****************************************************************** */

/* For basic style customization you can simply edit the colors and
 * fonts defined in this file. For more detailed / advanced
 * adjustments explore the other files.
 *
 * GENERAL NOTES
 *
 * There is a slight performance cost in rendering line-caps.  An
 * effort has been made to restrict line-cap definitions to styles
 * where the results will be visible (lines at least 2 pixels thick).
 */

/* ================================================================== */
/* FONTS
/* ================================================================== */

/* directory to load fonts from in addition to the system directories */
Map { font-directory: url(./fonts); }

/* set up font sets for various weights and styles */
@regular:           'Noto Sans Regular',
                    'Noto Sans Arabic Regular',
                    'Noto Sans Armenian Regular',
                    'Noto Sans CJK JP Regular',
                    'Noto Sans Georgian Regular',
                    'Noto Sans Hebrew Regular',
                    'Noto Sans Khmer Regular',
                    'Noto Sans Lao Regular',
                    'Noto Sans Myanmar Regular',
                    'Noto Sans Tamil Regular',
                    'Noto Sans Thai Regular',
                    'Unifont Medium',
                    'unifont Medium';
@medium:            'Noto Sans Medium',
                    'Noto Sans Arabic Medium',
                    'Noto Sans Armenian Medium',
                    'Noto Sans CJK JP Medium',
                    'Noto Sans Georgian Medium',
                    'Noto Sans Hebrew Medium',
                    'Noto Sans Khmer Medium',
                    'Noto Sans Lao Medium',
                    'Noto Sans Myanmar Medium',
                    'Noto Sans Tamil Medium',
                    'Noto Sans Thai Medium',
                    'Unifont Medium',
                    'unifont Medium';
@bold:              'Noto Sans Bold',
                    'Noto Sans Arabic Bold',
                    'Noto Sans Armenian Bold',
                    'Noto Sans CJK JP Bold',
                    'Noto Sans Georgian Bold',
                    'Noto Sans Hebrew Bold',
                    'Noto Sans Khmer Bold',
                    'Noto Sans Lao Bold',
                    'Noto Sans Myanmar Bold',
                    'Noto Sans Tamil Bold',
                    'Noto Sans Thai Bold',
                    'Unifont Medium',
                    'unifont Medium';

/* Some fonts are larger or smaller than others. Use this variable to
   globally increase or decrease the font sizes. */
/* Note this is only implemented for certain things so far */
@text_adjust: 0;


/* ================================================================== */
/* LANDUSE & LANDCOVER COLORS
/* ================================================================== */

@land:              #F7F6F1;
@water:             #90cccb; //#79c1c0
@beach:             #EEE5B2;
@cemetery:          #D6DED2;
@military:          #D1BFAA;
@wetland:           #e3e9e2; //#CFDCD3;
@peak:              #69623c;
@salt:              #ecf0f1;
/* Greens */
@park:              #D0DCAE; //#86ac86
@wooded:            #B2C29D; //#95ae79;
@grass:             @park;
@agriculture:       #DEDDBE; //#c7c78d; //#C3D9AD;
@heath:             #E1E9D6;
@sports:            @park;

@residential:       darken(@land, 4%);
@commercial:        @land * 0.97;
@industrial:        #D7C8CB;

@building:          #dcd7d7;
@building_hedge:    #dcd7d7;
@collapsed:         #b25047;
@damaged:           #c87c38;
@hospital:          rgb(229,198,195);
@school:            #E2D6CD;


/* ================================================================== */
/* ROAD COLORS
/* ================================================================== */

/* For each class of road there are three color variables:
 * - line: for lower zoomlevels when the road is represented by a
 *         single solid line.
 * - case: for higher zoomlevels, this color is for the road's
 *         casing (outline).
 * - fill: for higher zoomlevels, this color is for the road's
 *         inner fill (inline).
 */

/* ================================================================== */
/* ROAD SURFACES
/* ================================================================== */

// @unpaved: darken(@residential, 15%); //#e2d8c3; //#ede7da;
@unpaved: @residential; //#e2d8c3; //#ede7da;
@paved: #aea1a0;

@unpaved_case: darken(@unpaved, 15%);

@motorway_line:     #a098b0; //#44366e;
@motorway_fill:     @motorway_line;
@motorway_case:     darken(@motorway_fill, 10%);

@primary_line:      #d2938e;
@primary_fill:      @primary_line;
@primary_case:      @primary_fill * 0.9;

@secondary_line:    #e9cbb0;
@secondary_fill:    @secondary_line;
@secondary_case:    @secondary_fill * 0.9;

@tertiary_line:    #dbde99;
@tertiary_fill:    @tertiary_line;
@tertiary_case:    @tertiary_fill * 0.9;

@standard_line:     #d2938e;
@standard_fill:     #e4e1d1;
@standard_case:     @standard_fill * 0.9;

@urban_fill:        #f7f6f1;
@urban_case:        @urban_fill * 0.9;

@track_line:        #BFA286;
@track_fill:        @unpaved;
@track_case:        darken(@unpaved, 20%);

@pedestrian_line:   #CBC5BF;
@pedestrian_fill:   #BFA286;
@pedestrian_case:   @land;

@cycle_line:        @standard_line;
@cycle_fill:        #FAFAF5;
@cycle_case:        @land;

@rail_line:         #999;
@rail_fill:         #fff;
@rail_case:         @land;

@aeroway:           #ddd;

@ferry:             #42908f;

/* ================================================================== */
/* BOUNDARY COLORS
/* ================================================================== */

@admin_2:           #537076;
@admin_3:           #a59c9b;
@admin_2_text:      @admin_2;
@admin_3_text:      @admin_3;

/* ================================================================== */
/* LABEL COLORS
/* ================================================================== */

/* We set up a default halo color for places so you can edit them all
   at once or override each individually. */
@place_halo:        fadeout(#fff,34%);

@country_text:      #435;
@country_halo:      @place_halo;

@capital_text:      @country_text;
@capital_halo:      @country_halo;

@state_text:        #a6a6aa;
@state_halo:        @place_halo;

@city_text:         #222;
@city_halo:         @place_halo;

@town_text:         #444;
@town_halo:         @place_halo;

@poi_text:          #537076;
@poi_text2:         #868E90;
@poi_halo:          @place_halo;

@road_text:         #525252;
@road_halo:         rgba(255,255,255,0.8);

@housenumber_text:  #797979;

@other_text:        #888;
@other_halo:        @place_halo;

@locality_text:     #aaa;
@locality_halo:     @land;

/* Also used for other small places: hamlets, suburbs, localities */
@village_text:      #888;
@village_halo:      @place_halo;


/* ================================================================== */
/* OTHERS
/* ================================================================== */

@contour_line:      #d2ccb0;
@power_line:        #9a747c;
