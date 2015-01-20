#define draw_text_hud
/// draw_text_hud(x,y,string,sep,width,xscale,yscale,rot,c1,c2,c3,c4,alpha)
//
//  Draws a string of text at a position relative to the top-left corner
//  of the screen, regardless of the current view position or rotation.
//  It takes the same arguments as draw_text_ext_transformed_color().
//
/// GMLscripts.com/license
{
    var xoffset,yoffset,tx,ty;
    
    xoffset = argument0;
    yoffset = argument1;
    
    tx = view_xview[0] + view_wview[0]/2 + lengthdir_x(xoffset-view_wview[0]/2,-view_angle[0]) 
        + lengthdir_x(yoffset-view_hview[0]/2,-view_angle[0]-90);
    ty = view_yview[0] + view_hview[0]/2 + lengthdir_y(xoffset-view_wview[0]/2,-view_angle[0]) 
        + lengthdir_y(yoffset-view_hview[0]/2,-view_angle[0]-90);
    
    draw_text_ext_transformed_color(tx,ty,argument2,argument3,argument4,argument5,argument6,
    argument7-view_angle[0],argument8,argument9,argument10,argument11,argument12);
    return 0;
}