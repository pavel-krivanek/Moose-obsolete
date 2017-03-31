tests
testIncomingInvocationAtScope
	self
		assert: ((method2 queryIncoming: FAMIXInvocation) atScope: FAMIXPackage) size
		equals: 2.
	self
		assert: ((class2 queryIncoming: FAMIXInvocation) atScope: FAMIXPackage) size
		equals: 2