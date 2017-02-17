assertions
assertList: aFirstList equals: aSecondList
	self
		assert: aFirstList = aFirstList;
		assert: aSecondList = aSecondList;
		assert: aFirstList = aSecondList;
		assert: aSecondList = aFirstList