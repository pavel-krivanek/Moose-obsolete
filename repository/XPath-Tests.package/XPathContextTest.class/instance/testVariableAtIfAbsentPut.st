tests
testVariableAtIfAbsentPut
	| context |

	context := self newContext.
	self variables keysAndValuesDo: [:key :value |
		self assert:
			(context
				variableAt: key
				ifAbsentPut: [value]) = value.
		self assert: (context variableAt: key) = value.
		self assert:
			(context
				variableAt: key
				ifAbsentPut: [#new]) = value.
		self assert: (context variableAt: key) = value].