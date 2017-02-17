tests
testFunctionNamedIfAbsent
	| context |

	context := self newContext.
	self functions do: [:each |
		self assert:
			(context
				functionNamed: each prototypeName
				ifAbsent: [#absent]) == each.
		context removeFunction: each.
		self assert:
			(context
				functionNamed: each prototypeName
				ifAbsent: [#absent]) = #absent].