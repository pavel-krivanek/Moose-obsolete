tests
testLessThanOrEqualToNumber
	self assert:
		self comparableNumberStringValue <=
			self comparableNumberValue.
	self deny:
		self comparableDisjointNumberStringValue <=
			self comparableNumberValue.
	self assert:
		self comparableNumberStringValue <=
			self comparableDisjointNumberValue.
	self assert:
		self comparableDisjointNumberStringValue <=
			self comparableDisjointNumberValue.