#define hex_to_rgb
/// hex_to_rgb(hex)
//
//  Returns a list data structure populated by RGB color component values.
//  Depends on hex_to_dec().
//
//      hex         hexadecimal color in RRGGBB format, string
//
/// GMLscripts.com/license
{
    var color,rgb;
    color = hex_to_dec(argument0);
    rgb = ds_list_create();
    ds_list_add(rgb, (color & 255));
    ds_list_add(rgb, (color & 65280) >> 8);
    ds_list_add(rgb, (color & 16711680) >> 16);
    return rgb;
}