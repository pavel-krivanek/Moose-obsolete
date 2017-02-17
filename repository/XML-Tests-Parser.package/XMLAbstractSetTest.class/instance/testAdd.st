tests
testAdd
	| set |

	set := self emptySet.
	self setElements do: [:each |
		self
			assert: (set add: each) == each;
			assert: (set includes: each)].
	self
		assert: set = self setWithElements;
		assert: (self setElements allSatisfy: [:each | (set add: each) == each]);
		assert: set = self setWithElements.