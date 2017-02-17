assertions
assertList: aList receivedNotificationOfReplacing: anOldObject with: aNewObject
	self
		assertList: aList
		receivedNotificationOfRemoving: anOldObject.
	self
		assertList: aList
		receivedNotificationOfAfterAdding: aNewObject.