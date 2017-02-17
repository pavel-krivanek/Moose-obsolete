testing - class history
testSelectLastSeenLaterThanOrIn
	self
		assert: (testData simpleHistory allClassHistories selectLastSeenLaterThanOrIn: testData simpleHistory first) size
		equals: 6.
	self
		assert: (testData simpleHistory allClassHistories selectLastSeenLaterThanOrIn: testData simpleHistory last) size
		equals: 4