testing - model history
testReferenceVersion
	self
		assert: (testData simpleHistory atReferenceVersion: testData simpleModel1) versionEntity
		equals: testData simpleModel1