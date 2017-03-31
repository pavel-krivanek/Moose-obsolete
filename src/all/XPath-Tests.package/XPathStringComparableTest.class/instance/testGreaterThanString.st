tests
testGreaterThanString
	self deny:
		self comparableNumberStringValue >
			self comparableNumberStringValue.
	self assert:
		self comparableDisjointNumberStringValue >
			self comparableNumberStringValue.
	self deny:
		self comparableNumberStringValue >
			self comparableDisjointNumberStringValue.
	self deny:
		self comparableDisjointNumberStringValue >
			self comparableDisjointNumberValue.