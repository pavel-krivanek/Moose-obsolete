running
testElement
	a := #(#(#beginElement: 'Foo') #(#endElement: 'Foo')).
	r reset.
	p fromString: '(Foo)'.
	p Element.
	r contents should = a.
	p atEnd should beTrue.
	r reset.
	p fromString: '(  Foo  )  '.
	p Element.
	r contents should = a.
	p atEnd should beTrue