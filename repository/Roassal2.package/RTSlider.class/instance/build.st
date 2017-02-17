public
build
	| allElements res |
	allElements := view elements.
	res := super build.
	TRConstraint move: sliderElements to: position and: allElements.
	^ res