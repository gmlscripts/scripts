/// @func   unix_timestamp([datetime])
///
/// @desc   Returns a Unix timestamp for the current time or given GameMaker datetime.
///
/// @param  {real}      [datetime]  optional date-time value
///
/// @return {real}      Unix timestamp
///
/// GMLscripts.com/license

function unix_timestamp(datetime = date_current_datetime()) 
{
    return floor(date_second_span(25569, datetime));
}
