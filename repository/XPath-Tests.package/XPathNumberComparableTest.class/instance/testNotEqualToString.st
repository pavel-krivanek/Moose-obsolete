tests
testNotEqualToString
	self deny:
		self comparableNumberValue ~=
			self comparableNumberStringValue.
	self assert:
		self comparableDisjointNumberValue ~=
			self comparableNumberStringValue.
	self assert:
		self comparableNumberValue ~=
			self comparableEmptyStringValue.