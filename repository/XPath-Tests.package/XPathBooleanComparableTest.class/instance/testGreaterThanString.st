tests
testGreaterThanString
	self deny:
		self comparableTrueValue >
			self comparableNumberStringValue.
	self deny:
		self comparableFalseValue >
			self comparableNumberStringValue.
	self assert:
		self comparableTrueValue >
			self comparableZeroStringValue.
	self deny:
		self comparableFalseValue >
			self comparableZeroStringValue.