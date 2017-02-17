tests
testAtPut
	| list |

	super testAtPut.

	list := self listWithItems.
	1 to: list size do: [:i | | old new |
		old := list at: i.
		new := self changedListItems at: i.
		list at: i put: new.
		self
			assertList: list
			receivedNotificationOfReplacing: old
			with: new].
	self
		should: [list at: list size + 2 put: self newListItem]
		raise: Error.
	self deny: list observer hasNotifications.