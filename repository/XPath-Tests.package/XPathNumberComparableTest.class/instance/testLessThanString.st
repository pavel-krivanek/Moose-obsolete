tests
testLessThanString
	self deny:
		self comparableNumberValue <
			self comparableNumberStringValue.
	self deny:
		self comparableDisjointNumberValue <
			self comparableNumberStringValue.
	self assert:
		self comparableNumberValue <
			self comparableDisjointNumberStringValue.
	self deny:
		self comparableDisjointNumberValue <
			self comparableDisjointNumberStringValue.