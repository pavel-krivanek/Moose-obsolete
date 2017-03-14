tests
testChildAxisPredicates
	| list result |

	list := self listClass with: self singleListItem parent.
	result :=
		list
			childAxis: '*'
			predicates: #(3).
	self
		assertList: result
		copiedFrom: list
		equals: (self listClass with: self listElements third).
	self
		assertList: result
		hasSortOrder: XPathDocumentSortOrder.
	self assert:
		(result
			childAxis: '*'
			predicates: #(3)) isEmpty.

	result :=
		list
			childAxis: 'three'
			predicates: #(1).
	self
		assertList: result
		copiedFrom: list
		equals: (self listClass with: self listElements third).
	self
		assertList: result
		hasSortOrder: XPathDocumentSortOrder.
	self assert:
		(result
			childAxis: 'three'
			predicates: #(1)) isEmpty.