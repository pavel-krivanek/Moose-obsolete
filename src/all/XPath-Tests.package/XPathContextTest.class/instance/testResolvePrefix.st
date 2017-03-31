tests
testResolvePrefix
	| context |

	context := self newContext.
	self namespaces keysAndValuesDo: [:key :value |
		self assert: (context resolvePrefix: key) = ''.
		context
			declarePrefix: key
			uri: value.
		self assert: (context resolvePrefix: key) = value].

	self assert:
		(context resolvePrefix: 'xml') = XMLNamespaceScope xmlNamespaceURI.
	
	self assert:
		(context resolvePrefix: 'xmlns') = XMLNamespaceScope xmlnsNamespaceURI.