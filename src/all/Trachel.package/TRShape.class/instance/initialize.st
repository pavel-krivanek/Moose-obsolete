initialization
initialize
	super initialize.
	color := self theme transformColor: Color gray.
	strokePaint := self theme transformColor: Color black.
	matrix := TRPlatform current affineTransformClass new.
	rotationAngleDegrees := 0.
	self position: 0 @ 0.
	session := TRPlatform current session.