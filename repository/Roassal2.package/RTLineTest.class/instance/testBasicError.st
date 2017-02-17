tests
testBasicError

	| arrow |
	arrow := RTArrowedLine new
			color: Color red;
			edgeFrom: RTElement new to: RTElement new;
			withOffsetIfMultiple.
	self should: [ arrow element ] raise: Error