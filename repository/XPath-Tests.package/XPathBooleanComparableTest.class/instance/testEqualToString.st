tests
testEqualToString
	self assert:
		self comparableTrueValue =
			self comparableStringValue.
	self deny:
		self comparableFalseValue =
			self comparableStringValue.
	self deny:
		self comparableTrueValue =
			self comparableEmptyStringValue.
	self assert:
		self comparableFalseValue =
			self comparableEmptyStringValue.