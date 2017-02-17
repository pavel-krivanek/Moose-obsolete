tests
testLastElement
	| list |

	list := self listWithItems.
	self listElements reverseDo: [:each |
		self assert: list lastElement = each.
		list remove: each].
	self assert: list lastElement = self defaultValue.