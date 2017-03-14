tests
testAddAfterIndex
	super testAddAfterIndex.

	self assertListHasUnknownSortOrder:
		(self listWithSortOrder
			add: self newListItem afterIndex: 1;
			yourself).