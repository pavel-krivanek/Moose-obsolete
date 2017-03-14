assertions
assertList: aList copiedFrom: aSecondList equals: aThirdList
	self
		assert: aList = aThirdList;
		assert: aList class == self listCopyClass;
		assert: aList collection class == aSecondList collection class;
		deny: aList == aSecondList;
		deny: aList collection == aSecondList collection