tests
testMinusFunction
	| set |

	set := self setWithElements.
	self setElements do: [:each |
		self
			should: [set - each]
			subtract: each
			from: set
			equaling: (self setClass newFrom: (self setElements copyWithout: each))].

	self disjointSetElements do: [:each |
		self
			should: [set - each]
			subtract: each
			from: set
			equaling: self setWithElements].

	self assert:
		(self setElements first - self setElements second) =
			(self setClass with: self setElements first).
	self assert:
		(self setElements first - self setElements first) =
			self emptySet.