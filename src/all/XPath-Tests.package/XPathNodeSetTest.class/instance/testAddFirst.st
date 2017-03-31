tests
testAddFirst
	super testAddFirst.

	self assertListHasUnknownSortOrder:
		(self listWithSortOrder
			addFirst: self newListItem;
			yourself).