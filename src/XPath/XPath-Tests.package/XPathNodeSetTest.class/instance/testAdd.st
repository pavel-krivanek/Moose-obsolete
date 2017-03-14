tests
testAdd
	super testAdd.

	self assertListHasUnknownSortOrder:
		(self listWithSortOrder
			add: self newListItem;
			yourself).