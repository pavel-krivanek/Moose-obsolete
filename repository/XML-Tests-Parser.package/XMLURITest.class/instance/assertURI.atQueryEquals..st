asserting
assertURI: aFirstURI atQueryEquals: aSecondURI
	self
		assert: aFirstURI query = aSecondURI query;
		assert: aFirstURI fragment = aSecondURI fragment