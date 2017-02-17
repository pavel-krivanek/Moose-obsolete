tests
testHasNamespaceURI
	| element attribute |

	attribute := self nodeClass name: 'test' value: ''.
	self deny: attribute hasNamespaceURI.

	element :=
		self elementClass
			name: 'test'
			namespaceURI: 'defaultNS'.
	element attributeNodes add: attribute.
	self deny: attribute hasNamespaceURI.

	element
		declarePrefix: 'prefix'
		uri: 'prefixNS'.
	attribute name: 'prefix:test'.
	self assert: attribute hasNamespaceURI.

	attribute name: 'test'.
	self deny: attribute hasNamespaceURI.