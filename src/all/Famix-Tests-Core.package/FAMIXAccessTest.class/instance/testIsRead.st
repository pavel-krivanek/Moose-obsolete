tests
testIsRead
	self assert: (self actualClass new isWrite: false) isRead.
	self assert: (self actualClass new isWrite: true) isRead not