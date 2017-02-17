tests
testAtLastIfAbsent
	| list |

	list := self listWithItems.
	1 to: list size do: [:i |
		self assert: (list atLast: i ifAbsent: [self newListItem]) = (self listItems atLast: i)].
	self
		assert: (list atLast: 0 ifAbsent: [self newListItem]) = self newListItem;
		assert: (list atLast: list size + 1 ifAbsent: [self newListItem]) = self newListItem.