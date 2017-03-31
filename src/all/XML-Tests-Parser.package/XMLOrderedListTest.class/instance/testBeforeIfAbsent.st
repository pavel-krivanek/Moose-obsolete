tests
testBeforeIfAbsent
	| list |

	list := self listWithItems.
	2 to: list size do: [:i |
		self assert:
			(list
				before: (self listItems at: i)
				ifAbsent: [self fail]) = (self listItems at: i - 1)].
	self assert:
		(list
			before: self listItems first
			ifAbsent: [self newListItem]) = self newListItem.
	self assert:
		(list
			before: self absentListItem
			ifAbsent: [self newListItem]) = self newListItem.