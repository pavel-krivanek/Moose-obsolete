tests
testDescendantAxisPredicates
	| root list result |

	root := self singleListItem documentRoot.
	list := self listClass with: root.
	result :=
		list
			descendantAxis: '*'
			predicates: #(3).
	self
		assertList: result
		copiedFrom: list
		equals: (self listClass with: root descendantElements third).
	self
		assertList: result
		hasSortOrder: XPathDocumentSortOrder.
	self assert:
		(result
			descendantAxis: '*'
			predicates: #(3)) isEmpty.

	result :=
		list
			descendantAxis: 'three'
			predicates: #(1).
	self
		assertList: result
		copiedFrom: list
		equals: (self listClass with: root descendantElements fourth).
	self
		assertList: result
		hasSortOrder: XPathDocumentSortOrder.
	self assert:
		(result
			descendantAxis: 'three'
			predicates: #(1)) isEmpty.