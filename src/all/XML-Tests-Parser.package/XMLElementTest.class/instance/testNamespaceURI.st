tests
testNamespaceURI
	| element |

	element := self newNode.
	self assert: element namespaceURI = ''.

	element defaultNamespace: 'defaultNS'.
	self assert: element namespaceURI = 'defaultNS'.

	element
		name: 'prefix:test'
		namespaceURI: 'prefixNS'.
	self assert: element namespaceURI = 'prefixNS'.
	
	element
		defaultNamespace: '';
		name: 'test'.
	self assert: element namespaceURI = ''.