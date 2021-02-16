#define collision_triangle_init
/// collision_triangle_init(size)
//  GM:S v2.3+ compatible
//
//  Required to initialize collision_triangle() before first use. Creates
//  an object, sprite, and global variable __objCollisionTriangle. A large
//  test triangle improves accuracy at the expense of memory usage.
//
//  @param size        size of test triangle in pixels, real
//
/// GMLscripts.com/license
function collision_triangle_init(size) {
    if (not variable_global_exists("objCollisionTriangle")) {
        var color,object;
            object = object_add();
        object_set_persistent(object,true);
        object_event_add(object,ev_create,0,"size = "+string(size));
        global.objCollisionTriangle = instance_create(0,0,object);
        draw_clear_alpha(c_black,1);
        color = draw_get_color();
        draw_set_color(c_white);
        draw_triangle(size,size,size,0,0,0,false);
        draw_set_color(color);
        global.objCollisionTriangle.sprite_index = 
        sprite_create_from_screen(0,0,size,size,true,true,false,true,size,0);
        global.objCollisionTriangle.visible = false;
    }
}