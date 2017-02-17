testing - package history
testClassInPackageHistories
	self assert: (testData simpleHistory allPackageHistories entityNamed: #aPackage) classHistories size equals: 2.
	(testData simpleHistory allPackageHistories entityNamed: #aPackage) classHistories
		do: [ :each | self assert: each parentPackage equals: (testData simpleHistory allPackageHistories entityNamed: #aPackage) ]