tests
testAddAllFirst
	super testAddAllFirst.

	self assertListHasUnknownSortOrder:
		(self listWithSortOrder
			addAllFirst: (Array with: self newListItem);
			yourself).