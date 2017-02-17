tests
testLessThanOrEqualToString
	self assert:
		self comparableNumberValue <=
			self comparableNumberStringValue.
	self deny:
		self comparableDisjointNumberValue <=
			self comparableNumberStringValue.
	self assert:
		self comparableNumberValue <=
			self comparableDisjointNumberStringValue.
	self assert:
		self comparableDisjointNumberValue <=
			self comparableDisjointNumberStringValue.