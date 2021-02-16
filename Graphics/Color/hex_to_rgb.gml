#define hex_to_rgb
/// hex_to_rgb(hex)
//  GM:S v2.3+ compatible
//
//  Returns a list data structure populated by RGB color component values.
//  Depends on hex_to_dec().
//
//  @param hex         hexadecimal color in RRGGBB format, string
//
/// GMLscripts.com/license
function hex_to_rgb(hex) {
    var color,rgb;
    color = hex_to_dec(hex);
    rgb = ds_list_create();
    ds_list_add(rgb, (color & 255));
    ds_list_add(rgb, (color & 65280) >> 8);
    ds_list_add(rgb, (color & 16711680) >> 16);
    return rgb;
}