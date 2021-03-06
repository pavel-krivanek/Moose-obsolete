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
				hasNode: self listItems first parent.
			self
				assertList: result
				hasSortOrder: XPathLevelDocumentSortOrder.
			self assert: (result % 'root') isEmpty.

			result := list % 'root'.
			self
				assertList: result
				copiedFrom: list
				hasNode: self listItems first parent.
			self
				assertList: result
				hasSortOrder: XPathLevelDocumentSortOrder.
			self assert: (result % 'root') isEmpty]