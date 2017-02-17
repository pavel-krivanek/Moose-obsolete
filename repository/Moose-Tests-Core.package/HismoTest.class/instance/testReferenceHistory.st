testing - model history
testReferenceHistory
	self assert: testData simpleHistory referenceHistory == testData simpleHistory.
	self assert: testData simpleHistory referenceHistory printString equals: 'Sample history (5)'.
	testData simpleHistory allClassHistories
		do: [ :each | self assert: each referenceHistory equals: testData simpleHistory ]