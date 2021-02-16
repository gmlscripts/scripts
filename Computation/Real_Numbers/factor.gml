#define factor
/// factor(number)
//  GM:S v2.3+ compatible
//  
//  Returns a ds_list containing the prime factors of a given integer.
//
//  @param number      positive integer, real
//
/// GMLscripts.com/license
function factor(number) {
    var num,dsid,check;
    num = number;
    dsid = ds_list_create();
    check = 2;
    while (sqr(check) <= num) {
          if (num mod check == 0) {
              ds_list_add(dsid,check);
              num = num div check;
          }else{
              check += 1;
          }
    }
    if (num != 1) {
        ds_list_add(dsid,num);
    }
    return dsid;
}