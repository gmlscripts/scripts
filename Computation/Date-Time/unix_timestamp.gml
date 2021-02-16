#define unix_timestamp
/// unix_timestamp([datetime])
//  GM:S v2.3+ compatible
//
//  Returns a Unix timestamp for the current time
//  or optionally given GameMaker datetime value.
//
//  @param datetime    GameMaker datetime, real
//
/// GMLscripts.com/license
function unix_timestamp() {
    var timezone = date_get_timezone();
    
    date_set_timezone(timezone_utc);
    
    if (argument_count > 0) {
        var datetime = argument[0];
    } else {
        var datetime = date_current_datetime();
    }
    
    var timestamp = round(date_second_span(25569, datetime));
    
    date_set_timezone(timezone);
    
    return timestamp;
}