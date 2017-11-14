tests
testResolvePrefixIfUnresolvable
	| context |

	context := self newContext.
	self namespaces keysAndValuesDo: [:key :value |
		self assert:
			(context
				resolvePrefix: key
				ifUnresolvable: ['unresolvable']) = 'unresolvable'.
		context
			declarePrefix: key
			uri: value.
		self assert:
			(context
				resolvePrefix: key
				ifUnresolvable: [self fail]) = value].

	self assert:
		(context
			resolvePrefix: 'xml'
			ifUnresolvable: [self fail]) = XMLNamespaceScope xmlNamespaceURI.
	self assert:
		(context
			resolvePrefix: 'xmlns'
			ifUnresolvable: [self fail]) = XMLNamespaceScope xmlnsNamespaceURI.