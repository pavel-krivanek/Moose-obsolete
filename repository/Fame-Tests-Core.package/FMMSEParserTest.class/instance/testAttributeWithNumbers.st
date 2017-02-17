running
testAttributeWithNumbers
	a := #(#(#beginAttribute: 'name') #(#primitive: 1) #(#primitive: 2) #(#primitive: 3) #(#endAttribute: 'name')).
	r reset.
	p fromString: '(name 1 2 3)'.
	p Attribute.
	r contents should = a.
	p atEnd should beTrue.
	r reset.
	p fromString: '(  name    1    2    3  )  '.
	p Attribute.
	r contents should = a.
	p atEnd should beTrue