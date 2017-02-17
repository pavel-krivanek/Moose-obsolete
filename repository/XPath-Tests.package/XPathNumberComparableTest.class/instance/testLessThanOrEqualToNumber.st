tests
testLessThanOrEqualToNumber
	self assert:
		self comparableNumberValue <=
			self comparableNumberValue.
	self deny:
		self comparableDisjointNumberValue <=
			self comparableNumberValue.
	self assert:
		self comparableNumberValue <=
			self comparableDisjointNumberValue.