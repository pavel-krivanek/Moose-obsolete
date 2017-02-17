tests
testNotEqualToNodeSet
	self assert:
		self comparableStringValue ~=
			self comparableNodeSetWithStringValues.
	self assert:
		self comparableDisjointStringValue ~=
			self comparableNodeSetWithStringValues.
	self deny:
		self comparableStringValue ~=
			self comparableNodeSetWithSameStringValue.
	self assert:
		self comparableDisjointStringValue ~=
			self comparableNodeSetWithSameStringValue.
	self deny:
		self comparableStringValue ~=
			self comparableEmptyNodeSet.