#define string_nato
/// string_nato(text)
//
//  Returns a given string as expressed by the NATO phonetic alphabet.
//  Phonetic words will be separarted by spaces. Non-alphanumeric 
//  characters are removed.
//
//      text        text to translate, string
//
/// GMLscripts.com/license
{
    var in = string_upper(argument0);
    var len = string_length(in);
    var out = "";
    
    var nato = ds_map_create();
    nato[? "A"] = "Alfa";     nato[? "B"] = "Bravo";     nato[? "C"] = "Charlie";
    nato[? "D"] = "Delta";    nato[? "E"] = "Echo";      nato[? "F"] = "Foxtrot";
    nato[? "G"] = "Golf";     nato[? "H"] = "Hotel";     nato[? "I"] = "India";
    nato[? "J"] = "Juliett";  nato[? "K"] = "Kilo";      nato[? "L"] = "Lima";
    nato[? "M"] = "Mike";     nato[? "N"] = "November";  nato[? "O"] = "Oscar";
    nato[? "P"] = "Papa";     nato[? "Q"] = "Quebec";    nato[? "R"] = "Romeo";
    nato[? "S"] = "Sierra";   nato[? "T"] = "Tango";     nato[? "U"] = "Uniform";
    nato[? "V"] = "Victor";   nato[? "W"] = "Whiskey";   nato[? "X"] = "X-ray";
    nato[? "Y"] = "Yankee";   nato[? "Z"] = "Zulu";      nato[? "0"] = "Zero";
    nato[? "1"] = "One";      nato[? "2"] = "Two";       nato[? "3"] = "Three";
    nato[? "4"] = "Four";     nato[? "5"] = "Five";      nato[? "6"] = "Six";
    nato[? "7"] = "Seven";    nato[? "8"] = "Eight";     nato[? "9"] = "Niner";
    
    for (var i=1; i<len; i++) {
        var c = string_char_at(in ,i);
        if (!ds_map_exists(nato, c)) continue;
        if (i > 1) out += " ";
        out += nato[? c];
    }
    
    ds_map_destroy(nato);
    return out;
}