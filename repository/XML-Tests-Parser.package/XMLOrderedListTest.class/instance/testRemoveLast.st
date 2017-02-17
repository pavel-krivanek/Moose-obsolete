tests
testRemoveLast
	| list |

	list := self listWithItems.
	self listItems reverseDo: [:each |
		self
			assert: list removeLast = each;
			assert: list = (self listClass newFrom: (self listItems copyUpTo: each))].
	self should: [list removeLast] raise: Error.