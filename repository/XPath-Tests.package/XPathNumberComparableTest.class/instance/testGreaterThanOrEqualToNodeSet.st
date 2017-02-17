tests
testGreaterThanOrEqualToNodeSet
	self assert:
		self comparableNumberValue >=
			self comparableNodeSetWithNumberValues.
	self assert:
		self comparableDisjointNumberValue >=
			self comparableNodeSetWithNumberValues.
	self assert:
		self comparableNumberValue >=
			self comparableNodeSetWithSameNumberValue.
	self assert:
		self comparableDisjointNumberValue >=
			self comparableNodeSetWithSameNumberValue.
	self deny:
		self comparableNumberValue >=
			self comparableEmptyNodeSet.