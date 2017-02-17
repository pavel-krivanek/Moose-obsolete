tests
testFirstElement
	| list |

	list := self listWithItems.
	self listElements do: [:each |
		self assert: list firstElement = each.
		list remove: each].
	self assert: list firstElement = self defaultValue.