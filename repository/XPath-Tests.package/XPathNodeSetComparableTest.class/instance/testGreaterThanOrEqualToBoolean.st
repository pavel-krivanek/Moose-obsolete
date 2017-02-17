tests
testGreaterThanOrEqualToBoolean
	self assert:
		self comparableNodeSetWithStringValues >=
			self comparableTrueValue.
	self deny:
		self comparableEmptyNodeSet >=
			self comparableTrueValue.
	self assert:
		self comparableNodeSetWithStringValues >=
			self comparableFalseValue.
	self assert:
		self comparableEmptyNodeSet >=
			self comparableFalseValue.