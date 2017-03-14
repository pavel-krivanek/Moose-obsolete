tests
testParentAxisPredicates
	(Array
		with: self listWithSortOrder
		with: self listWithSortOrder reversed)
		do: [:list | | result |
			result :=
				list
					parentAxis: '*'
					predicates: #(1).
			self
				assertList: result
				copiedFrom: list
				equals: (self listClass with: self singleListItem parent).
			self
				assertList: result
				hasSortOrder: XPathDocumentSortOrder.
			self assert:
				(result
					parentAxis: 'root'
					predicates: #(1)) isEmpty.

			result :=
				list
					parentAxis: 'root'
					predicates: #(1).
			self
				assertList: result
				copiedFrom: list
				equals: (self listClass with: self singleListItem parent).
			self
				assertList: result
				hasSortOrder: XPathDocumentSortOrder.
			self assert:
				(result
					parentAxis: 'root'
					predicates: #(1)) isEmpty]