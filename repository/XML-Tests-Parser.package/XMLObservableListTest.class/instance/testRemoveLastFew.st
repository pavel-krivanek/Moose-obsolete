tests
testRemoveLastFew
	| list |
	
	super testRemoveLastFew.

	1 to: self listItems size do: [:i |
		list := self listWithItems.
		self
			should: [list removeLast: i]
			removeAll: (self listItemsLast: i) reversed
			fromAndNotify: list].
	list := self emptyList.
	self
		should: [list removeFirst: list size + 1] raise: Error;
		deny: list observer hasNotifications.