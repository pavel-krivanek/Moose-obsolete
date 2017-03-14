assertions
should: aBlock addAll: aCollection toAndNotify: aList
	aList observer clearNotifications.
	aBlock value.
	aCollection do: [:each |
		self assert: (aList includes: each).
		self 
			assertList: aList
			receivedNotificationOfAdding: each].