running
testElementWithAttributes
	a := #(#(#beginElement: 'Foo') #(#beginAttribute: 'name') #(#endAttribute: 'name') #(#beginAttribute: 'count') #(#endAttribute: 'count') #(#endElement: 'Foo')).
	r reset.
	p fromString: '(Foo(name)(count))'.
	p Element.
	r contents should = a.
	p atEnd should beTrue.
	r reset.
	p fromString: '(  Foo  (  name  )  (  count  )  )  '.
	p Element.
	r contents should = a.
	p atEnd should beTrue