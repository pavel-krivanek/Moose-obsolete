tests
testRemoveFunctionNamedIfAbsent
	| set |

	set := self setWithElements.
	self setElements do: [:each |
		self assert:
			(set
				removeFunctionNamed: each prototypeName
				ifAbsent: [self fail]) == each.
		self deny: (set includes: each).
		self
			assert:
				(set
					removeFunctionNamed: each prototypeName
					ifAbsent: [self absentSetElement]) == self absentSetElement].
	self assert: set isEmpty.