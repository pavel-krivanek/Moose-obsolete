tests
testClose
	self assert:
		(String streamContents: [:stream |
			(XMLWriter on: stream)
				tag: 'one';
				tag: 'two';
				close]) = '<one /><two />'.
	self assert:
		(String streamContents: [:stream |
			((XMLWriter on: stream)
				tag: 'one';
				tag: 'two') close]) = '<one /><two />'.