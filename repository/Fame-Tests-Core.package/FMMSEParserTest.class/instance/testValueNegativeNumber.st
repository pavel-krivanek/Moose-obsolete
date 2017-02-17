running
testValueNegativeNumber
	r reset.
	p fromString: '-42'.
	p Value.
	r contents should = #(#(#primitive: -42)).
	p atEnd should beTrue