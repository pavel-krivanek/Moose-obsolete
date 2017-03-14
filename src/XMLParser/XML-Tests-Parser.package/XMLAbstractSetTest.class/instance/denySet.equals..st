asserting
denySet: aFirstSet equals: aSecondSet
	self
		deny: aFirstSet = aSecondSet;
		deny: aFirstSet == aSecondSet;
		deny: aSecondSet = aFirstSet;
		deny: aSecondSet == aFirstSet