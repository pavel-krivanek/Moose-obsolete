public - moving
moveAtTheBottomRightOfTheWindow: trachelShape
	"Worked only for fixed shape"
	| windowSize |
	trachelShape canvas ifNil: [ ^ self ].
	windowSize := trachelShape canvas extent.
	trachelShape
		translateTo: (windowSize x - (trachelShape width / 2)) @ (windowSize y - (trachelShape height / 2))