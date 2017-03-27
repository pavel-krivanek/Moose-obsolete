tests
testSelfAxis
	(Array
		with: self listWithSortOrder
		with: self listWithSortOrder reversed)
		do: [:list | | result |
			result := list ~ '*'.
			self
				assertList: result
				copiedFrom: list
				hasNodes: self listElements.
			self
				assertList: result
				hasSortOrder: XPathLevelDocumentSortOrder.
			self assert: (result ~ 'absent') isEmpty.

			result := list ~ 'three'.
			self
				assertList: result
				copiedFrom: list
				hasNode: self listElements third.
			self
				assertList: result
				hasSortOrder: XPathLevelDocumentSortOrder.
			self assert: (result ~ 'absent') isEmpty]