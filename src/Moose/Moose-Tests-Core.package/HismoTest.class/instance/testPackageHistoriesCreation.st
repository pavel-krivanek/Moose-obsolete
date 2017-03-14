testing - model history
testPackageHistoriesCreation
	self assert: testData simpleHistory allPackageHistories size equals: 4.
	self
		assert: testData simpleHistory allPackageHistories printString
		equals: 'All Package Histories (4 HismoPackageHistories)'.
	self
		assert: (testData simpleHistory allPackageHistories entityNamed: #aPackage) first versionEntity mooseModel
		equals: testData simpleModel1.
	self
		assert: (testData simpleHistory allPackageHistories entityNamed: #aPackage) last versionEntity mooseModel
		equals: testData simpleModel5.
	self
		assert: (testData simpleHistory allPackageHistories entityNamed: #anotherPackage) first versionEntity mooseModel
		equals: testData simpleModel2.
	self
		assert: (testData simpleHistory allPackageHistories entityNamed: #anotherPackage) last versionEntity mooseModel
		equals: testData simpleModel3