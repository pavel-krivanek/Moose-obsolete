tests
testParentAxis
	(Array
		with: self listWithSortOrder
		with: self listWithSortOrder reversed)
		do: [:list | | result |
			result := list % '*'.
			self
				assertList: result
				copiedFrom: list
				equals: (self listClass with: self singleListItem parent).
			self
				assertList: result
				hasSortOrder: XPathDocumentSortOrder.
			self assert: (result % 'root') isEmpty.

			result := list % 'root'.
			self
				assertList: result
				copiedFrom: list
				equals: (self listClass with: self singleListItem parent).
			self
				assertList: result
				hasSortOrder: XPathDocumentSortOrder.
			self assert: (result % 'root') isEmpty]