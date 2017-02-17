tests
testSort
	super testSort.

	self
		assertList: self listWithItems sort
		hasSortOrder: XPathDocumentSortOrder.
	self
		should: [(self listWithItems copyWith: self newListItem) sort]
		raise: XPathDOMException.
	self
		shouldnt: [self emptyList sort]
		raise: Error.

	self assertListHasUnknownSortOrder:
		(self listWithItems
			sort;
			sort: self sortBlock).