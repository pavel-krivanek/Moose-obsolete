tests
testGreaterThanNodeSet
	self deny:
		self comparableTrueValue >
			self comparableNodeSetWithStringValues.
	self deny:
		self comparableFalseValue >
			self comparableNodeSetWithStringValues.
	self assert:
		self comparableTrueValue >
			self comparableEmptyNodeSet.
	self deny:
		self comparableFalseValue >
			self comparableEmptyNodeSet.