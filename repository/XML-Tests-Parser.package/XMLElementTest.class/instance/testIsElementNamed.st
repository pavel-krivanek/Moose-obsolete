tests
testIsElementNamed
	| element |

	element := self nodeClass named: 'one'.
	self
		assert: (element isElementNamed: 'one');
		deny: (element isElementNamed: 'two').
	
	element name: 'one:two' namespaceURI: 'testNS'.
	self
		assert: (element isElementNamed: 'one:two');
		assert: (element isElementNamed: 'two');
		deny: (element isElementNamed: 'one').