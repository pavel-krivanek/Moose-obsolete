running
testElementWithAttributesAndID
	a := #(#(#beginElement: 'Foo') #(#serial: 42) #(#beginAttribute: 'name') #(#endAttribute: 'name') #(#beginAttribute: 'count') #(#endAttribute: 'count') #(#endElement: 'Foo')).
	r reset.
	p fromString: '(Foo(id:42)(name)(count))'.
	p Element.
	r contents should = a.
	p atEnd should beTrue.
	r reset.
	p fromString: '(  Foo  (  id:  42  )  (  name  )  (  count  )  )  '.
	p Element.
	r contents should = a.
	p atEnd should beTrue