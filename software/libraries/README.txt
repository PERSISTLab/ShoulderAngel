These folders contain libraries for various things on the msp430s.
The v1 is an older version, it does not allow for multiple instances of objects (aka you can't have 2 different spis on one MCU with it)
The v2 is the newer version, and does allow for multiple spis and things like that.
v1 is far less tested, and also a lot order, there is likely to be a lot of bugs in that code
Notes:
- in v2 the adxl libraries are incomplete and do not seem to work. They should be rather close to wokrkign though and a small bit of effort could fix them.
- in the v1 tests section the tests paths in the Makefiles need to be changed to compile
- in the v1 tests section I am not sure which of those work and which do not
