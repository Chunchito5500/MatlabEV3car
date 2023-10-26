color = brick.ColorCode(1);
distance = brick.UltrasonicDist(2);
button = brick.TouchPressed(3);

%% RIGHT A, LEFT B

	while color ~= 3    %Green

		pause(0.2);

		if ((color == 1) || (color == 4))     %Black Or Yellow
			brick.MoveMotor('AB', -30);
		end

		if color == 5     %Red
			brick.StopMotor('AB')
            pause(3);
            brick.MoveMotor('AB', -30)
			pause(1);
		end

		if distance >= 40 %If car is 30 or less centimeters from a wall
            pause(1.5)
			brick.StopMotor('AB')
            pause(1)
            brick.ResetMotorAngle('A'); 
            brick.MoveMotorAngleRel('A', 20, -430, 'Brake')
            brick.WaitForMotor('A')
            brick.MoveMotor('AB', -30)
            pause(1.5)
		end

		if button %if button was pressed
			brick.StopMotor('AB')
			pause(1);
			brick.MoveMotor('AB', 20)
            pause(1.5)
            brick.StopMotor('AB')
            brick.ResetMotorAngle('B');
			brick.MoveMotorAngleRel('B', 20, -370, 'Brake')
            brick.WaitForMotor('B')
        end
			
		color = brick.ColorCode(1);
		distance = brick.UltrasonicDist(2);
        button = brick.TouchPressed(3);

	end

disp('You Have Reached Your Destination');