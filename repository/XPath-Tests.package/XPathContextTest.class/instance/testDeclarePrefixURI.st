tests
testDeclarePrefixURI
	| context |

	context := self newContext.
	self namespaces keysAndValuesDo: [:key :value |
		self assert:
			(context
				declarePrefix: key
				uri: value) == context.
		self assert: (context resolvePrefix: key) = value.
		self assert:
			(context
				declarePrefix: key
				uri: 'newValue') == context.
		self assert: (context resolvePrefix: key) = 'newValue'].