running
testFullName
	p fromString: 'Foo'.
	r := p tFULLNAME.
	r should = 'Foo'.
	p atEnd should beTrue.
	p fromString: 'A'.
	r := p tFULLNAME.
	r should = 'A'.
	p atEnd should beTrue