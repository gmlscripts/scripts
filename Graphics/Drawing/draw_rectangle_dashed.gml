#define draw_rectangle_dashed
/// draw_rectangle_dashed(x1,y1,x2,y2,size)
//
//  Draws a rectangle made of dashes of a given size.
//  If no size is given, single pixel dots are used.
//  Creates a sprite, 2x2 pixels in size, and a pair
//  of global variables the first it is called.
//
//      x1,y1       1st corner of the rectangle, real
//      x2,y2       2nd corner of the rectangle, real
//      size        length of the dashes in pixels, real (optional)   
//
/// GMLscripts.com/license
{
    // initialize the script on the first call
    if (!variable_global_exists("_DRAW_RECT_DASH_SPR")) {
        var i,j,k,l;
        i = draw_getpixel(0,0);
        j = draw_getpixel(1,0);
        k = draw_getpixel(0,1);
        l = draw_getpixel(1,1);
        draw_point_color(0,0,c_white);
        draw_point_color(1,0,c_black);
        draw_point_color(0,1,c_black);
        draw_point_color(1,1,c_white);
        global._DRAW_RECT_DASH_SPR = sprite_create_from_screen(0,0,2,2,0,1,0,0,0,0);
        global._DRAW_RECT_DASH_TEX = sprite_get_texture(global._DRAW_RECT_DASH_SPR,0);
        draw_point_color(0,0,i);
        draw_point_color(1,0,j);
        draw_point_color(0,1,k);
        draw_point_color(1,1,l);
    }
    
    // main script begin
    var x1,y1,x2,y2,u1,v1,u2,v2,color,alpha;
    x1 = min(argument0,argument2);
    y1 = min(argument1,argument3);
    x2 = max(argument0,argument2);
    y2 = max(argument1,argument3);
    
    // scale and center texture UV coordinates
    argument4 = max(1,argument4);
    u2 = (x2-x1)/(2*argument4);
    v2 = (y2-y1)/(2*argument4);
    u1 = 0.25  - (u2 mod 2) / 2;
    v1 = 0.25  - (v2 mod 2) / 2;
    u2 += u1;
    v2 += v1;
    
    // draw textured rectangle using the default color and alpha
    color = draw_get_color();
    alpha = draw_get_alpha();
    texture_set_repeat(1);    
    draw_primitive_begin_texture(pr_linestrip, global._DRAW_RECT_DASH_TEX);
    draw_vertex_texture_color(x1, y1, u1, v1, color, alpha);
    draw_vertex_texture_color(x2, y1, u2, v1, color, alpha);
    draw_vertex_texture_color(x2, y2, u2, v2, color, alpha);
    draw_vertex_texture_color(x1, y2, u1, v2, color, alpha);
    draw_vertex_texture_color(x1, y1, u1, v1, color, alpha);
    draw_primitive_end(); 
    return 0;
}