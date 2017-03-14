running
testValueReferenceBigInteger
	r reset.
	p fromString: '(ref: 112233445566778899)'.
	p Value.
	r contents should = #(#(#referenceNumber: 112233445566778899)).
	p atEnd should beTrue