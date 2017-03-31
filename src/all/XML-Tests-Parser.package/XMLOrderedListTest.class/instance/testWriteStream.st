tests
testWriteStream
	self
		should: [self emptyList writeStream]
		raise: Error