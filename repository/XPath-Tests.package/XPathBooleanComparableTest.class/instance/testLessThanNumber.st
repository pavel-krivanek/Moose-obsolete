tests
testLessThanNumber
	self deny:
		self comparableTrueValue <
			self comparableNumberValue.
	self assert:
		self comparableFalseValue <
			self comparableNumberValue.
	self assert:
		self comparableTrueValue <
			self comparableInfinityValue.
	self assert:
		self comparableFalseValue <
			self comparableInfinityValue.
	self deny:
		self comparableTrueValue <
			self comparableNegativeInfinityValue.
	self deny:
		self comparableFalseValue <
			self comparableNegativeInfinityValue.

	self deny:
		self comparableTrueValue <
			self comparableZeroValue.
	self deny:
		self comparableFalseValue <
			self comparableZeroValue.
	self deny:
		self comparableTrueValue <
			self comparableNegativeZeroValue.
	self deny:
		self comparableFalseValue <
			self comparableNegativeZeroValue.