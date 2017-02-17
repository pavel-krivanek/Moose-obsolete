assertions
assertList: aList receivedNotificationOfRemoving: anObject
	self
		assertNotification: aList observer nextNotification
		for: anObject
		withList: aList
		hasType: self afterRemovingFromNotifications