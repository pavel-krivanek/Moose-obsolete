tests
testIsDeclaredPrefix
	| context |

	context := self newContext.
	self namespaces keysAndValuesDo: [:key :value |
		self deny: (context isDeclaredPrefix: key).
		context
			declarePrefix: key
			uri: value.
		self assert: (context isDeclaredPrefix: key)].