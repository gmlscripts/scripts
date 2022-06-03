/// @func   collision_triangle(x1, y1, x2, y2, x3, y3, object)
///
/// @desc   Returns an object instance id that collides with a given triangle.
///         If there is no collision, keyword noone is returned.
///
///         IMPORTANT: Initialize with collision_triangle_init() before first use.
///
/// @param  {real}      x1          x-coordinate of 1st point of triangle
/// @param  {real}      y1          y-coordinate of 1st point of triangle
/// @param  {real}      x2          x-coordinate of 2nd point of triangle
/// @param  {real}      y2          y-coordinate of 2nd point of triangle
/// @param  {real}      x3          x-coordinate of 3rd point of triangle
/// @param  {real}      y3          y-coordinate of 3rd point of triangle
/// @param  {object}    object      object or instance to check, or all
///
/// @return {instance}  object instance id
///
/// GMLscripts.com/license

function collision_triangle(x1, y1, x2, y2, x3, y3, object)
{
   // Bounding box check (early out)
   var xmin = min(x1, x2, x3);
   var xmax = max(x1, x2, x3);
   var ymin = min(y1, y2, y3);
   var ymax = max(y1, y2, y3);
   var inst = collision_rectangle(xmin, ymin, xmax, ymax, object, false, false);
   if (inst == noone) return noone;

   // Triangle perimeter check (early out)
   inst = collision_line(x1, y1, x2, y2, object, true, false);
   if (inst != noone) return inst;
   inst = collision_line(x1, y1, x3, y3, object, true, false);
   if (inst != noone) return inst;
   inst = collision_line(x2, y2, x3, y3, object, true, false);
   if (inst != noone) return inst;

   // Find long side, make it (x1,y2) to (x2,y2)
   var d12 = point_distance(x1, y1, x2, y2);
   var d13 = point_distance(x1, y1, x3, y3);
   var d23 = point_distance(x2, y2, x3, y3);
   var t;
   switch (max(d12, d13, d23)) {
       case d13:
           t = x2; x2 = x3; x3 = t;
           t = y2; y2 = y3; y3 = t;
           d12 = d13;
           break;
       case d23:
           t = x1; x1 = x3; x3 = t;
           t = y1; y1 = y3; y3 = t;
           d12 = d23;
           break;
   }

   // From (x3,y3), find nearest point on long side (x4,y4).
   var dx = x2 - x1;
   var dy = y2 - y1;
   var x4, y4;
   if ((dx == 0) && (dy == 0)) {
       x4 = x1;
       y4 = y1;
   }else{
       t = ((x3 - x1) * dx + (y3 - y1) * dy) / (d12 * d12);
       x4 = x1 + t * dx;
       y4 = y1 + t * dy;
   }

   // A line constructed from (x3,y3) to (x4,y4) divides
   // the original triangle into two right triangles.
   // Fit the collision mask into these triangles.
   var d14 = point_distance(x1, y1, x4, y4);
   var d24 = d12 - d14;
   with (__objCollisionTriangle) {
       image_angle  = point_direction(x1, y1, x4, y4);
       image_xscale = d14 / size;
       image_yscale = point_distance(x3, y3, x4, y4) / size;
       if ((x1 > x4) ^^ (y3 < y4)) image_yscale *= -1;
       inst = instance_place(x4, y4, object);
       if (inst != noone) return inst;
       image_xscale = -d24 / size;
       inst = instance_place(x4, y4, object);
       if (inst != noone) return inst;
   }
   return noone;
}
