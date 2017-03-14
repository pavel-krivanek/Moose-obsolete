tests
testReverseInPlace
	| list |

	list := self emptyList.
	self
		assert: list reverseInPlace == list;
		assert: list isEmpty.

	list := self listWithSingleItem.
	self
		assert: list reverseInPlace == list;
		assert: list = self listWithSingleItem;
		assertList: list hasSortOrder: XPathReverseDocumentSortOrder.

	list := self listWithItems.
	self
		assert: list reverseInPlace == list;
		assert: list = (self listClass newFrom: self listItems reversed);
		assertListHasUnknownSortOrder: list.

	list := self listWithSortOrder.
	self
		assert: list reverseInPlace == list;
		assert: list = (self listClass newFrom: self listItems reversed);
		assertList: list hasSortOrder: XPathReverseDocumentSortOrder;
		assert: list reverseInPlace == list;
		assert: list = (self listClass newFrom: self listItems);
		assertList: list hasSortOrder: XPathDocumentSortOrder.