tests
testGreaterThanBoolean
	self deny:
		self comparableNodeSetWithStringValues >
			self comparableTrueValue.
	self deny:
		self comparableEmptyNodeSet >
			self comparableTrueValue.
	self assert:
		self comparableNodeSetWithStringValues >
			self comparableFalseValue.
	self deny:
		self comparableEmptyNodeSet >
			self comparableFalseValue.