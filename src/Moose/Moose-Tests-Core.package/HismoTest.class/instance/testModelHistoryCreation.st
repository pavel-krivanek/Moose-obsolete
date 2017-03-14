testing - model history
testModelHistoryCreation
	self assert: testData simpleHistory versions size equals: 5.
	self assert: testData simpleHistory versions first versionEntity == testData simpleModel1.
	self assert: testData simpleHistory versions first referenceVersion == testData simpleHistory versions first.
	self assert: testData simpleHistory versions last versionEntity == testData simpleModel5.
	self assert: testData simpleHistory versions last referenceVersion == testData simpleHistory versions last.
	^ testData simpleHistory