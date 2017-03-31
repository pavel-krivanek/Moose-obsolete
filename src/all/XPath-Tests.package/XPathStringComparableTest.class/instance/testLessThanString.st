tests
testLessThanString
	self deny:
		self comparableNumberStringValue <
			self comparableNumberStringValue.
	self deny:
		self comparableDisjointNumberStringValue <
			self comparableNumberStringValue.
	self assert:
		self comparableNumberStringValue <
			self comparableDisjointNumberStringValue.
	self deny:
		self comparableDisjointNumberStringValue <
			self comparableDisjointNumberValue.