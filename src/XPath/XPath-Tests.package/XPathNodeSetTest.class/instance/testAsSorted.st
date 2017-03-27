tests
testAsSorted
	| list sorted |

	list := self listWithItems.
	sorted := list asSorted.
	self
		assertList: sorted
		copiedFrom: list
		equals: self listWithItems.
	self
		assertList: sorted
		hasSortOrder: XPathDocumentSortOrder.

	list := self listWithItems sorted.
	sorted := list asSorted.
	self
		assert: sorted = self listWithItems;
		assert: sorted == list.
	self
		assertList: sorted
		hasSortOrder: XPathDocumentSortOrder.

	list := self listWithItems sorted reversed.
	self
		assertList: sorted
		copiedFrom: list
		equals: self listWithItems.
	self
		assertList: sorted
		hasSortOrder: XPathDocumentSortOrder.