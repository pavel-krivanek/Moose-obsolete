testing
testMethodInvocations
	self assert: (self lanInterfaceOriginateMethod propertyNamed: #numberOfOutgoingInvocations) equals: 22.
	self assert: self lanInterfaceOriginateMethod numberOfOutgoingInvocations equals: 22.
	self assert: (self model entityNamed: #'Smalltalk::LANInterface.initialize()') numberOfOutgoingInvocations equals: 2