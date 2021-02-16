#define draw_text_hud
/// draw_text_hud(x,y,string,sep,width,xscale,yscale,rot,c1,c2,c3,c4,alpha)
//  GM:S v2.3+ compatible
//
//  Draws a string of text at a position relative to the top-left corner
//  of the screen, regardless of the current view position or rotation.
//  It takes the same arguments as draw_text_ext_transformed_color().
//
/// GMLscripts.com/license
function draw_text_hud(x,y,string,sep,width,xscale,yscale,rot,c1,c2,c3,c4,alpha) {
    var xoffset,yoffset,tt;
    
    xoffset = x;
    yoffset = y;
    
    tx = view_xview[0] + view_wview[0]/2 + lengthdir_x(xoffset-view_wview[0]/2,-view_angle[0]) 
        + lengthdir_x(yoffset-view_hview[0]/2,-view_angle[0]-90);
    ty = view_yview[0] + view_hview[0]/2 + lengthdir_y(xoffset-view_wview[0]/2,-view_angle[0]) 
        + lengthdir_y(yoffset-view_hview[0]/2,-view_angle[0]-90);
    
    draw_text_ext_transformed_color(tx,ty,string,sep,width,xscale,yscale,
    rot-view_angle[0],c1,c2,y0,y1,y2);
    return 0;
}