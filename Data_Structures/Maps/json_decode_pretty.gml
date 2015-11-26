#define json_decode_pretty
/// json_decode_pretty(str)
//
//  Decodes the given json string, returning a map
//  in the same way json_decode does. This function
//  should be used when decoding json encoded with
//  json_encode_pretty to remove any excess characters
//
//      str         The JSON string to decode
//
/// GMLscripts.com/license
{
    var str = argument0;
    str = string_replace_all(str,"#","");
    return json_decode(str);
}