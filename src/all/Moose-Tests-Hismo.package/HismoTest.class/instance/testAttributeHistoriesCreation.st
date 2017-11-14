testing - model history
testAttributeHistoriesCreation
	self assert: testData simpleHistory allAttributeHistories size equals: 8.
	self
		assert:
			(testData simpleHistory allAttributeHistories entityNamed: #'aNamespace::ClassC.attributeC1') first versionEntity
				mooseModel
		equals: testData simpleModel3.
	self
		assert:
			(testData simpleHistory allAttributeHistories entityNamed: #'aNamespace::ClassC.attributeC1') last versionEntity
				mooseModel
		equals: testData simpleModel4