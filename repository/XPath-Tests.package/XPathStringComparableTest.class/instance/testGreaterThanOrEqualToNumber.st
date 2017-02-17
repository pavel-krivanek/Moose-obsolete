tests
testGreaterThanOrEqualToNumber
	self assert:
		self comparableNumberStringValue >=
			self comparableNumberValue.
	self assert:
		self comparableDisjointNumberStringValue >=
			self comparableNumberValue.
	self deny:
		self comparableNumberStringValue >=
			self comparableDisjointNumberValue.
	self assert:
		self comparableDisjointNumberStringValue >=
			self comparableDisjointNumberValue.