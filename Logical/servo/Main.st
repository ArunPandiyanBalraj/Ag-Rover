PROGRAM _INIT
	LeftWheel_F.Enable := TRUE;
	LeftWheel_F.MpLink := ADR(gAxis_1);
	LeftWheel_F.Parameters := ADR(AxisParameters);
	
	LeftWheel_B.Enable := TRUE;
	LeftWheel_B.MpLink := ADR(gAxis_2);
	LeftWheel_B.Parameters := ADR(AxisParameters);
	
	RightWheel_F.Enable := TRUE;
	RightWheel_F.MpLink := ADR(gAxis_3);
	RightWheel_F.Parameters := ADR(AxisParameters);
	
	RightWheel_B.Enable := TRUE;
	RightWheel_B.MpLink := ADR(gAxis_4);
	RightWheel_B.Parameters := ADR(AxisParameters);
END_PROGRAM

PROGRAM _CYCLIC	
	//Front LeftWheel Ingnition	
	IF LeftWheel_F.Info.ReadyToPowerOn = TRUE THEN
		LeftWheel_F.Power := TRUE;
	END_IF
	IF LeftWheel_F.PowerOn = TRUE THEN
		LeftWheel_F.Home := TRUE;
	END_IF
	IF LeftWheel_F.IsHomed = TRUE THEN
		LeftWheel_F.MoveVelocity := TRUE;
	END_IF
	//Back LeftWheel Ingnition	
	IF LeftWheel_F.Info.ReadyToPowerOn = TRUE THEN
		LeftWheel_F.Power := TRUE;
	END_IF
	IF LeftWheel_F.PowerOn = TRUE THEN
		LeftWheel_F.Home := TRUE;
	END_IF
	IF LeftWheel_F.IsHomed = TRUE THEN
		LeftWheel_F.MoveVelocity := TRUE;
	END_IF
	//Front RightWheel Ingnition	
	IF LeftWheel_F.Info.ReadyToPowerOn = TRUE THEN
		LeftWheel_F.Power := TRUE;
	END_IF
	IF LeftWheel_F.PowerOn = TRUE THEN
		LeftWheel_F.Home := TRUE;
	END_IF
	IF LeftWheel_F.IsHomed = TRUE THEN
		LeftWheel_F.MoveVelocity := TRUE;
	END_IF
	//Back RightWheel Ingnition	
	IF LeftWheel_F.Info.ReadyToPowerOn = TRUE THEN
		LeftWheel_F.Power := TRUE;
	END_IF
	IF LeftWheel_F.PowerOn = TRUE THEN
		LeftWheel_F.Home := TRUE;
	END_IF
	
	IF LeftWheel_F.IsHomed = TRUE THEN
		LeftWheel_F.MoveVelocity := TRUE;
	END_IF
		
	(*LeftWheel_F.MoveVelocity := TRUE;
	LeftWheel_B.MoveVelocity := TRUE;
	RightWheel_F.MoveVelocity := TRUE;
	RightWheel_B.MoveVelocity := TRUE;*)
	
	//Robot Identification
	IF KEY = TRUE THEN
		Buzzer := TRUE;
	ELSE
		Buzzer := FALSE;
	END_IF
	
	//Robot Turning
	IF Proximity_1 = 1 AND NOT State THEN
		Counter := Counter+1;
		Pump := FALSE;
		Row := Counter MOD 2;
		State := Proximity_1;
		(*IF Row = 0 THEN
			LeftWheel_F.MpLink := ADR(gAxis_1);
			LeftWheel_F.MoveVelocity := FALSE;
			LeftWheel_F.Parameters := ADR(AxisParameters);
			LeftWheel_F();
			
			LeftWheel_B.MpLink := ADR(gAxis_2);
			LeftWheel_B.MoveVelocity := FALSE;
			LeftWheel_B.Parameters := ADR(AxisParameters);
			LeftWheel_B();
		
		ELSE
			
			RightWheel_F.MpLink := ADR(gAxis_3);
			RightWheel_F.MoveVelocity := FALSE;
			RightWheel_F.Parameters := ADR(AxisParameters);
			RightWheel_F();
			
			RightWheel_B.MpLink := ADR(gAxis_4);
			RightWheel_B.MoveVelocity := FALSE;
			RightWheel_B.Parameters := ADR(AxisParameters);
			RightWheel_B();
		END_IF*)
	END_IF
	//Left Sensor
	IF Right_Proximity = 1 THEN
		Right_Solenoid := FALSE;
		RightAct := TRUE;
	ELSE
		Right_Solenoid := TRUE;
		RightAct := FALSE;
	END_IF
		
	//Right Sensor
	IF Left_Proximity = 1 THEN
		Left_Solenoid := FALSE;
		LeftAct := TRUE;
	ELSE
		Left_Solenoid := TRUE;
		LeftAct := FALSE;
	END_IF
	
	//Floatsensor value Float1 Float2
	IF 	FloatSensor<3 AND FloatSensor>1 THEN
		Float_1:=TRUE;
		Float_2:=FALSE;
	ELSIF FloatSensor<1 THEN
		Float_2:=TRUE;
		Float_1:=TRUE;
	ELSE
		Float_1:=FALSE;
		Float_2:=FALSE;
	END_IF;
	
	LeftWheel_F();
	LeftWheel_B();
	RightWheel_F();	
	RightWheel_B();
	END_PROGRAM

PROGRAM _EXIT
	(*LeftWheel_F.Power  := FALSE;
	LeftWheel_F.Home   := FALSE;
	LeftWheel_F.MoveAbsolute := FALSE;
	LeftWheel_F.MoveAdditive := FALSE;
	LeftWheel_F.MoveVelocity := FALSE;
	LeftWheel_F.Stop         := FALSE;
	LeftWheel_F.ErrorReset   := FALSE;
	LeftWheel_F();*)
END_PROGRAM