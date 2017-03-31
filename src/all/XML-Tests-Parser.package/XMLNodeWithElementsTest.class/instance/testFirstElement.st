tests
testFirstElement
	| root |

	root := self newNodeWithElements nodeAt: 2.
	root elements copy do: [:each |
		self assert: root firstElement = each.
		root removeNode: each].
	self assert: root firstElement isNil.