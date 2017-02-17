running
testFullNameDotDotFails
	p fromString: 'Foo..Bar'.
	self 
		should: [ p tFULLNAME ]
		raise: Error