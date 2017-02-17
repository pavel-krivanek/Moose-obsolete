tests
testNamespaceURI
	| element attribute|

	element := self newElement.
	attribute := self newNode.
	element attributeNodes add: attribute.
	self assert: attribute namespaceURI = ''.

	element defaultNamespace: 'defaultNS'.
	self assert: attribute namespaceURI = ''.

	element declarePrefix: 'prefix' uri: 'prefixNS'.
	attribute name: 'prefix:test'.
	self assert: attribute namespaceURI = 'prefixNS'.
	
	attribute name: 'test'.
	self assert: attribute namespaceURI = ''.