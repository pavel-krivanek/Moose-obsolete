tests
testHasNamespaceURI
	| element |

	element := self nodeClass named: 'test'.
	self deny: element hasNamespaceURI.

	element defaultNamespace: 'defaultNS'.
	self assert: element hasNamespaceURI.

	element defaultNamespace: ''.
	self deny: element hasNamespaceURI.

	element name: 'prefix:test' namespaceURI: 'prefixNS'.
	self assert: element hasNamespaceURI.

	element name: 'test'.
	self deny: element hasNamespaceURI.