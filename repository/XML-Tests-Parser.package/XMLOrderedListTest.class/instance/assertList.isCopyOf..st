assertions
assertList: aList isCopyOf: aSecondList
	self
		assert: aList = aSecondList;
		assert: aList class == self listCopyClass;
		assert: aList collection class == aSecondList collection class;
		assert: aList collection = aSecondList collection;
		deny: aList == aSecondList;
		deny: aList collection == aSecondList collection