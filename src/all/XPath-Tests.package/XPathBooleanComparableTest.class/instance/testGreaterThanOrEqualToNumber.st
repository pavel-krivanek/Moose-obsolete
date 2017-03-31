tests
testGreaterThanOrEqualToNumber
	self assert:
		self comparableTrueValue >=
			self comparableNumberValue.
	self deny:
		self comparableFalseValue >=
			self comparableNumberValue.
	self deny:
		self comparableTrueValue >=
			self comparableInfinityValue.
	self deny:
		self comparableFalseValue >=
			self comparableInfinityValue.
	self assert:
		self comparableTrueValue >=
			self comparableNegativeInfinityValue.
	self assert:
		self comparableFalseValue >=
			self comparableNegativeInfinityValue.

	self assert:
		self comparableTrueValue >=
			self comparableZeroValue.
	self assert:
		self comparableFalseValue >=
			self comparableZeroValue.
	self assert:
		self comparableTrueValue >=
			self comparableNegativeZeroValue.
	self assert:
		self comparableFalseValue >=
			self comparableNegativeZeroValue.