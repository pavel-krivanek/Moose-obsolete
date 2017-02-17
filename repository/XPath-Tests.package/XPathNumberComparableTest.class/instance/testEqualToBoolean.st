tests
testEqualToBoolean
	"from the spec:
			'a number is true if and only if it is neither positive or negative
		zero nor NaN'"
	self assert:
		self comparableNumberValue =
			self comparableTrueValue.
	self assert:
		self comparableInfinityValue =
			self comparableTrueValue.
	self assert:
		self comparableNegativeInfinityValue =
			self comparableTrueValue.
	self deny:
		self comparableZeroValue =
			self comparableTrueValue.
	self deny:
		self comparableNegativeZeroValue =
			self comparableTrueValue.
	self deny:
		self comparableNaNValue =
			self comparableTrueValue.

	self deny:
		self comparableNumberValue =
			self comparableFalseValue.
	self deny:
		self comparableInfinityValue =
			self comparableFalseValue.
	self deny:
		self comparableNegativeInfinityValue =
			self comparableFalseValue.
	self assert:
		self comparableZeroValue =
			self comparableFalseValue.
	self assert:
		self comparableNegativeZeroValue =
			self comparableFalseValue.
	self assert:
		self comparableNaNValue =
			self comparableFalseValue.