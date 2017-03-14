assertions
denyList: aFirstList equals: aSecondList
	self
		deny: aFirstList = aSecondList;
		deny: aSecondList = aFirstList