running
testElementWithID
	a := #(#(#beginElement: 'Foo') #(#serial: 42) #(#endElement: 'Foo')).
	r reset.
	p fromString: '(Foo(id:42))'.
	p Element.
	r contents should = a.
	p atEnd should beTrue.
	r reset.
	p fromString: '(  Foo  (  id:  42  )  )  '.
	p Element.
	r contents should = a.
	p atEnd should beTrue