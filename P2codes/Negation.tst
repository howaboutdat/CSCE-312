//Negation.tst

load Negation.hdl,
output-file Negation.out,
compare-to Negation.cmp,
output-list in%B1.16.1 out%B1.16.1;

//in=1
set in %B0000000000000001,
eval,
output;

//in=255
set in %B0000000011111111,
eval,
output;

//in=256
set in %B0000000100000000,
eval,
output;

//in=-1
set in %B1111111111111111,
eval,
output;

set in %B0000000000111100,
eval,
output;

set in %B0010011101001011,
eval,
output;

set in %B0001111011110101,
eval,
output;

set in %B1101110010010100,
eval,
output;

set in %B0101010101010101,
eval,
output;

set in %B1110001110001110,
eval,
output;

set in %B0110001011010110,
eval,
output;
