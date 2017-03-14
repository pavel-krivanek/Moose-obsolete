tests
testRemoveIfAbsent
	| list |

	list := self listWithItems.
	self listItems do: [:each |
		self assert:
			(list
				remove: each
				ifAbsent: [self fail]) = each.
		self deny: (list includes: each).

		self assert:
			(list
				remove: each
				ifAbsent: [self absentListItem]) = self absentListItem].