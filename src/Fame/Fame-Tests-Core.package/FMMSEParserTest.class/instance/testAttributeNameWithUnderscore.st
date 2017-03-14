running
testAttributeNameWithUnderscore
	a := #(#(#beginAttribute: 'name_with_underscore') #(#endAttribute: 'name_with_underscore')).
	r reset.
	p fromString: '(name_with_underscore)'.
	p Attribute.
	r contents should = a.
	p atEnd should beTrue.
	r reset.
	p fromString: '(  name_with_underscore  )  '.
	p Attribute.
	r contents should = a.
	p atEnd should beTrue