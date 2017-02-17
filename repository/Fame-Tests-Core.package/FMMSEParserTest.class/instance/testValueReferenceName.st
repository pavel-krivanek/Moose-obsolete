running
testValueReferenceName
	r reset.
	p fromString: '(ref: Foo)'.
	p Value.
	r contents should = #(#(#referenceName: 'Foo')).
	p atEnd should beTrue