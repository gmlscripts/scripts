/// @func   factor(num)
///
/// @desc   Returns an array containing the prime factors of a given integer.
///
/// @param  {real}      number      positive integer
///
/// @return {array}     array of factors
///
/// GMLscripts.com/license

function factor(num)
{
    var factors = array_create(0);
    if (num >= 2) {
        var check = 2;
        while (sqr(check) <= num) {
              if (num mod check == 0) {
                  array_push(factors, check);
                  num = num div check;
              } else {
                  check += 1;
              }
        }
        if (num != 1) {
            array_push(factors, num);
        }
    }
    return factors;
}
