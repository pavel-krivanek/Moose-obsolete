running
testAttribute
	a := #(#(#beginAttribute: 'name') #(#endAttribute: 'name')).
	r reset.
	p fromString: '(name)'.
	p Attribute.
	r contents should = a.
	p atEnd should beTrue.
	r reset.
	p fromString: '(  name  )  '.
	p Attribute.
	r contents should = a.
	p atEnd should beTrue