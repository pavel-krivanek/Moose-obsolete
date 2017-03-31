support
assert: set allMatches: string
	self assert: (set allSatisfy: [:e | e end matches: string])