tests
testValidate
	self
		shouldnt: [self newNode validate]
		raise: XMLValidationException