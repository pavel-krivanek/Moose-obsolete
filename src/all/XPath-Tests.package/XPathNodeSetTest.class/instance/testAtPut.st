tests
testAtPut
	super testAtPut.

	self assertListHasUnknownSortOrder:
		(self listWithSortOrder
			at: 1 put: self newListItem;
			yourself).