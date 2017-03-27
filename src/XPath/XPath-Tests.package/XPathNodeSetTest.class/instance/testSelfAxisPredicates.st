tests
testSelfAxisPredicates
	(Array
		with: self listWithSortOrder
		with: self listWithSortOrder reversed)
		do: [:list | | result |
			result := list ~ ('*' ?? 1).
			self
				assertList: result
				copiedFrom: list
				hasNodes: self listElements.
			self
				assertList: result
				hasSortOrder: XPathLevelDocumentSortOrder.
			self assert: (result ~ ('*' ?? 3)) isEmpty.

			result := list ~ ('three' ?? 1).
			self
				assertList: result
				copiedFrom: list
				hasNode: self listElements third.
			self
				assertList: result
				hasSortOrder: XPathLevelDocumentSortOrder.
			self assert: (result ~ ('three' ?? 3)) isEmpty]