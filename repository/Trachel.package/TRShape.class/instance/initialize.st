initialization
initialize
	super initialize.
	color := Color gray.
	strokePaint := Color black.
	matrix := TRPlatform current affineTransformClass new.
	rotationAngleDegrees := 0.
	self position: 0 @ 0.
	session := TRPlatform current session.