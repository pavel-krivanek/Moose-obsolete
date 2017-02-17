running
testValueFloatWithExponent
	r reset.
	p fromString: '1.291e3'.
	p Value.
	r contents should = #(#(#primitive: 1291)).
	p atEnd should beTrue