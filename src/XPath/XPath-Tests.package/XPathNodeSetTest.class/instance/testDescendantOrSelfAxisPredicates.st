tests
testDescendantOrSelfAxisPredicates
	| root list result |

	root := self singleListItem documentRoot.
	list := self listClass with: root.
	result :=
		list
			descendantOrSelfAxis: '*'
			predicates: #(4).
	self
		assertList: result
		copiedFrom: list
		equals: (self listClass with: root allElements fourth).
	self
		assertList: result
		hasSortOrder: XPathDocumentSortOrder.
	self assert:
		(result
			descendantOrSelfAxis: '*'
			predicates: #(4)) isEmpty.

	result :=
		list
			descendantOrSelfAxis: 'three'
			predicates: #(1).
	self
		assertList: result
		copiedFrom: list
		equals: (self listClass with: root allElements fourth).
	self
		assertList: result
		hasSortOrder: XPathDocumentSortOrder.
	self assert:
		(result
			descendantOrSelfAxis: 'three'
			predicates: #(4)) isEmpty.