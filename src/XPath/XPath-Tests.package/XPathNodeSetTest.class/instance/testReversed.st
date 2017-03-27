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
		assertList: copy hasSortOrder: XPathLevelReverseDocumentSortOrder;
		assertList: copy
		copiedFrom: list
		equals: (self listClass newFrom: self listItems reversed).

	list := copy.
	copy := list reversed.
	self
		assertList: copy hasSortOrder: XPathLevelDocumentSortOrder;
		assertList: copy
		copiedFrom: list
		equals: self listWithItems.