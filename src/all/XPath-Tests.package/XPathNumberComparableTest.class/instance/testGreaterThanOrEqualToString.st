tests
testGreaterThanOrEqualToString
	self assert:
		self comparableNumberValue >=
			self comparableNumberStringValue.
	self assert:
		self comparableDisjointNumberValue >=
			self comparableNumberStringValue.
	self deny:
		self comparableNumberValue >=
			self comparableDisjointNumberStringValue.
	self assert:
		self comparableDisjointNumberValue >=
			self comparableDisjointNumberStringValue.