running
testFullName2
	p fromString: 'Foo.Bar'.
	r := p tFULLNAME.
	r should = 'Foo.Bar'.
	p atEnd should beTrue.
	p fromString: 'A.b'.
	r := p tFULLNAME.
	r should = 'A.b'.
	p atEnd should beTrue