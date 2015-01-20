#define draw_sprite_inverted
/// draw_sprite_inverted(sprite,subimg,x,y)
//
//  Draws a sprite with colors inverted. 
//  Resets blending mode to normal.
//
//      sprite      sprite index, real
//      subimg      sprite subimage, real
//      x,y         position to draw, real
//
/// GMLscripts.com/license
{
    var sprite,subimg,xs,ys;
    sprite = argument0;
    subimg = argument1;
    xs = argument2;
    ys = argument3;
    
    var w,h,xo,yo,x1,y1,x2,y2,vx1,vy1,vx2,vy2,xp,yp,wp,hp,tempsprite;
    w  = sprite_get_width(sprite);
    h  = sprite_get_height(sprite);
    xo = sprite_get_xoffset(sprite);
    yo = sprite_get_yoffset(sprite);
    
    x1 = xs-xo;
    y1 = ys-yo;
    x2 = x1+w;
    y2 = y1+h;
    
    if (view_enabled) {
        vx1 = view_xview[view_current];
        vy1 = view_yview[view_current];
        vx2 = view_wview[view_current]+vx1;
        vy2 = view_hview[view_current]+vy1;
    }else{
        vx1 = 0;
        vy1 = 0;
        vx2 = room_width;
        vy2 = room_height;
    }
    
    xp = min(max(0,vx1-x1),vx2,w);
    yp = min(max(0,vy1-y1),vy2,h);
    wp = min(max(0,x2-vx1),vx2-x1,w);
    hp = min(max(0,y2-vy1),vy2-y1,h);
    
    x1 = x1+xp;
    y1 = y1+yp;
    x2 = x1+wp-1;
    y2 = y1+hp-1;
    
    if (wp > 0 && hp > 0) {
        draw_set_blend_mode_ext(bm_zero,bm_inv_src_alpha);
        draw_sprite_part(sprite,subimg,xp,yp,wp,hp,x1,y1);
        tempsprite = sprite_create_from_screen(x1,y1,wp,hp,0,0,0,0,0,0);
        draw_set_blend_mode(bm_normal);
        if (tempsprite < 0) return -1;
        d3d_set_fog(true,c_white,0,0);
        draw_sprite(tempsprite,0,x1,y1);
        d3d_set_fog(0,0,0,0);
        draw_set_blend_mode_ext(bm_zero,bm_src_alpha);
        draw_sprite(sprite,subimg,xs,ys);
        draw_set_blend_mode_ext(bm_zero,bm_inv_src_color);
        draw_sprite(sprite,subimg,xs,ys);
        draw_set_blend_mode_ext(bm_one,bm_one);
        draw_sprite(tempsprite,0,x1,y1);
        sprite_delete(tempsprite);
        draw_set_blend_mode(bm_normal);
    }
}