tests
testIncludesVariable
	| context |

	context := self newContext.
	self variables keysAndValuesDo: [:key :value |
		self deny: (context includesVariable: key).
		context
			variableAt: key
			put: value.
		self assert: (context includesVariable: key)].