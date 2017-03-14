tests
testIncludesFunctionNamed
	| set |

	set := self emptySet.
	self setElements do: [:each |
		self deny: (set includesFunctionNamed: each prototypeName)].

	set := self setWithElements.
	self setElements do: [:each |
		self assert: (set includesFunctionNamed: each prototypeName)].
	self disjointSetElements do: [:each |
		self deny: (set includesFunctionNamed: each prototypeName)].

	set := self setWithDisjointElements.
	self disjointSetElements do: [:each |
		self assert: (set includesFunctionNamed: each prototypeName)].