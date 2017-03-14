tests
testEqualToNumber
	self assert:
		self comparableNumberValue =
			self comparableNumberValue.
	self deny:
		self comparableDisjointNumberValue =
			self comparableNumberValue.
	self deny:
		self comparableNumberValue =
			self comparableDisjointNumberValue.