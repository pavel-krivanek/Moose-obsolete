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
		assertList: copy hasSortOrder: XPathReverseDocumentSortOrder;
		assertList: copy
		copiedFrom: list
		equals: (self listClass newFrom: self listItems reverse).

	list := copy.
	copy := list reverse.
	self
		assertList: copy hasSortOrder: XPathDocumentSortOrder;
		assertList: copy
		copiedFrom: list
		equals: self listWithItems.