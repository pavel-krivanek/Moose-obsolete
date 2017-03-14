tests
testVariableAt
	| context |

	context := self newContext.
	self variables keysAndValuesDo: [:key :value |
		self assert: (context variableAt: key) isNil.
		context
			variableAt: key
			put: value.
		self assert: (context variableAt: key) = value].