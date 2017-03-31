tests
testRemoveFirstFew
	| list |

	super testRemoveFirstFew.

	1 to: self listItems size do: [:i |
		list := self listWithItems.
		self
			should: [list removeFirst: i]
			removeAll: (self listItemsFirst: i)
			fromAndNotify: list].
	list := self emptyList.
	self
		should: [list removeFirst: list size + 1] raise: Error;
		deny: list observer hasNotifications.