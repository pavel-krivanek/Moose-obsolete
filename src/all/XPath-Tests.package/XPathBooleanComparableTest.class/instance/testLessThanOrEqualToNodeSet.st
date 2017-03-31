tests
testLessThanOrEqualToNodeSet
	self assert:
		self comparableTrueValue <=
			self comparableNodeSetWithStringValues.
	self assert:
		self comparableFalseValue <=
			self comparableNodeSetWithStringValues.
	self deny:
		self comparableTrueValue <=
			self comparableEmptyNodeSet.
	self assert:
		self comparableFalseValue <=
			self comparableEmptyNodeSet.