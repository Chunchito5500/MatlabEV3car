color = brick.ColorCode(1);
distance = brick.UltrasonicDist(2);
button = brick.TouchPressed(3);

	while color ~= 3    %Green

		pause(0.2);

		if ((color == 1) || (color == 4))     %Black Or Yellow
			brick.MoveMotor('AB', 50);
		end

		if color == 5     %Red
			brick.StopMotor('AB')
            pause(3);
            brick.MoveMotor('AB', 50)
			pause(1);
		end

		if distance >= 40     %If car is 30 or less centimeters from a wall
			brick.StopMotor('AB')
			pause(1);
			brick.MoveMotor('B', 30)
			pause(3);
			brick.StopMotor('B')
		end

		if button %if button was pressed
			brick.StopMotor('AB')
			pause(1);
			brick.MoveMotor('AB', -20)
			pause(0.5);
			brick.StopMotor('AB')
			pause(1);
			brick.MoveMotor('A', 30)
			pause(2.1);
			brick.StopMotor('A')
			pause(1);
		end
			
		color = brick.ColorCode(1);
		distance = brick.UltrasonicDist(2);
        button = brick.TouchPressed(3);

	end

disp('You Have Reached Your Destination');
