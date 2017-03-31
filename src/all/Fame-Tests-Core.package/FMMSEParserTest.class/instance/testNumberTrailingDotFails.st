running
testNumberTrailingDotFails
	p fromString: '12.'.
	self 
		should: [ p Number ]
		raise: Error