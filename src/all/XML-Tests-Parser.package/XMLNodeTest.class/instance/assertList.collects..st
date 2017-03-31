assertions
assertList: aList collects: aSecondList
	self
		assert: aList = aSecondList;
		assert: aList class == self collectListClass.