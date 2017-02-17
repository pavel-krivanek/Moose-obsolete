tests
testOutgoingInvocationWithin
	self assert: ((method1 queryOutgoing: FAMIXInvocation) within: class2) size equals: 1.
