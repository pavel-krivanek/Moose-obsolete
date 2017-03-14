running
testNumberTrailingLetterFails
	p fromString: '12.11e'.
	self 
		should: [ p Number ]
		raise: Error