testing - model history
testMethodsHistoriesCreation
	self assert: testData simpleHistory allMethodHistories size equals: 8.
	self
		assert:
			(testData simpleHistory allMethodHistories entityNamed: #'aNamespace::ClassA.methodA1()') first versionEntity mooseModel
		equals: testData simpleModel1.
	self
		assert:
			(testData simpleHistory allMethodHistories entityNamed: #'aNamespace::ClassA.methodA1()') last versionEntity mooseModel
		equals: testData simpleModel5