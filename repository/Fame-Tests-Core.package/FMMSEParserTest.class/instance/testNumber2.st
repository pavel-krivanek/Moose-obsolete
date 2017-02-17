running
testNumber2
	p fromString: '12.91'.
	r := p Number.
	p atEnd should beTrue.
	r should = 12.91.
	p fromString: '-47.11'.
	r := p Number.
	r should = -47.11.
	p atEnd should beTrue.
	p fromString: '1.1'.
	r := p Number.
	r should = 1.1.
	p atEnd should beTrue.
	p fromString: '-1.1'.
	r := p Number.
	r should = -1.1.
	p atEnd should beTrue