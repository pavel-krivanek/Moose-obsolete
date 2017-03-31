instance creation
newElementWithAttributes
	^ (XMLElement named: 'test')
		attributeAt: 'one' put: '1';
		attributeAt: 'two' put: '2';
		attributeAt: 'three' put: '3';
		yourself