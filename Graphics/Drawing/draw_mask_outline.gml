#define draw_mask_outline
/// draw_mask_outline(inst,thickness)
//
//  Draws a box around the given instance, indicating
//  it's current mask region. Will use the current colour
//  and alpha settings.
//
//      inst        the instance to draw the outline around
//      thickness   the thickness of the line to draw
//
/// GMLScripts.com/license
{
    var inst,thickness,m,ox,oy,left,top,right,bottom;
    inst = argument0;
    thickness = argument1;
    m = inst.sprite_index;
    if (inst.mask_index > -1) then m = inst.mask_index;
    ox = -sprite_get_xoffset(m)*inst.image_xscale;
    oy = -sprite_get_yoffset(m)*inst.image_yscale;
    left = ox+sprite_get_bbox_left(m)*inst.image_xscale;
    top = oy+sprite_get_bbox_top(m)*inst.image_yscale;
    right = ox+sprite_get_bbox_right(m)*inst.image_xscale;
    bottom = oy+sprite_get_bbox_bottom(m)*inst.image_yscale;
    
    d3d_transform_add_rotation_z(inst.image_angle);
    d3d_transform_add_translation(inst.x,inst.y,0);
    for (var i = 0; i < thickness; i++)
    {
        draw_rectangle(left-i,top-i,right+i,bottom+i,true);
    }
    d3d_transform_set_identity();
}
