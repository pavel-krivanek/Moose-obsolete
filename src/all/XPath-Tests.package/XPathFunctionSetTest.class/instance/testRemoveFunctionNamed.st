tests
testRemoveFunctionNamed
	| set |

	set := self setWithElements.
	self setElements do: [:each |
		self
			assert: (set removeFunctionNamed: each prototypeName) == each;
			deny: (set includes: each).
		self
			should: [set removeFunctionNamed: each prototypeName]
			raise: Error].
	self assert: set isEmpty.