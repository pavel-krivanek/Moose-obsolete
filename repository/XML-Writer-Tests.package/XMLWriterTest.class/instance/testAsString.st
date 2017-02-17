tests
testAsString
	self assert:
		(XMLWriter new
			tag: 'one';
			tag: 'two';
			asString) = '<one /><two />'.
	self assert:
		(XMLWriter new
			tag: 'one';
			tag: 'two') asString = '<one /><two />'.