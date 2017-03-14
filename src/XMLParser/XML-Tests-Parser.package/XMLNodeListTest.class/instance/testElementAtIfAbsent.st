tests
testElementAtIfAbsent
	| list |

	list := self listWithItems.
	self listElements do: [:each | | changedElement |
		self assert:
			(list
				elementAt: each name
				ifAbsent: [self fail]) = each.

		changedElement := self changedListItem: each.
		list addFirst: changedElement.
		self assert:
			(list
				elementAt: each name
				ifAbsent: [self fail]) = changedElement.

		list
			remove: each;
			remove: changedElement.
		self assert:
			(list
				elementAt: each name
				ifAbsent: [self newListItem]) = self newListItem].