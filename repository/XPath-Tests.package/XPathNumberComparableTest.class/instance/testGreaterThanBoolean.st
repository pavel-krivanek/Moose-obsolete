tests
testGreaterThanBoolean
	"from the spec:
			'a number is true if and only if it is neither positive or negative
		zero nor NaN'"
	self deny:
		self comparableNumberValue >
			self comparableTrueValue.
	self assert:
		self comparableInfinityValue >
			self comparableTrueValue.
	self deny:
		self comparableNegativeInfinityValue >
			self comparableTrueValue.
	self deny:
		self comparableZeroValue >
			self comparableTrueValue.
	self deny:
		self comparableNegativeZeroValue >
			self comparableTrueValue.

	self assert:
		self comparableNumberValue >
			self comparableFalseValue.
	self assert:
		self comparableInfinityValue >
			self comparableFalseValue.
	self deny:
		self comparableNegativeInfinityValue >
			self comparableFalseValue.
	self deny:
		self comparableZeroValue >
			self comparableFalseValue.
	self deny:
		self comparableNegativeZeroValue >
			self comparableFalseValue.