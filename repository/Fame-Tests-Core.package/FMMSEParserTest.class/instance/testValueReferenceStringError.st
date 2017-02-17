running
testValueReferenceStringError
	r reset.
	p fromString: '(ref: ''String'')'.
	self 
		should: [ p Value ]
		raise: FMSyntaxError