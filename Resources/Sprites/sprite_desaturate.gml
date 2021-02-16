#define sprite_desaturate
/// sprite_desaturate(sprite)
//  GM:S v2.3+ compatible
//
//  Changes a sprite into a grayscale version of itself. 
//  No new sprites are created, the given sprite is changed.
//    
//  @param sprite      sprite to change, real
//
//  Note: Blending mode is reset to normal after calling this script.
//
/// GMLscripts.com/license
function sprite_desaturate(sprite) {
    var w,h,n,xo,yo,surf,i,newalpha;
    
    w  = sprite_get_width(sprite);
    h  = sprite_get_height(sprite);
    n  = sprite_get_number(sprite);
    xo = sprite_get_xoffset(sprite);
    yo = sprite_get_yoffset(sprite);
    
    surf = surface_create(w,h);
    if (surf < 0) return -1;
    surface_set_target(surf);
    draw_clear_alpha(c_white,1);
    tempsprite = sprite_create_from_surface(surf,0,0,w,h,0,0,xo,yo);
    if (tempsprite < 0) {
        surface_free(surf);
        surface_reset_target();
        return -1;
    }
    for (i=1; i<n; i+=1) sprite_add_from_surface(tempsprite,surf,0,0,w,h,0,0);
    sprite_set_alpha_from_sprite(tempsprite,sprite);
    
    for (i=0; i<n; i+=1) {
        draw_clear_alpha(c_black,1);
        draw_sprite(tempsprite,i,xo,yo);
        draw_set_blend_mode(bm_add);
        draw_rectangle_color(0,0,w,h,c_black,c_black,c_black,c_black,false);
        if (i == 0) {
            newsprite = sprite_create_from_surface(surf,0,0,w,h,0,0,xo,yo);
            if (newsprite < 0) {
                sprite_delete(tempsprite);
                surface_reset_target();
                surface_free(surf);
                return -1;
            }
        }else{
            sprite_add_from_surface(newsprite,surf,0,0,w,h,0,0);
        }
        draw_clear_alpha(c_white,1);
        draw_set_blend_mode_ext(bm_zero,bm_src_alpha);
        draw_sprite(sprite,i,xo,yo);
        if (i == 0) {
            alphasprite = sprite_create_from_surface(surf,0,0,w,h,0,0,xo,yo);
            if (alphasprite < 0) {
                sprite_delete(tempsprite);
                sprite_delete(newsprite);
                surface_reset_target();
                surface_free(surf);
                return -1;
            }
        }else{
            sprite_add_from_surface(alphasprite,surf,0,0,w,h,0,0);
        }
        draw_set_blend_mode(bm_normal);
    }
    
    surface_reset_target();
    sprite_assign(sprite,newsprite);
    sprite_set_alpha_from_sprite(sprite,alphasprite);
    sprite_delete(alphasprite);
    sprite_delete(newsprite);
    sprite_delete(tempsprite);
    surface_free(surf);
    return 0;
}