tests
testLessThanOrEqualToString
	self assert:
		self comparableTrueValue <=
			self comparableNumberStringValue.
	self assert:
		self comparableFalseValue <=
			self comparableNumberStringValue.
	self deny:
		self comparableTrueValue <=
			self comparableZeroStringValue.
	self assert:
		self comparableFalseValue <=
			self comparableZeroStringValue.