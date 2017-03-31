tests
testIsNamed
	| element |

	element := self nodeClass named: 'one'.
	self
		assert: (element isNamed: 'one');
		deny: (element isNamed: 'two').

	element name: 'one:two' namespaceURI: 'testNS'.
	self
		assert: (element isNamed: 'one:two');
		assert: (element isNamed: 'two');
		deny: (element isNamed: 'one').