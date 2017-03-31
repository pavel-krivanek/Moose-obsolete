tests
testLessThanOrEqualToString
	self assert:
		self comparableNumberStringValue <=
			self comparableNumberStringValue.
	self deny:
		self comparableDisjointNumberStringValue <=
			self comparableNumberStringValue.
	self assert:
		self comparableNumberStringValue <=
			self comparableDisjointNumberStringValue.
	self assert:
		self comparableDisjointNumberStringValue <=
			self comparableDisjointNumberValue.