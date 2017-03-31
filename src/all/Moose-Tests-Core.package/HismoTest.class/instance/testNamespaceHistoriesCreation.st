testing - model history
testNamespaceHistoriesCreation
	self assert: testData simpleHistory allNamespaceHistories size equals: 2.
	self
		assert: (testData simpleHistory allNamespaceHistories entityNamed: #aNamespace) first versionEntity mooseModel
		equals: testData simpleModel1.
	self
		assert: (testData simpleHistory allNamespaceHistories entityNamed: #aNamespace) last versionEntity mooseModel
		equals: testData simpleModel5.
	self
		assert:
			(testData simpleHistory allNamespaceHistories entityNamed: #aNamespace::anotherNamespace) first versionEntity mooseModel
		equals: testData simpleModel4.
	self
		assert:
			(testData simpleHistory allNamespaceHistories entityNamed: #aNamespace::anotherNamespace) last versionEntity mooseModel
		equals: testData simpleModel4