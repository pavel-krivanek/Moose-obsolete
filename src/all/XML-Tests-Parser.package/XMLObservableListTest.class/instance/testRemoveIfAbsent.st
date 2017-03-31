tests
testRemoveIfAbsent
	| list |

	super testRemoveIfAbsent.

	list := self listWithItems.
	self
		should: [
			list
				remove: self singleListItem
				ifAbsent: [self absentListItem]]
		remove: self singleListItem
		fromAndNotify: list.
	self assert:
		(list
			remove: self singleListItem
			ifAbsent: [self absentListItem]) = self absentListItem.
	self deny: list observer hasNotifications.