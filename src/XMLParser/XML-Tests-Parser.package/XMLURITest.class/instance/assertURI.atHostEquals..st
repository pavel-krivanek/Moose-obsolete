asserting
assertURI: aFirstURI atHostEquals: aSecondURI
	self assert: aFirstURI host = aSecondURI host.
	self
		assertURI: aFirstURI
		atPortEquals: aSecondURI.