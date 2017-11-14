testing - class history
testSelectLastSeenLaterThan
	self
		assert: (testData simpleHistory allClassHistories selectLastSeenLaterThan: testData simpleHistory first) size
		equals: 6.
	self
		assert: (testData simpleHistory allClassHistories selectLastSeenLaterThan: testData simpleHistory last) size
		equals: 0