testing - class history
testSelectLastSeenIn
	self assert: (testData simpleHistory allClassHistories selectLastSeenIn: testData simpleHistory first) size equals: 0.
	self assert: (testData simpleHistory allClassHistories selectLastSeenIn: testData simpleHistory last) size equals: 4