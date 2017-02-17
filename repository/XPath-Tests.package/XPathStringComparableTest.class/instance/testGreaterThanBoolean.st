tests
testGreaterThanBoolean
	self deny:
		self comparableNumberStringValue >
			self comparableTrueValue.
	self deny:
		self comparableZeroStringValue >
			self comparableTrueValue.
	self assert:
		self comparableNumberStringValue >
			self comparableFalseValue.
	self deny:
		self comparableZeroStringValue >
			self comparableFalseValue.