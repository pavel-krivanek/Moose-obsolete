asserting
assertURI: aFirstURI atUserInfoEquals: aSecondURI
	self  assert: aFirstURI userInfo = aSecondURI userInfo.
	self
		assertURI: aFirstURI
		atHostEquals: aSecondURI.