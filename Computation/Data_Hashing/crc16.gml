#define crc16
/// crc16(str [,mode])
//  GM:S v2.3+ compatible
//
//  Returns a CRC16-CCITT hash value for a given string.
//
//  This script requires initialization to use. To ready the 
//  script for use it must first be called without any arguments. 
//  This only needs to be done once.
//
//  @param str     data to hash with CRC16-CCITT, string
//  @param mode    set to TRUE for pedantic "good" mode, boolean (optional)
//
//  Notes:
//      For speed, this creates a lookup table in the form of a global array
//      called _CRC16tab[]. It features two modes of operation. The "bad" mode
//      is the common implementation found most places. The "good" mode is an
//      implementation that is closer to the actual CRC16-CCITT specification.
//
/// GMLscripts.com/license
function crc16(str) {
    if (argument_count == 0) {
        // Initialize lookup table.
        var tab;
        tab  = "00000041290825812387165162064524774289033303237161412904541949548536775780661935";
        tab += "04657005281291508786211731704429431253023768933560459474181854205500766246358334";
        tab += "09314133790105605121258302989517572216374234646411340883815358862629275060454669";
        tab += "13907098420564901584304232635822165181004693942874386813461663455593905519751132";
        tab += "18628227572675830887021120624110242143715166055789597906391935144392734327447403";
        tab += "23285191563141527286067690264014899107705631752188644476031839801356724793143802";
        tab += "27814318791968423749112981536303168072336084664911527165678144330483953620040265";
        tab += "32407283422427720212158911182607761036966543961374573095324448923448584079336728";
        tab += "37256331934551441451535164945361774577110422400161124820841920484164212874224679";
        tab += "33721377844197946042499815404458239623020068904752089471301016949210122520729270";
        tab += "46570424433831234185628305870354572504451353809411052800115329798256712154017413";
        tab += "42971470983471338840592316335850973551000993914066016810580826199303261794122068";
        tab += "55628515656375859695393683530547498434352259618533307262666306336022731446610403";
        tab += "52093561566022364286358333989643963480261906123124271913125402801068641093114994";
        tab += "64814606875668452557485544442740424362973178227655236521952515522113950739203265";
        tab += "61215653425308557212449554908236825409522818332310200532418011923160500379307920";
        for (var i=0; i<256; i++) {
            global._CRC16tab[i] = real(string_copy(tab, i*5+1, 5));
        }
        return 0;
    }
    
    var str,crc,len,pos,byte;
    str = argument[0];
    crc = $FFFF;
    if (argument_count == 2 && argument[1]) crc = $1D0F;
    len = string_length(str);
    pos = 1;
    repeat(len) {
        byte = ord(string_char_at(str, pos));
        crc = ((crc<<8)^global._CRC16tab[((crc>>8)^byte)&$FF])&$FFFF;
        pos += 1;
    }
    return crc;
}