testing - class history
testSelectBornLaterThanOrIn
	self
		assert: (testData simpleHistory allClassHistories selectBornLaterThanOrIn: testData simpleHistory first) size
		equals: 6.
	self
		assert: (testData simpleHistory allClassHistories selectBornLaterThanOrIn: testData simpleHistory last) size
		equals: 1