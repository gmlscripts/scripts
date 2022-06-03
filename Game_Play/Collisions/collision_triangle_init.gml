/// @func   collision_triangle_init(size)
///
/// @desc   Required to initialize collision_triangle() before first use.
///         Creates an instance of stub object __objCollisionTriangle and
///         prepares it for use including the creation of triangle collision
///         mask of the given size. A larger size can improves accuracy at
///         the expense of memory usage. The default size of 256 pixels is
///         probably sufficient for most purposes.
///
///         This function only needs to be called once and the collision
///         triangle instance persists between rooms. If it is called again,
///         any previous triangle collision instance will be destroyed along
///         with its collision mask sprite, and a new instance and collision
///         mask sprite will be created using the new size.
///
///         IMPORTANT: An object called __objCollisionTriangle must exist
///         in your project before use. It should be a blank stub and does
///         not require any additional settings or inclusion in any room.
///
/// @param  {real}      size        size of mask in pixels (default 256)
///
/// @return {bool}      true on success, false otherwise.
///
/// GMLscripts.com/license

function collision_triangle_init(size=256)
{
    with (__objCollisionTriangle) {
        if (sprite_exists(mask_index)) sprite_delete(mask_index);
        instance_destroy();
    }
    var color = draw_get_color();
    var surface = surface_create(size, size);
    if (!surface_exists(surface)) return false;
    surface_set_target(surface);
    draw_clear_alpha(c_black, 0);
    draw_set_color(c_white);
    draw_triangle(size, size, size, -1, -1, -1, false);
    surface_reset_target();
    surface_save(surface,"triangle.png");
    var sprite = sprite_create_from_surface(surface, 0, 0, size, size, true, false, size, 0);
    surface_free(surface);
    draw_set_color(color);
    if (!sprite_exists(sprite)) return false;
    with (instance_create_depth(0, 0, 0, __objCollisionTriangle)) {
        self.persistent = true;
        self.visible = false;
        self.mask_index = sprite;
        self.size = size;
    }
    return true;
}
