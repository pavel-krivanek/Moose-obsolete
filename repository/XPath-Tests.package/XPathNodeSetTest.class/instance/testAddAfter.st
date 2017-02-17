tests
testAddAfter
	super testAddAfter.

	self assertListHasUnknownSortOrder:
		(self listWithSortOrder
			add: self newListItem after: self singleListItem;
			yourself).