testing - class history
testSelectBornPriorToOrIn
	self
		assert: (testData simpleHistory allClassHistories selectBornPriorToOrIn: testData simpleHistory first) size
		equals: 2.
	self
		assert: (testData simpleHistory allClassHistories selectBornPriorToOrIn: testData simpleHistory last) size
		equals: 6