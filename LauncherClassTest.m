ini_height_launcher = 3.5; %height of the base of the barrel (relative to the floor)
ini_height_target = 3.5;   %height of the sensor on the target (relative to the floor)
ini_velocity = 25.0;       %horizontal velocity of the ping pong ball at time = 0
distance_to_target = 5.0;  %horizontal distance from the base of the barrel to the sensor on the target
angle_of_lancher = 45.0;   %angle of the barrel of the launcher (0 <= angle <= 90)
rotatingBase_angle = 0.0;  %angle of the rotating base (-180 <= angle <= 180)

ini = true; %initialize or not?

if (ini)
myLauncher = launcher(ini_height_launcher,ini_height_target,ini_velocity,distance_to_target,angle_of_lancher,rotatingBase_angle);
end
input1 = 999;
input2 = 999;
p1 = "Launcher Class Debugger:\n0) Exit Debugger\n1) Change launcher''s height\n2) Change target''s height\n3) Change initial X-axis velocity\n";
p2 = "4) Change distance to target\n5) Change launcher''s angle\n6) Change launcher state\n7) Change base''s angle\n>>>";
prompt = p1 + p2;
while (input1 ~= 0)
    input1 = input(prompt);
    clc;
    if (input1 ~= 0)
    switch input1
        case 1
            input2 = input('Change launcher''s height (meters): ');
            myLauncher.Y_i = input2;
        case 2
            input2 = input('Change target''s height (meters): ');
            myLauncher.Y_t = input2;
        case 3
            input2 = input('Change initial velocity (meters/second): ');
            myLauncher.V_i = input2;
        case 4
            input2 = input('Change distance to target (meters): ');
            myLauncher.distance = input2;
        case 5
            input2 = input('Change launcher angle (degrees): ');
            myLauncher.angle = input2;
        case 6
            input2 = input('Change launcher state (bool): ');
            myLauncher.isCocked = input2;
        case 7
            input2 = input('Change base rotation (degrees): ');
            myLauncher.baseRotation = input2;
        otherwise
            fprintf("Not a valid input\n");
    end
    end
    
end

