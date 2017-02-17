asserting
assertURI: aFirstURI atPortEquals: aSecondURI
	self assert: aFirstURI port = aSecondURI port.
	self
		assertURI: aFirstURI
		atPathEquals: aSecondURI.