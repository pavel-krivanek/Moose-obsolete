tests
testEqualToNumber
	self assert:
		self comparableNumberStringValue =
			self comparableNumberValue.
	self deny:
		self comparableDisjointNumberStringValue =
			self comparableNumberValue.
	self deny:
		self comparableEmptyStringValue =
			self comparableNumberValue.