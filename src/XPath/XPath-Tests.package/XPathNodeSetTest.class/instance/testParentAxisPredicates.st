tests
testParentAxisPredicates
	(Array
		with: self listWithSortOrder
		with: self listWithSortOrder reversed)
		do: [:list | | result |
			result := list % ('*' ?? 1).
			self
				assertList: result
				copiedFrom: list
				hasNode: self listItems first parent.
			self
				assertList: result
				hasSortOrder: XPathLevelDocumentSortOrder.
			self assert: (result % ('root' ?? 1)) isEmpty.

			result := list % ('root' ?? 1).
			self
				assertList: result
				copiedFrom: list
				hasNode: self listItems first parent.
			self
				assertList: result
				hasSortOrder: XPathLevelDocumentSortOrder.
			self assert: (result % ('root' ??1)) isEmpty]