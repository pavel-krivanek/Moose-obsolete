running
testFullNameTrailingDotFails
	p fromString: 'Foo.'.
	self 
		should: [ p tFULLNAME ]
		raise: Error