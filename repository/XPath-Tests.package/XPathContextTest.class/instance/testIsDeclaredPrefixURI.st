tests
testIsDeclaredPrefixURI
	| context |

	context := self newContext.
	self namespaces keysAndValuesDo: [:key :value |
		self deny:
			(context
				isDeclaredPrefix: key
				uri: value).
		context
			declarePrefix: key
			uri: value.
		self assert:
			(context
				isDeclaredPrefix: key
				uri: value).
		self deny:
			(context
				isDeclaredPrefix: key
				uri: 'newNS')].