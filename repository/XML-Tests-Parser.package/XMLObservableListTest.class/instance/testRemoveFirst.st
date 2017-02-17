tests
testRemoveFirst
	| list |

	super testRemoveFirst.

	list := self listWithItems.
	self listItems do: [:each |
		self
			should: [list removeFirst]
			remove: each
			fromAndNotify: list].
	self
		should: [list removeFirst] raise: Error;
		deny: list observer hasNotifications.