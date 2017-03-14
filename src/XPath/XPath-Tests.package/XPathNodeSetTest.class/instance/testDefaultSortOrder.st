tests
testDefaultSortOrder
	self
		assertList: self emptyList hasSortOrder: XPathDocumentSortOrder;
		assertList: self listWithSingleItem hasSortOrder: XPathDocumentSortOrder;
		assertListHasUnknownSortOrder: self listWithItems