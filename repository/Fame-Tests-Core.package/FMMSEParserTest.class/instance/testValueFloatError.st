running
testValueFloatError
	r reset.
	p fromString: '3.14e$'.
	self 
		should: [ p Value ]
		raise: FMSyntaxError