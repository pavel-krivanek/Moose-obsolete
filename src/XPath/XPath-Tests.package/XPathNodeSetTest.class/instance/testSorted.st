tests
testSorted
	super testSorted.

	self
		assertList: self listWithItems sorted
		hasSortOrder: XPathDocumentSortOrder.
	self
		should: [(self listWithItems copyWith: self newListItem) sorted]
		raise: XPathDOMException.
	self
		shouldnt: [self emptyList sorted]
		raise: Error.