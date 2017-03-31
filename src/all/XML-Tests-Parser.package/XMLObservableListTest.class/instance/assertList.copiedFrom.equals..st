assertions
assertList: aFirstList copiedFrom: aSecondList equals: aThirdList
	super
		assertList: aFirstList
		copiedFrom: aSecondList
		equals: aThirdList.
	self
		denyList: aFirstList
		sharesObserverWith: aSecondList.