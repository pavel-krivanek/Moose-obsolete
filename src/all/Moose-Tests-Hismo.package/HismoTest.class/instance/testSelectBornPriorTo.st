testing - class history
testSelectBornPriorTo
	self assert: (testData simpleHistory allClassHistories selectBornPriorTo: testData simpleHistory first) size equals: 0.
	self assert: (testData simpleHistory allClassHistories selectBornPriorTo: testData simpleHistory last) size equals: 5