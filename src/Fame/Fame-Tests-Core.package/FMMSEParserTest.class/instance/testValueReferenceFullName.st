running
testValueReferenceFullName
	r reset.
	p fromString: '(ref: EG.Foo)'.
	p Value.
	r contents should = #(#(#referenceName: 'EG.Foo')).
	p atEnd should beTrue