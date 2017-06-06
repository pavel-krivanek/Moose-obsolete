tests
testIsWrite
	self assert: (self actualClass new isWrite: false) isWrite not.
	self assert: (self actualClass new isWrite: true) isWrite