tests
testContents
	self assert:
		(XMLWriter new
			tag: 'one';
			tag: 'two';
			contents) = '<one /><two />'.
	self assert:
		(XMLWriter new
			tag: 'one';
			tag: 'two') contents = '<one /><two />'.