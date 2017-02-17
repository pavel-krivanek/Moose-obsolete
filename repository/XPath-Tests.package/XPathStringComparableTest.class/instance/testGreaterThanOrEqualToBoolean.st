tests
testGreaterThanOrEqualToBoolean
	self assert:
		self comparableNumberStringValue >=
			self comparableTrueValue.
	self deny:
		self comparableZeroStringValue >=
			self comparableTrueValue.
	self assert:
		self comparableNumberStringValue >=
			self comparableFalseValue.
	self assert:
		self comparableZeroStringValue >=
			self comparableFalseValue.