tests
testOutsideRange
	self should: [ slider value: 10 ] raise: Error.
	self should: [ slider value: -5 ] raise: Error.