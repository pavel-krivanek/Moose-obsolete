tests
testSelfAxisPredicates
	(Array
		with: self listWithSortOrder
		with: self listWithSortOrder reversed)
		do: [:list | | result |
			result :=
				list
					selfAxis: '*'
					predicates: #(1).
			self
				assertList: result
				copiedFrom: list
				equals: (self listClass withAll: self listElements).
			self
				assertList: result
				hasSortOrder: XPathDocumentSortOrder.
			self assert:
				(result
					selfAxis: '*'
					predicates: #(3)) isEmpty.

			result :=
				(list
					selfAxis: 'three'
					predicates: #(1)).
			self
				assertList: result
				copiedFrom: list
				equals: (self listClass with: self listElements third).
			self
				assertList: result
				hasSortOrder: XPathDocumentSortOrder.
			self assert:
				(result
					selfAxis: 'three'
					predicates: #(3)) isEmpty]