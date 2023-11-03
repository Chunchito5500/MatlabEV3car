color = brick.ColorCode(1);
distance = brick.UltrasonicDist(2);
button = brick.TouchPressed(3);
failSafe = 0;

%% RIGHT A, LEFT B

	while color ~= 3    %Green

		pause(0.2);

		if ((color == 1) || (color == 4))     %Black Or Yellow
			brick.MoveMotor('AB', -23);
		end

		if color == 5     %Red
			brick.StopMotor('AB')
            pause(3);
            brick.MoveMotor('AB', -23)
			pause(1);
            failSafe = 0;
		end

		if distance >= 50 %If car is 30 or less centimeters from a wall
            pause(1.5)
			brick.StopMotor('AB')
            pause(1)
            brick.ResetMotorAngle('A'); 
            brick.MoveMotorAngleRel('A', 20, -390, 'Brake')
            brick.WaitForMotor('A')
            brick.MoveMotor('AB', -23)
            pause(1.5)
            failSafe = 0;
		end

		if button %if button was pressed
			brick.StopMotor('AB')
			pause(1);
			brick.MoveMotor('AB', 10)
            pause(3.5)
            brick.StopMotor('AB')
            brick.ResetMotorAngle('B');
			brick.MoveMotorAngleRel('B', 20, -410, 'Brake')
            brick.WaitForMotor('B')
            failSafe = 0;
        end

        if failSafe >= 60
            brick.StopMotor('AB')
			pause(1);
			brick.MoveMotor('AB', 10)
            pause(2.5)
            brick.StopMotor('AB')
            brick.ResetMotorAngle('B');
			brick.MoveMotorAngleRel('B', 20, -360, 'Brake')
            brick.WaitForMotor('B')
            failSafe = 0;
        end
			
		color = brick.ColorCode(1);
		distance = brick.UltrasonicDist(2);
        button = brick.TouchPressed(3);
        failSafe = failSafe + 1;

	end

pause(1.5)
brick.StopMotor('AB')
disp('You Have Reached Your Destination');