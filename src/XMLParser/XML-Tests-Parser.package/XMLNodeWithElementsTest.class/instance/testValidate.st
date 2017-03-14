tests
testValidate
	super testValidate.
	self
		shouldnt: [self newNodeWithNodes validate]
		raise: XMLValidationException.