tests
testResolvePrefixIfUnresolvable
	| element |

	element := self newNode.
	self namespaces keysAndValuesDo: [:prefix :uri |
		self assert:
			(element
				resolvePrefix: prefix
				ifUnresolvable: [#absent]) = #absent.
		element declarePrefix: prefix uri: uri.
		self assert:
			(element
				resolvePrefix: prefix
				ifUnresolvable: [self fail]) = uri].

	self assert:
		(element
			resolvePrefix: 'xml'
			ifUnresolvable: [self fail]) = XMLNamespaceScope xmlNamespaceURI.
	
	self assert:
		(element
			resolvePrefix: 'xmlns'
			ifUnresolvable: [self fail]) = XMLNamespaceScope xmlnsNamespaceURI.