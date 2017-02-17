running
testAttributeWithBoolean
	a := #(#(#beginAttribute: 'name') #(#primitive: true) #(#primitive: false) #(#endAttribute: 'name')).
	r reset.
	p fromString: '(name true false)'.
	p Attribute.
	r contents should = a.
	p atEnd should beTrue.
	r reset.
	p fromString: '(  name   true   false  )  '.
	p Attribute.
	r contents should = a.
	p atEnd should beTrue