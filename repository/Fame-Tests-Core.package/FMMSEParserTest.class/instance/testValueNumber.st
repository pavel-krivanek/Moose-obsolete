running
testValueNumber
	r reset.
	p fromString: '13'.
	p Value.
	r contents should = #(#(#primitive: 13)).
	p atEnd should beTrue