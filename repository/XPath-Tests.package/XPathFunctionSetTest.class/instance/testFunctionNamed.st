tests
testFunctionNamed
	| set |

	set := self setWithElements.
	self setElements do: [:each |
		self assert: (set functionNamed: each prototypeName) == each].

	self
		shouldnt: [set functionNamed: self absentSetElement prototypeName]
		raise: Error.
	self assert: (set functionNamed: self absentSetElement prototypeName) isNil.