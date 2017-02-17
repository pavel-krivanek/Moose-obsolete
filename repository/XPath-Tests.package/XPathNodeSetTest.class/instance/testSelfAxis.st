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
				equals: (self listClass withAll: self listElements).
			self
				assertList: result
				hasSortOrder: XPathDocumentSortOrder.
			self assert: (result ~ 'absent') isEmpty.

			result := list ~ 'three'.
			self
				assertList: result
				copiedFrom: list
				equals: (self listClass with: self listElements third).
			self
				assertList: result
				hasSortOrder: XPathDocumentSortOrder.
			self assert: (result ~ 'absent') isEmpty]