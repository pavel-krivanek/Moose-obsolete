*XPath-Tests
assertList: aList hasSortOrder: aSortOrder
	self assert: (aList sortOrder class == aSortOrder)