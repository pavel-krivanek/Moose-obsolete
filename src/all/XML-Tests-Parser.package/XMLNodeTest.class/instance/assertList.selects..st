assertions
assertList: aList selects: aSecondList
	self
		assert: aList = aSecondList;
		assert: aList class == self selectListClass.