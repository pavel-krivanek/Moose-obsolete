tests
testResolvePrefixIfUnresolvable
	| element attribute|

	element := self newElementWithAttributes.
	attribute := element attributeNodes first.
	self namespaces keysAndValuesDo: [:prefix :uri |
		prefix = ''
			ifTrue: [
				"no default namespace for attributes"
				self assert:
					(attribute
						resolvePrefix: prefix
						ifUnresolvable: ['unresolvable']) = 'unresolvable']
			ifFalse: [
				self assert:
					(attribute
						resolvePrefix: prefix
						ifUnresolvable: [self fail]) = uri]].

	self assert:
		(attribute
			resolvePrefix: 'xml'
			ifUnresolvable: [self fail]) = XMLNamespaceScope xmlNamespaceURI.
	self  assert:
		(attribute
			resolvePrefix: 'xmlns'
			ifUnresolvable: [self fail]) = XMLNamespaceScope xmlnsNamespaceURI.