running
testNumber3
	p fromString: '12.91e33'.
	r := p Number.
	p atEnd should beTrue.
	r should = 1.291e34.
	p fromString: '-47.11e22'.
	r := p Number.
	r should = -4.711e23.
	p atEnd should beTrue.
	p fromString: '-23.11e-15'.
	r := p Number.
	r should = -2.311e-14.
	p atEnd should beTrue.
	p fromString: '1.1e2'.
	r := p Number.
	r should = 110.0.
	p atEnd should beTrue.
	p fromString: '-1.1e2'.
	r := p Number.
	r should = -110.0.
	p atEnd should beTrue