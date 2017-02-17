support
assert: set noneMatches: string
	self assert: (set noneSatisfy: [:e | e end matches: string])