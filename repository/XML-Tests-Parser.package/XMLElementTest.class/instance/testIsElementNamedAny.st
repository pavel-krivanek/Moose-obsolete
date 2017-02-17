tests
testIsElementNamedAny
	| element |

	element := self nodeClass named: 'one'.
	self
		assert: (element isElementNamedAny: #('two' 'one' 'three'));
		deny: (element isElementNamedAny: #('two' 'three')).

	element name: 'one:two' namespaceURI: 'testNS'.
	self
		assert: (element isElementNamedAny: #('one' 'one:two' 'three'));
		assert: (element isElementNamedAny: #('one' 'two' 'three'));
		deny: (element isElementNamedAny: #('one' 'three')).