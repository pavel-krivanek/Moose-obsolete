tests
testAfterIfAbsent
	| list |

	list := self listWithItems.
	1 to: list size - 1 do: [:i |
		self assert:
			(list
				after: (self listItems at: i)
				ifAbsent: [self fail]) = (self listItems at: i + 1)].
	self assert:
		(list
			after: self listItems last
			ifAbsent: [self newListItem]) = self newListItem.
	self assert:
		(list
			after: self absentListItem
			ifAbsent: [self newListItem]) = self newListItem.