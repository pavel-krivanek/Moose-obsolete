tests
testReversed
	| list copy |

	super testReversed.

	list := self listWithItems.
	copy := list reversed.
	self
		assertListHasUnknownSortOrder: copy;
		assertList: copy
		copiedFrom: list
		equals: (self listClass newFrom: self listItems reversed).

	list := self listWithSortOrder.
	copy := list reversed.
	self
		assertList: copy hasSortOrder: XPathReverseDocumentSortOrder;
		assertList: copy
		copiedFrom: list
		equals: (self listClass newFrom: self listItems reversed).

	list := copy.
	copy := list reversed.
	self
		assertList: copy hasSortOrder: XPathDocumentSortOrder;
		assertList: copy
		copiedFrom: list
		equals: self listWithItems.