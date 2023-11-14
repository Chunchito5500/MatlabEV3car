global key
InitKeyboard();

while 1
	pause(0.1);
	switch key
		case 'w'
			brick.MoveMotor('AB', 20)
		case 'f'
			brick.MoveMotor('AB', -20)
        case 's'
            brick.StopMotor('AB')
        case 'a'
			brick.MoveMotor('B', 20)
		case 'd'
			brick.MoveMotor('A', 20)
        case 'p'
            brick.MoveMotorAngleAbs('C',5,10,'Coast')
		case '0'
			disp('No Key Pressed!');
        case 'u'
            brick.MoveMotor('AB', -100)
        case 'l'
            brick.StopMotor('C')
            brick.MoveMotorAngleAbs('C',5,-10,'Coast')
		case 'q'
			Break;
	end
end
CloseKeyboard();