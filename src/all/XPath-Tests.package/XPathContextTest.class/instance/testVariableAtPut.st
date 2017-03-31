tests
testVariableAtPut
	| context |

	context := self newContext.
	self variables keysAndValuesDo: [:key :value |
		self assert:
			(context
				variableAt: key
				put: value) = value.
		self assert: (context variableAt: key) = value].