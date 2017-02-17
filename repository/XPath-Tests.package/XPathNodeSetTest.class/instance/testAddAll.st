tests
testAddAll
	super testAddAll.

	self assertListHasUnknownSortOrder:
		(self listWithSortOrder
			addAll: (Array with: self newListItem);
			yourself).