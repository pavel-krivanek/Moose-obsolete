assertions
should: aBlock removeAll: aCollection fromAndNotify: aList
	aList observer clearNotifications.
	aBlock value.
	aCollection do: [:each |
		self deny: (aList includes: each).
		self
			assertList: aList
			receivedNotificationOfRemoving: each].