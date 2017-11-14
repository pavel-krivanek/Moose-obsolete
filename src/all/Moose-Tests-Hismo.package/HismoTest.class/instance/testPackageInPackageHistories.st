testing - package history
testPackageInPackageHistories
	self assert: (testData simpleHistory allPackageHistories entityNamed: #aPackage) packageHistories size equals: 2.
	self
		assert: (testData simpleHistory allPackageHistories entityNamed: #'aPackage.yetAnotherPackage') parentPackage
		equals: (testData simpleHistory allPackageHistories entityNamed: #aPackage)