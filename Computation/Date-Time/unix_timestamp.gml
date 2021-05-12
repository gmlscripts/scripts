/// @func   unix_timestamp([datetime])
///
/// @desc   Returns a Unix timestamp for the current time or given date-time.
///
/// @param  {real}      [datetime]  optional GameMaker date-time
///
/// @return {real}      Unix timestamp
///
/// GMLscripts.com/license

function unix_timestamp(datetime)
{
    datetime = is_undefined(datetime) ? date_current_datetime() : datetime 
    return floor(date_second_span(25569, datetime));
}