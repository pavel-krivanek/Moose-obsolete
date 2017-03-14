tests
testLessThanBoolean
	self deny:
		self comparableNumberStringValue <
			self comparableTrueValue.
	self assert:
		self comparableZeroStringValue <
			self comparableTrueValue.
	self deny:
		self comparableNumberStringValue <
			self comparableFalseValue.
	self deny:
		self comparableZeroStringValue <
			self comparableFalseValue.