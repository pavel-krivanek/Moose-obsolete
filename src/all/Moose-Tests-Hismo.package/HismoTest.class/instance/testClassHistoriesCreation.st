testing - model history
testClassHistoriesCreation
	self assert: testData simpleHistory allClassHistories size equals: 6.
	self
		assert: (testData simpleHistory allClassHistories entityNamed: #aNamespace::ClassA) first versionEntity mooseModel
		equals: testData simpleModel1.
	self
		assert: (testData simpleHistory allClassHistories entityNamed: #aNamespace::ClassA) last versionEntity mooseModel
		equals: testData simpleModel5