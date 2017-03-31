tests
testAddLast
	super testAddLast.

	self assertListHasUnknownSortOrder:
		(self listWithSortOrder
			addLast: self newListItem;
			yourself).