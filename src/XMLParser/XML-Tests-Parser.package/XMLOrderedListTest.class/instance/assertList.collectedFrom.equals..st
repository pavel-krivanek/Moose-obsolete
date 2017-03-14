assertions
assertList: aList collectedFrom: aSecondList equals: aThirdList
	self
		assert: aList = aThirdList;
		assert: aList class = aSecondList species;
		deny: aList == aSecondList;
		deny: aList collection == aSecondList collection