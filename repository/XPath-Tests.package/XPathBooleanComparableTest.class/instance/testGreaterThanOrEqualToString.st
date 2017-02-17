tests
testGreaterThanOrEqualToString
	self assert:
		self comparableTrueValue >=
			self comparableNumberStringValue.
	self deny:
		self comparableFalseValue >=
			self comparableNumberStringValue.
	self assert:
		self comparableTrueValue >=
			self comparableZeroStringValue.
	self assert:
		self comparableFalseValue >=
			self comparableZeroStringValue.