running
testMatchString
	p fromString: '''Lorem'''.
	r := p String.
	r should = 'Lorem'.
	p atEnd should beTrue.
	p fromString: '''Eo''ipso'''.
	r := p String.
	r should = 'Eo'.
	p peek should = $i.
	p fromString: '''Eo''''ipso'''.
	r := p String.
	r should = 'Eo''ipso'.
	p atEnd should beTrue