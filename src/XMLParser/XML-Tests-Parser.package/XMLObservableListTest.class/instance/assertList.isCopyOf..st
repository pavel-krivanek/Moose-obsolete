assertions
assertList: aFirstList isCopyOf: aSecondList
	super
		assertList: aFirstList
		isCopyOf: aSecondList.
	self
		denyList: aFirstList
		sharesObserverWith: aSecondList.