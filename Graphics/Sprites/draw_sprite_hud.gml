#define draw_sprite_hud
/// draw_sprite_hud(sprite,subimg,x,y,xscale,yscale,rot,color,alpha)
//
//  Draws a sprite at a position relative to the top-left corner
//  of the screen, regardless of the current view position or rotation.
//  It takes the same arguments as draw_sprite_ext().
//
/// GMLscripts.com/license
{
    var xoffset,yoffset,tx,ty;
    
    xoffset = argument2;
    yoffset = argument3;
    
    tx = view_xview[0] + view_wview[0]/2 + lengthdir_x(xoffset-view_wview[0]/2,-view_angle[0]) 
        + lengthdir_x(yoffset-view_hview[0]/2,-view_angle[0]-90);
    ty = view_yview[0] + view_hview[0]/2 + lengthdir_y(xoffset-view_wview[0]/2,-view_angle[0]) 
        + lengthdir_y(yoffset-view_hview[0]/2,-view_angle[0]-90);
    
    draw_sprite_ext(argument0,argument1,tx,ty,argument4,argument5,
        -view_angle[0]+argument6,argument7,argument8);
    return 0;
}