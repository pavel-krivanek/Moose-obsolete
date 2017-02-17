tests
testLessThanOrEqualToBoolean
	self assert:
		self comparableNumberStringValue <=
			self comparableTrueValue.
	self assert:
		self comparableZeroStringValue <=
			self comparableTrueValue.
	self deny:
		self comparableNumberStringValue <=
			self comparableFalseValue.
	self assert:
		self comparableZeroStringValue <=
			self comparableFalseValue.