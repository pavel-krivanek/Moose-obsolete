tests
testGreaterThanNumber
	self deny:
		self comparableNumberValue >
			self comparableNumberValue.
	self assert:
		self comparableDisjointNumberValue >
			self comparableNumberValue.
	self deny:
		self comparableNumberValue >
			self comparableDisjointNumberValue.