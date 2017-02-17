tests
testExpandedName
	| element |

	element := self nodeClass named: 'test'.
	self assert: (element expandedName = 'test').

	element defaultNamespace: 'defaultNS'.
	self assert: (element expandedName = 'Q{defaultNS}test').

	element name: 'prefix:test' namespaceURI: 'prefixNS'.
	self assert: (element expandedName = 'Q{prefixNS}test').

	element
		defaultNamespace: '';
		name: 'test'.
	self assert: (element expandedName = 'test').