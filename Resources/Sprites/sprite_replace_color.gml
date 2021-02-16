#define sprite_replace_color
/// sprite_replace_color(sprite,oldcolor,newcolor)
//  GM:S v2.3+ compatible
//
//  Replaces one color in a given sprite with another. No new sprite are
//  created, the given sprite is changed. Returns (-1) on error.
//
//  @param sprite      sprite to change, real
//  @param oldcolor    color that will be replaced, real
//  @param newcolor    color used as replacement, real
//
/// GMLscripts.com/license
function sprite_replace_color(sprite,oldcolor,newcolor) {
    var oldc, newc;
    oldc  = oldcolor;
    newc  = newcolor;
    
    var w, h, n, i, xo, yo, surf, tempsprite, newsprite, alphasprite;
    w  = sprite_get_width(sprite);
    h  = sprite_get_height(sprite);
    n  = sprite_get_number(sprite);
    xo = sprite_get_xoffset(sprite);
    yo = sprite_get_yoffset(sprite);
    
    surf = surface_create(w,h+1);
    surface_set_target(surf);
    
    for(i=0; i<n; i+=1) {
        draw_clear_alpha(oldc,1);
        draw_set_blend_mode_ext(bm_one,bm_zero);
        draw_sprite(sprite,i,xo,yo);
        tempsprite = sprite_create_from_surface(surf,0,0,w,h+1,true,false,xo,yo);
        draw_clear_alpha(newc,1);
        draw_set_blend_mode_ext(bm_src_alpha,bm_inv_src_alpha);
        draw_sprite(tempsprite,0,xo,yo);
        if (i == 0) {
            newsprite = sprite_create_from_surface(surf,0,0,w,h,false,false,xo,yo);
            if (newsprite < 0) return -1;
        }else{
            sprite_add_from_surface(newsprite,surf,0,0,w,h,false,false);
        }     
        draw_clear_alpha(c_white,1);
        draw_set_blend_mode_ext(bm_zero,bm_src_alpha);
        draw_sprite(sprite,i,xo,yo);
        if (i == 0) {
            alphasprite = sprite_create_from_surface(surf,0,0,w,h,false,false,xo,yo);
            if (alphasprite < 0) {
                sprite_delete(newsprite);
                return -1;
            }
        }else{
            sprite_add_from_surface(alphasprite,surf,0,0,w,h,false,false);
        }
        sprite_delete(tempsprite);
    }
    
    draw_set_blend_mode(bm_normal);
    surface_reset_target();
    sprite_assign(sprite,newsprite);
    sprite_set_alpha_from_sprite(sprite,alphasprite);
    sprite_delete(newsprite);
    sprite_delete(alphasprite);
    surface_free(surf);
}