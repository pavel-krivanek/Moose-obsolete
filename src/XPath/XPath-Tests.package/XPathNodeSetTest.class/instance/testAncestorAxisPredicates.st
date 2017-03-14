tests
testAncestorAxisPredicates
	| list result |

	list := self listWithItems.
	result :=
		list
			ancestorAxis: '*'
			predicates: #(1).
	self
		assertList: result
		copiedFrom: list
		equals: (self listClass with: self singleListItem ancestorElements first).
	self
		assertList: result
		hasSortOrder: XPathReverseDocumentSortOrder.
	self assert:
		(result
			ancestorAxis: '*'
			predicates: #(1)) isEmpty.

	result :=
		list
			ancestorAxis: 'root'
			predicates: #(1).
	self
		assertList: result
		copiedFrom: list
		equals: (self listClass with: self singleListItem ancestorElements first).
	self
		assertList: result
		hasSortOrder: XPathReverseDocumentSortOrder.
	self assert:
		(result
			ancestorAxis: 'root'
			predicates: #(1)) isEmpty.