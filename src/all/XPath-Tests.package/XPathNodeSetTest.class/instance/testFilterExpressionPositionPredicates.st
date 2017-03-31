tests
testFilterExpressionPositionPredicates
	1 to: self listItems size do: [:i | | item list filtered |
		item := self listItems at: i.

		list := self listWithItems.
		filtered := list ?? (Array with: i with: 1).
		self
			assertList: filtered copiedFrom: list equals: (self listClass with: item);
			assertList: filtered hasSortOrder: XPathDocumentSortOrder.

		list := self listWithItems reversed.
		filtered := list ?? (Array with: i with: 1).
		self
			assertList: filtered copiedFrom: list equals: (self listClass with: item);
			assertList: filtered hasSortOrder: XPathDocumentSortOrder]