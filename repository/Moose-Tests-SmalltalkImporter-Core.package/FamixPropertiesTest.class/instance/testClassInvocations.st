testing
testClassInvocations
	self assert: (self nodeClass propertyNamed: #numberOfMessageSends) equals: 27.
	self assert: self nodeClass numberOfMessageSends equals: 27