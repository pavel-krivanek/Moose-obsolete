tests
testPlusFunction
	| set |

	set := self setWithElements.
	self setElements do: [:each |
		self
			should: [set + each]
			add: each
			and: set
			equaling: self setWithElements].

	set := self setWithElements.
	self disjointSetElements do: [:each |
		self
			should: [set + each]
			add: each
			and: set
			equaling: (self setClass newFrom: (self setElements copyWith: each))].

	self assert:
		(self setElements first + self setElements second) =
			(self setClass
				with: self setElements first
				with: self setElements second).

	self assert:
		(self setElements first + self setElements first) =
			(self setClass with: self setElements first).