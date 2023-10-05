brick.MoveMotor('AB', 50)
brick.StopMotor('AB', Brake)
brick.ResetMotorAngle('B');
brick.MoveMotorAngleAbs('B', 25, 90, 'Brake');
brick.WaitForMotor('B');
brick.MoveMotor('AB', 50)

