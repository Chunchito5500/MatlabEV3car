color = brick.ColorCode(1);

	while color ~= 4    %Yellow
		pause(0.5);

		if color == 1     %Black
			disp('Black')
		end

		if color == 2     %Blue
			disp('Blue')
		end

		if color == 3     %Green
			disp('Green')
		end

		if color == 5     %Red
			disp('Red')
		end

		color = brick.ColorCode(1);
	end

disp('You Have Reached Your Destination');
