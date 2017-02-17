tests
testLessThanNumber
	self deny:
		self comparableNumberValue <
			self comparableNumberValue.
	self deny:
		self comparableDisjointNumberValue <
			self comparableNumberValue.
	self assert:
		self comparableNumberValue <
			self comparableDisjointNumberValue.