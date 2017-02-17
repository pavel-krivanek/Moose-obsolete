initialization
initialize
	super initialize.
	self colors: (RTColorPalette qualitative colors: 12 scheme: 'Set3').
	objects := #().
	self defaultColor: Color veryLightGray