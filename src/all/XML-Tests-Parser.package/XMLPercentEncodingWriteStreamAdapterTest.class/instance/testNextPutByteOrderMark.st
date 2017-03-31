tests
testNextPutByteOrderMark
	self
		should: [self newStreamAdapter nextPutByteOrderMark]
		raise: Error