tests
testElementAt
	| list |

	list := self listWithItems.
	self listElements do: [:each | | changedElement |
		self assert: (list elementAt: each name) = each.

		changedElement := self changedListItem: each.
		list addFirst: changedElement.
		self assert: (list elementAt: each name) = changedElement.

		list
			remove: each;
			remove: changedElement.
		self assert: (list elementAt: each name) = self defaultValue].