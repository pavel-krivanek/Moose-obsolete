running
testNumber
	p fromString: '14'.
	r := p Number.
	r should = 14.
	p atEnd should beTrue.
	p fromString: '-23x'.
	r := p Number.
	r should = -23.
	p peek should = $x.
	p fromString: '1'.
	r := p Number.
	r should = 1.
	p atEnd should beTrue.
	p fromString: '-1'.
	r := p Number.
	r should = -1.
	p atEnd should beTrue