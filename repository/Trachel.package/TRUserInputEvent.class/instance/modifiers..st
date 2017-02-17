private - accessing
modifiers: modifiers
	commandKeyPressed := modifiers anyMask: 2r01000000.
	controlKeyPressed := modifiers anyMask: 2r00010000.
	optionKeyPressed := modifiers anyMask: 2r00100000.
	shiftKeyPressed := modifiers anyMask: 2r00001000