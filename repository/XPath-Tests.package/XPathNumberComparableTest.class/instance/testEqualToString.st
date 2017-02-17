tests
testEqualToString
	self assert:
		self comparableNumberValue =
			self comparableNumberStringValue.
	self deny:
		self comparableDisjointNumberValue =
			self comparableNumberStringValue.
	self deny:
		self comparableNumberValue =
			self comparableEmptyStringValue.