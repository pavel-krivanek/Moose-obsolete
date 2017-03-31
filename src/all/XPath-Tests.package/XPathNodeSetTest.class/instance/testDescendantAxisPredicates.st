tests
testDescendantAxisPredicates
	| root list result |

	root := self singleListItem documentRoot.
	list := self listClass with: root.
	result := list // ('*' ?? 3).
	self
		assertList: result
		copiedFrom: list
		hasNode: root descendantElements third.
	self assert: (result // ('*' ?? 3)) isEmpty.

	result := list // ('three' ?? 1).
	self
		assertList: result
		copiedFrom: list
		hasNode: root descendantElements fourth.
	self assert: (result // ('three' ?? 1)) isEmpty.