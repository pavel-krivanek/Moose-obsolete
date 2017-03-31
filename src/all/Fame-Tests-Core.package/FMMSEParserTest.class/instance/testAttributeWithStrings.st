running
testAttributeWithStrings
	a := #(#(#beginAttribute: 'name') #(#primitive: 'bar') #(#primitive: 'ba') #(#primitive: 'rossa') #(#endAttribute: 'name')).
	r reset.
	p fromString: '(name ''bar'' ''ba'' ''rossa'')'.
	p Attribute.
	r contents should = a.
	p atEnd should beTrue.
	r reset.
	p fromString: '(  name  ''bar''      ''ba''      ''rossa'')  '.
	p Attribute.
	r contents should = a.
	p atEnd should beTrue