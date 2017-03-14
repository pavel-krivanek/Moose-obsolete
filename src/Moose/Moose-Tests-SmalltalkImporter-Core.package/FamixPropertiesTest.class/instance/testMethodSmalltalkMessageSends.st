testing
testMethodSmalltalkMessageSends
	self assert: (self lanInterfaceOriginateMethod propertyNamed: #numberOfMessageSends) equals: 22.
	self assert: self lanInterfaceOriginateMethod numberOfMessageSends equals: 22