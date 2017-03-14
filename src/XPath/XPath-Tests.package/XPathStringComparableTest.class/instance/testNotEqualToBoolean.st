tests
testNotEqualToBoolean
	"From the spec:
		'If at least one object to be compared is a boolean, then each object
	to be compared is converted to a boolean as if by applying the boolean
	function'"
	self deny:
		self comparableStringValue ~=
			self comparableTrueValue.
	self assert:
		self comparableStringValue ~=
			self comparableFalseValue.
	self assert:
		self comparableEmptyStringValue ~=
			self comparableTrueValue.
	self deny:
		self comparableEmptyStringValue ~=
			self comparableFalseValue.