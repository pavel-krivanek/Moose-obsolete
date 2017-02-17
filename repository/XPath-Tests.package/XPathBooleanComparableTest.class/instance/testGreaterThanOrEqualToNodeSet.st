tests
testGreaterThanOrEqualToNodeSet
	self assert:
		self comparableTrueValue >=
			self comparableNodeSetWithStringValues.
	self deny:
		self comparableFalseValue >=
			self comparableNodeSetWithStringValues.
	self assert:
		self comparableTrueValue >=
			self comparableEmptyNodeSet.
	self assert:
		self comparableFalseValue >=
			self comparableEmptyNodeSet.