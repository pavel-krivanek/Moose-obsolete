selector testing
isTest: aSelector

	^ (aSelector includesSubstring: 'should' caseSensitive: false) and: [
	    aSelector numArgs isZero].