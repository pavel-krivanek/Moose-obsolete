tests
testIsRead
	self assert: (FAMIXAccess new isWrite: false) isRead.
	self assert: (FAMIXAccess new isWrite: true) isRead not