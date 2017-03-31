tests
testNotEqualToString
	self deny:
		self comparableTrueValue ~=
			self comparableStringValue.
	self assert:
		self comparableFalseValue ~=
			self comparableStringValue.
	self assert:
		self comparableTrueValue ~=
			self comparableEmptyStringValue.
	self deny:
		self comparableFalseValue ~=
			self comparableEmptyStringValue.