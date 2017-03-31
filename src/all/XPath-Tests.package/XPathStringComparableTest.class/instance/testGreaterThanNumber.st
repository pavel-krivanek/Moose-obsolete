tests
testGreaterThanNumber
	self deny:
		self comparableNumberStringValue >
			self comparableNumberValue.
	self assert:
		self comparableDisjointNumberStringValue >
			self comparableNumberValue.
	self deny:
		self comparableNumberStringValue >
			self comparableDisjointNumberValue.
	self deny:
		self comparableDisjointNumberStringValue >
			self comparableDisjointNumberValue.