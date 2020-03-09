classdef launcher
    properties
        Y_i;%height of the launcher (m)
        Y_t;%height of the target (m)
        V_i;%velocity of the launcher (m/s)
        distance; %horizontal distance from the camera to the target, recieved from the vision system code (m)
        angle; %vertical angle of the launcher barrel (degrees)
               %range: 0 <= angle <= 90
        baseRotation; %angle of the rotating base (degrees)
        isCocked = false; %bool value whether the launcher system is ready to fire
        isRunning = false;
        score = 0;
        ArduinoObj = [0,0,0]; %arduino objects used for the motors
        Motors = [0,0,0];
        
        
    end
    methods
        %Construction---------------------------------------------------
        function obj = launcher(yi,yt,vi,d,a,br,a1,a2,a3) %constructer
            obj.Y_i = yi;
            obj.Y_t = yt;
            obj.V_i = vi;
            obj.distance = d;
            obj.angle = a;
            obj.baseRotation = br;
            obj.ArduinoObj(1) = a1;
            obj.ArduinoObj(2) = a2;
            obj.ArduinoObj(3) = a3;
        end
        
        %function run(obj)
        %    obj.isRunning = true;
        %    while (obj.isRunning)
        %        while (~(obj.isCocked))
        %        end
        %        
        %       while (obj.isCocked)
        %        end
        %    end
        %end
        
        function makeMotor(obj, index, stepsPerRev, mPs)
            %mPs > array of Motor Pins 1-4%
            myMotor = StepperObject(obj.ArduinoObj(index), stepsPerRev,mPs(1),mPs(2),mPs(3),mPs(4));
            obj.Motors(index) = myMotor;
        end
        function moveClockwise(obj,speed,stepsToMove,index)
            MoveClockWise(obj.Motors(index),speed,stepsToMove);
        end
        function moveCounterClockwise(obj,speed,stepsToMove,index)
            MoveCounterClockWise(obj.Motors(index), speed, stepsToMove);
        end
        %---------------------------------------------------------------
    end
end
