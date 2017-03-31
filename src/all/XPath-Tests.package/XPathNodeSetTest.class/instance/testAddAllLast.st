tests
testAddAllLast
	super testAddAllLast.

	self assertListHasUnknownSortOrder:
		(self listWithSortOrder
			addAllLast: (Array with: self newListItem);
			yourself).