testing - class history
testSelectBornLaterThan
	self
		assert: (testData simpleHistory allClassHistories selectBornLaterThan: testData simpleHistory first) size
		equals: 4.
	self assert: (testData simpleHistory allClassHistories selectBornLaterThan: testData simpleHistory last) size equals: 0