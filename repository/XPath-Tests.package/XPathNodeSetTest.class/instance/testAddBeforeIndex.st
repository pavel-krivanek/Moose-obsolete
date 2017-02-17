tests
testAddBeforeIndex
	super testAddBeforeIndex.

	self assertListHasUnknownSortOrder:
		(self listWithSortOrder
			add: self newListItem beforeIndex: 1;
			yourself).