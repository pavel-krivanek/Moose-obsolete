tests
testLastElement
	| root |

	root := self newNodeWithElements nodeAt: 2.
	root elements reversed do: [:each |
		self assert: root lastElement = each.
		root removeNode: each].
	self assert: root lastElement isNil.