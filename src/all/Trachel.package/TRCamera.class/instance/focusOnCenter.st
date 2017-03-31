actions
focusOnCenter
	"Do nothing if no shape are present."

	canvas numberOfShapes = 0
		ifTrue: [ ^ self ].
	"Need to get the center by ourselves since Rectangle>>center truncate the result."
	"However convert to float point, because FFI down the line (AthensCairoMatrix>>translateX:Y:) cannot coerce Fraction. It could be converted there instead, but this is the only place I have ever encountered the problem in, so maybe don't do needless conversions all the time."
	self
		translateTo: (self encompassingRectangle in: [ :eR | (eR topLeft + eR bottomRight) / 2 ]) asFloatPoint