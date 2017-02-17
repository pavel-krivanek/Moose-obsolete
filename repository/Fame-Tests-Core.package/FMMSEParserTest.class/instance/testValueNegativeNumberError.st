running
testValueNegativeNumberError
	r reset.
	p fromString: '--42'.
	p Value.
	r contents isEmpty should beTrue.
	p pos should = 1