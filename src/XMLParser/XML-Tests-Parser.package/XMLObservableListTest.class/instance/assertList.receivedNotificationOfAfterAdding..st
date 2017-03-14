assertions
assertList: aList receivedNotificationOfAfterAdding: anObject
	self
		assertNotification: aList observer nextNotification
		for: anObject
		withList: aList
		hasType: self afterAddingToNotifications