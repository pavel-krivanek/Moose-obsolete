tests
testOutgoingInvocationAtScope

	self assert: ((method2 queryOutgoing: FAMIXInvocation) atScope: FAMIXPackage) size equals: 1.
	self assert: ((class2 queryOutgoing: FAMIXInvocation) atScope: FAMIXPackage) size equals: 1.
