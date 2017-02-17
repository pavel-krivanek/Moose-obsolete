support
assert: set anyMatches: string
	self assert: (set anySatisfy: [:e | e end matches: string])