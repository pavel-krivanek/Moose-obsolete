tests
testDescendantOrSelfAxisPredicates
	| root list result |

	root := self singleListItem documentRoot.
	list := self listClass with: root.
	result := list //~ ('*' ?? 4).
	self
		assertList: result
		copiedFrom: list
		hasNode: root allElements fourth.
	self assert: (result //~ ('*' ?? 4)) isEmpty.

	result := list //~ ('three' ?? 1).
	self
		assertList: result
		copiedFrom: list
		hasNode: root allElements fourth.
	self assert: (result //~ ('three' ?? 4)) isEmpty.