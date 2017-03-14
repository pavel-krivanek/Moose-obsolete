running
testAttributeWithElements
	a := #(#(#beginAttribute: 'name') #(#beginElement: 'Foo') #(#endElement: 'Foo') #(#beginElement: 'Bar') #(#endElement: 'Bar') #(#endAttribute: 'name')).
	r reset.
	p fromString: '(name(Foo)(Bar))'.
	p Attribute.
	r contents should = a.
	p atEnd should beTrue.
	r reset.
	p fromString: '(  name  (  Foo  )  (  Bar  )     )  '.
	p Attribute.
	r contents should = a.
	p atEnd should beTrue