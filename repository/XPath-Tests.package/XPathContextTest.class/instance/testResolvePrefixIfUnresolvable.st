tests
testResolvePrefixIfUnresolvable
	| context |

	context := self newContext.
	self namespaces keysAndValuesDo: [:key :value |
		self assert:
			(context
				resolvePrefix: key
				ifUnresolvable: [#absent]) = #absent.
		context
			declarePrefix: key
			uri: value.
		self assert:
			(context
				resolvePrefix: key
				ifUnresolvable: [#absent]) = value].

	self assert:
		(context
			resolvePrefix: 'xml'
			ifUnresolvable: [#absent]) = XMLNamespaceScope xmlNamespaceURI.
	
	self assert:
		(context
			resolvePrefix: 'xmlns'
			ifUnresolvable: [#absent]) = XMLNamespaceScope xmlnsNamespaceURI.