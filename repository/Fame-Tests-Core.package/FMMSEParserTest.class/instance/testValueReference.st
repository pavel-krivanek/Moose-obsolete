running
testValueReference
	r reset.
	p fromString: '(ref: 24)'.
	p Value.
	r contents should = #(#(#referenceNumber: 24)).
	p atEnd should beTrue