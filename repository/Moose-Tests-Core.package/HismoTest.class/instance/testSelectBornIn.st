testing - class history
testSelectBornIn
	self assert: (testData simpleHistory allClassHistories selectBornIn: testData simpleHistory first) size equals: 2.
	self assert: (testData simpleHistory allClassHistories selectBornIn: testData simpleHistory last) size equals: 1