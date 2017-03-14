tests
testAddBefore
	super testAddBefore.

	self assertListHasUnknownSortOrder:
		(self listWithSortOrder
			add: self newListItem before: self singleListItem;
			yourself).