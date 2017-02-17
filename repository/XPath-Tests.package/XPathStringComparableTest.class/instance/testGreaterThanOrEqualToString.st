tests
testGreaterThanOrEqualToString
	self assert:
		self comparableNumberStringValue >=
			self comparableNumberStringValue.
	self assert:
		self comparableDisjointNumberStringValue >=
			self comparableNumberStringValue.
	self deny:
		self comparableNumberStringValue >=
			self comparableDisjointNumberStringValue.
	self assert:
		self comparableDisjointNumberStringValue >=
			self comparableDisjointNumberValue.