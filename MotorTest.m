ini_hL = 3.5; %height of the base of the barrel (relative to the floor)
ini_hT = 3.5;   %height of the sensor on the target (relative to the floor)
ini_V = 25.0;       %horizontal velocity of the ping pong ball at time = 0
d_t_t = 5.0;  %horizontal distance from the base of the barrel to the sensor on the target
a_o_l = 45.0;   %angle of the barrel of the launcher (0 <= angle <= 90)
rB_a = 0.0;  %angle of the rotating base (-180 <= angle <= 180)
ard = arduino;
myLauncher = launcher(ini_hL, ini_hT, ini_V, d_t_t, a_o_l, rB_a, ard, ard, ard);
