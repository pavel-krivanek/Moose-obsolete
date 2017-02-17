running
testValueFloatError2
	r reset.
	p fromString: '1..2'.
	self 
		should: [ p Value ]
		raise: FMSyntaxError