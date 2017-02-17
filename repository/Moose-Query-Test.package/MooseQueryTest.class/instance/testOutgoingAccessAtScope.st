tests
testOutgoingAccessAtScope
	self assert: ((method1 queryOutgoing: FAMIXAccess) atScope: FAMIXPackage) size equals: 1.
	self
		assert: ((method1 queryOutgoing: FAMIXAccess) atScope: FAMIXPackage) storage first
		equals: package2