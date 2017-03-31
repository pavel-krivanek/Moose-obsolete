running
testFullName3
	p fromString: 'Foo.Bar.Qux'.
	r := p tFULLNAME.
	r should = 'Foo.Bar.Qux'.
	p atEnd should beTrue.
	p fromString: 'A.b.q'.
	r := p tFULLNAME.
	r should = 'A.b.q'.
	p atEnd should beTrue