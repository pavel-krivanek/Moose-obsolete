tests
testDescendantAxis
	| root list result |

	root := self singleListItem documentRoot.
	list := self listClass with: root.
	result := list // '*'.
	self
		assertList: result
		copiedFrom: list
		hasNodes: root descendantElements.
	self assert: (result // 'absent') isEmpty.

	result := list // 'three'.
	self
		assertList: result
		copiedFrom: list
		hasNode: root descendantElements fourth.
	self assert: (result // 'absent') isEmpty.