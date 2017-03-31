tests
testEqualToBoolean
	self assert:
		self comparableNodeSetWithStringValues =
			self comparableTrueValue.
	self deny:
		self comparableEmptyNodeSet =
			self comparableTrueValue.
	self deny:
		self comparableNodeSetWithStringValues =
			self comparableFalseValue.
	self assert:
		self comparableEmptyNodeSet =
			self comparableFalseValue.