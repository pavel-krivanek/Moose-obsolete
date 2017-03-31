assertions
assertList: aFirstList hasSameSortOrderAs: aSecondList
	self assert: aFirstList sortOrder class == aSecondList sortOrder class