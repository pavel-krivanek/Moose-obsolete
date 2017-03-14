tests
testAncestorOrSelfAxisPredicates
	| list result |

	list := self listWithItems.
	result :=
		list
			ancestorOrSelfAxis: '*'
			predicates: #(2).
	self
		assertList: result
		copiedFrom: list
		equals:
			(self listClass with:
				self listElements first ancestorElements first).
	self
		assertList: result
		hasSortOrder: XPathReverseDocumentSortOrder.
	self assert:
		(result
			ancestorOrSelfAxis: '*'
			predicates: #(2)) isEmpty.

	result :=
		list
			ancestorOrSelfAxis: 'root'
			predicates: #(1).
	self
		assertList: result
		copiedFrom: list
		equals:
			(self listClass with:
				self listElements first ancestorElements first).
	self
		assertList: result
		hasSortOrder: XPathReverseDocumentSortOrder.
	self assert:
		(result
			ancestorOrSelfAxis: 'root'
			predicates: #(2)) isEmpty.