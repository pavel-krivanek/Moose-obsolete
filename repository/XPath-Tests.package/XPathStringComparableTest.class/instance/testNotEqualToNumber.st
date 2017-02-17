tests
testNotEqualToNumber
	self deny:
		self comparableNumberStringValue ~=
			self comparableNumberValue.
	self assert:
		self comparableDisjointNumberStringValue ~=
			self comparableNumberValue.
	self assert:
		self comparableEmptyStringValue ~=
			self comparableNumberValue.