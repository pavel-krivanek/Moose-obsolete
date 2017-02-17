tests
testLessThanOrEqualToBoolean
	self assert:
		self comparableNodeSetWithStringValues <=
			self comparableTrueValue.
	self assert:
		self comparableEmptyNodeSet <=
			self comparableTrueValue.
	self deny:
		self comparableNodeSetWithStringValues <=
			self comparableFalseValue.
	self assert:
		self comparableEmptyNodeSet <=
			self comparableFalseValue.