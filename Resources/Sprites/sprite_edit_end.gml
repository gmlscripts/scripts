#define sprite_edit_end
/// sprite_edit_end(session)
//  GM:S v2.3+ compatible
//
//  Ends a sprite editing session started with sprite_edit_begin().
//  At the end of a session, the original sprite is replaced with
//  a new version and the editing surface is freed.
//
//  @param session     editing session ID given by sprite_edit_begin(), real
//
/// GMLscripts.com/license
function sprite_edit_end(session) {
    var p,surface,sprite,w,h,n,prec,tran,smth,load,xoff,yoff,temp,i;
    session = session        
    p = string_pos(':',session);
    surface = real(string_copy(session,1,p-1));
    sprite = real(string_copy(session,p+1,10));
    w = sprite_get_width(sprite);
    h = sprite_get_height(sprite);
    n = sprite_get_number(sprite);
    xoff = sprite_get_xoffset(sprite);
    yoff = sprite_get_yoffset(sprite);
    temp = sprite_create_from_surface(surface,0,0,w,h,false,false,xoff,yoff);
    for(i=1; i<n; i+=1) {
        sprite_add_from_surface(temp,surface,w*i,0,w,h,false,false);
    }
    sprite_assign(sprite,temp);
    sprite_delete(temp);
    surface_reset_target();
    surface_free(surface);
    return 0;
}