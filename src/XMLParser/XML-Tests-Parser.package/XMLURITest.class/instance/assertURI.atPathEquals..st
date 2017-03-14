asserting
assertURI: aFirstURI atPathEquals: aSecondURI
	self assert: aFirstURI pathSegments = aSecondURI pathSegments.
	self
		assertURI: aFirstURI
		atQueryEquals: aSecondURI.