tests
testAtIfAbsent
	| list |

	list := self listWithItems.
	1 to: list size do: [:i |
		self assert:
			(list
				at: i
				ifAbsent: [self fail]) = (self listItems at: i)].
	self
		assert: (list at: 0 ifAbsent: [self newListItem]) = self newListItem;
		assert: (list at: list size + 1 ifAbsent: [self newListItem]) = self newListItem.