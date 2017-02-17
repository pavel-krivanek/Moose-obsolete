tests
testNotEqualToString
	self deny:
		self comparableStringValue ~=
			self comparableStringValue.
	self assert:
		self comparableStringValue ~=
			self comparableDisjointStringValue.
	self assert:
		self comparableDisjointStringValue ~=
			self comparableStringValue.
	self assert:
		self comparableStringValue ~=
			self comparableEmptyStringValue.
	self assert:
		self comparableEmptyStringValue ~=
			self comparableStringValue.
	self deny:
		self comparableEmptyStringValue ~=
			self comparableEmptyStringValue.