tests
testRemoveAt
	super testRemoveAt.

	self listItems withIndexDo: [:each :i | | list |
		list := self listWithItems.
		self
			should: [list removeAt: i]
			remove: each
			fromAndNotify: list.
		self
			should: [list removeAt: 0] raise: Error;
			should: [list removeAt: list size + 1] raise: Error;
			deny: list observer hasNotifications].