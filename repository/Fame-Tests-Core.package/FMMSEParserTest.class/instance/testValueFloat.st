running
testValueFloat
	r reset.
	p fromString: '3.14'.
	p Value.
	r contents should = #(#(#primitive: 3.14)).
	p atEnd should beTrue