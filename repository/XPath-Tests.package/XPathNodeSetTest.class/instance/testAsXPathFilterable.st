tests
testAsXPathFilterable
	| list filterable |

	list := self listWithItems reversed.
	filterable := list asXPathFilterable.
	self
		assertList: filterable copiedFrom: list equals: self listWithItems;
		assertList: filterable hasSortOrder: XPathDocumentSortOrder.