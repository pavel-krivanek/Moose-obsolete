tests
testLessThanOrEqualToNumber
	self assert:
		self comparableTrueValue <=
			self comparableNumberValue.
	self assert:
		self comparableFalseValue <=
			self comparableNumberValue.
	self assert:
		self comparableTrueValue <=
			self comparableInfinityValue.
	self assert:
		self comparableFalseValue <=
			self comparableInfinityValue.
	self deny:
		self comparableTrueValue <=
			self comparableNegativeInfinityValue.
	self deny:
		self comparableFalseValue <=
			self comparableNegativeInfinityValue.

	self deny:
		self comparableTrueValue <=
			self comparableZeroValue.
	self assert:
		self comparableFalseValue <=
			self comparableZeroValue.
	self deny:
		self comparableTrueValue <=
			self comparableNegativeZeroValue.
	self assert:
		self comparableFalseValue <=
			self comparableNegativeZeroValue.