tests
testLessThanString
	self deny:
		self comparableTrueValue <
			self comparableNumberStringValue.
	self assert:
		self comparableFalseValue <
			self comparableNumberStringValue.
	self deny:
		self comparableTrueValue <
			self comparableZeroStringValue.
	self deny:
		self comparableFalseValue <
			self comparableZeroStringValue.