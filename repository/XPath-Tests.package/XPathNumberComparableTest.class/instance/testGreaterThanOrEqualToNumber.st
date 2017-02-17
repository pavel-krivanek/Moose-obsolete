tests
testGreaterThanOrEqualToNumber
	self assert:
		self comparableNumberValue >=
			self comparableNumberValue.
	self assert:
		self comparableDisjointNumberValue >=
			self comparableNumberValue.
	self deny:
		self comparableNumberValue >=
			self comparableDisjointNumberValue.