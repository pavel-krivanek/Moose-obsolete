tests
testGreaterThanString
	self deny:
		self comparableNumberValue >
			self comparableNumberStringValue.
	self assert:
		self comparableDisjointNumberValue >
			self comparableNumberStringValue.
	self deny:
		self comparableNumberValue >
			self comparableDisjointNumberStringValue.
	self deny:
		self comparableDisjointNumberValue >
			self comparableDisjointNumberStringValue.