tests
testHasEmptyBody

	self assert: (self model entityNamed: methodWithEmptyBodyNodeName) hasEmptyBody.
	self deny: (self model entityNamed: acceptNodeName) hasEmptyBody