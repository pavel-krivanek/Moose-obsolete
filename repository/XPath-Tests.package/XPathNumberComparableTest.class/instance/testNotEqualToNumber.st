tests
testNotEqualToNumber
	self deny:
		self comparableNumberValue ~=
			self comparableNumberValue.
	self assert:
		self comparableDisjointNumberValue ~=
			self comparableNumberValue.
	self assert:
		self comparableNumberValue ~=
			self comparableDisjointNumberValue.