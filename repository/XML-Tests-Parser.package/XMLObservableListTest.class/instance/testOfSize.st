tests
testOfSize
	self
		should: [self listClass ofSize: 10]
		raise: Error