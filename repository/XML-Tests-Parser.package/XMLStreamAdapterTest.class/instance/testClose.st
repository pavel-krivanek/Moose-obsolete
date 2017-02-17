tests
testClose
	self
		shouldnt: [self newStreamAdapter close]
		raise: Error