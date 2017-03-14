running
testAttributeWithReferences
	a := #(#(#beginAttribute: 'name') #(#referenceNumber: 2) #(#referenceNumber: 3) #(#endAttribute: 'name')).
	r reset.
	p fromString: '(name(ref:2)(ref:3))'.
	p Attribute.
	r contents should = a.
	p atEnd should beTrue.
	r reset.
	p fromString: '(  name  (  ref:  2  )  (  ref:  3  )     )  '.
	p Attribute.
	r contents should = a.
	p atEnd should beTrue