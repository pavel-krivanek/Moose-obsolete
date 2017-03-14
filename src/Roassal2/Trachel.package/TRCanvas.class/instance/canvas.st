events
canvas
	session == TRPlatform current session
		ifFalse: [ 
			canvas := TRPlatform current surfaceClass extent: extent asIntegerPoint.
			session := TRPlatform current session ].
	^ canvas