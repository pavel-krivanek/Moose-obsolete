tests
testIncludesFunction
	| context |

	context := self newContext.
	self functions do: [:each |
		self assert: (context includesFunction: each).
		context removeFunction: each.
		self deny: (context includesFunction: each)].