tests
testReplaceFromToWithStartingAt
	super testReplaceFromToWithStartingAt.

	1 to: self listItems size do: [:start |
		start to: self listItems size do: [:stop | | list old new |
			list := self listWithItems.
			old := self listItems copyFrom: start to: stop.
			new := self changedListItems copyFrom: start to: stop.
			list
				replaceFrom: start
				to: stop
				with: self changedListItems
				startingAt: start.
			old with: new do: [:oldElement :newElement |
				self
					assertList: list
					receivedNotificationOfReplacing: oldElement
					with: newElement].
			self deny: list observer hasNotifications]].