tests
testReject
	| list |

	list := self listWithItems.
	self
		assertList: (list reject: [:each | each = self singleListItem])
		copiedFrom: list
		equals:
			(self listClass newFrom:
				(self listWithItems copyWithout: self singleListItem)).