tests
testReverse
	| list copy |

	super testReverse.

	list := self listWithItems.
	copy := list reverse.
	self
		assertListHasUnknownSortOrder: copy;
		assertList: copy
		copiedFrom: list
		equals: (self listClass newFrom: self listItems reverse).

	list := self listWithSortOrder.
	copy := list reverse.
	self
		assertList: copy hasSortOrder: XPathLevelReverseDocumentSortOrder;
		assertList: copy
		copiedFrom: list
		equals: (self listClass newFrom: self listItems reverse).

	list := copy.
	copy := list reverse.
	self
		assertList: copy hasSortOrder: XPathLevelDocumentSortOrder;
		assertList: copy
		copiedFrom: list
		equals: self listWithItems.