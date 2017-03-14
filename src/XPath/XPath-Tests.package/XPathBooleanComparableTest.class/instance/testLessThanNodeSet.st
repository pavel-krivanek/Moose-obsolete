tests
testLessThanNodeSet
	self deny:
		self comparableTrueValue <
			self comparableNodeSetWithStringValues.
	self assert:
		self comparableFalseValue <
			self comparableNodeSetWithStringValues.
	self deny:
		self comparableTrueValue <
			self comparableEmptyNodeSet.
	self deny:
		self comparableFalseValue <
			self comparableEmptyNodeSet.