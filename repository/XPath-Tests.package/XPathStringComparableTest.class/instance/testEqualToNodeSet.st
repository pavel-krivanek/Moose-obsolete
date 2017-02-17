tests
testEqualToNodeSet
	self assert:
		self comparableStringValue =
			self comparableNodeSetWithStringValues.
	self deny:
		self comparableDisjointStringValue =
			self comparableNodeSetWithStringValues.
	self assert:
		self comparableStringValue =
			self comparableNodeSetWithSameStringValue.
	self deny:
		self comparableDisjointStringValue =
			self comparableNodeSetWithSameStringValue.
	self deny:
		self comparableStringValue =
			self comparableEmptyNodeSet.