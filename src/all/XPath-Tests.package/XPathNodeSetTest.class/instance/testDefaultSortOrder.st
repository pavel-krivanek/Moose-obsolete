tests
testDefaultSortOrder
	self
		assertList: self emptyList hasSortOrder: XPathLevelDocumentSortOrder;
		assertList: self listWithSingleItem hasSortOrder: XPathLevelDocumentSortOrder;
		assertListHasUnknownSortOrder: self listWithItems