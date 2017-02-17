tests
testFunctionNamed
	| context |

	context := self newContext.
	self functions do: [:each |
		self assert: (context functionNamed: each prototypeName) == each.
		context removeFunction: each.
		self assert: (context functionNamed: each prototypeName) isNil].