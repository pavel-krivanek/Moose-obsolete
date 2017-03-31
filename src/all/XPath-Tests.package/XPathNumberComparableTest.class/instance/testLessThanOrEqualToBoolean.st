tests
testLessThanOrEqualToBoolean
	"from the spec:
			'a number is true if and only if it is neither positive or negative
		zero nor NaN'"
	self assert:
		self comparableNumberValue <=
			self comparableTrueValue.
	self deny:
		self comparableInfinityValue <=
			self comparableTrueValue.
	self assert:
		self comparableNegativeInfinityValue <=
			self comparableTrueValue.
	self assert:
		self comparableZeroValue <=
			self comparableTrueValue.
	self assert:
		self comparableNegativeZeroValue <=
			self comparableTrueValue.

	self deny:
		self comparableNumberValue <=
			self comparableFalseValue.
	self deny:
		self comparableInfinityValue <=
			self comparableFalseValue.
	self assert:
		self comparableNegativeInfinityValue <=
			self comparableFalseValue.
	self assert:
		self comparableZeroValue <=
			self comparableFalseValue.
	self assert:
		self comparableNegativeZeroValue <=
			self comparableFalseValue.