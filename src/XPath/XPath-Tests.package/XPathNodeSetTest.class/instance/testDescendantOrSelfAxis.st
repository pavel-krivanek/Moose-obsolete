tests
testDescendantOrSelfAxis
	| root list result |

	root := self singleListItem documentRoot.
	list := self listClass with: root.
	result := list //~ '*'.
	self
		assertList: result
		copiedFrom: list
		hasNodes: root allElements.
	self assert: (result //~ 'absent') isEmpty.

	result := list //~ 'three'.
	self
		assertList: result
		copiedFrom: list
		hasNode: root allElements fourth.
	self assert: (result //~ 'absent') isEmpty.