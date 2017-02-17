tests
testRemoveLast
	| list |

	super testRemoveLast.

	list := self listWithItems.
	self listItems reverseDo: [:each |
		self
			should: [list removeLast]
			remove: each
			fromAndNotify: list].
	self
		should: [list removeFirst] raise: Error;
		deny: list observer hasNotifications.