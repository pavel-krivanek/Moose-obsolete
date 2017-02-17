session management
createSurface
	surface := AthensCairoSurface extent: self extent asIntegerPoint.
	session := Smalltalk session.