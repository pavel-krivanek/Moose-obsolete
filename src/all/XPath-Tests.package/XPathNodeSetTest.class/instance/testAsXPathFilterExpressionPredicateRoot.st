tests
testAsXPathFilterExpressionPredicateRoot
	| list filterable |

	list := self listWithItems reversed.
	filterable := list asXPathFilterExpressionPredicateRoot.
	self
		assertList: filterable copiedFrom: list equals: self listWithItems;
		assertList: filterable hasSortOrder: XPathDocumentSortOrder.