tests
testLessThanNumber
	self deny:
		self comparableNumberStringValue <
			self comparableNumberValue.
	self deny:
		self comparableDisjointNumberStringValue <
			self comparableNumberValue.
	self assert:
		self comparableNumberStringValue <
			self comparableDisjointNumberValue.
	self deny:
		self comparableDisjointNumberStringValue <
			self comparableDisjointNumberValue.