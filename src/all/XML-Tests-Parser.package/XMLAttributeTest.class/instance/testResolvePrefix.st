tests
testResolvePrefix
	| element attribute|

	element := self newElementWithAttributes.
	attribute := element attributeNodes first.
	self namespaces keysAndValuesDo: [:prefix :uri |
		"no default namespace for attributes"
		prefix = ''
			ifTrue: [self assert: (attribute resolvePrefix: prefix) = '']
			ifFalse: [self assert: (attribute resolvePrefix: prefix) = uri]].

	self assert:
		(attribute resolvePrefix: 'xml') = XMLNamespaceScope xmlNamespaceURI.
	self  assert:
		(attribute resolvePrefix: 'xmlns') = XMLNamespaceScope xmlnsNamespaceURI.