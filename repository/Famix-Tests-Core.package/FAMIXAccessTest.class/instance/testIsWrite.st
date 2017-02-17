tests
testIsWrite
	self assert: (FAMIXAccess new isWrite: false) isWrite not.
	self assert: (FAMIXAccess new isWrite: true) isWrite