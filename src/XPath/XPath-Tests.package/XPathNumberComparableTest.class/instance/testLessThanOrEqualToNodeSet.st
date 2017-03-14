tests
testLessThanOrEqualToNodeSet
	self assert:
		self comparableNumberValue <=
			self comparableNodeSetWithNumberValues.
	self deny:
		self comparableDisjointNumberValue <=
			self comparableNodeSetWithNumberValues.
	self assert:
		self comparableNumberValue <=
			self comparableNodeSetWithSameNumberValue.
	self deny:
		self comparableDisjointNumberValue <=
			self comparableNodeSetWithSameNumberValue.
	self deny:
		self comparableNumberValue <=
			self comparableEmptyNodeSet.