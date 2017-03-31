tests
testGreaterThanOrEqualToNumber
	self assert:
		self comparableNodeSetWithNumberValues >=
			self comparableNumberValue.
	self assert:
		self comparableNodeSetWithSameNumberValue >=
			self comparableNumberValue.
	self deny:
		self comparableEmptyNodeSet >=
			self comparableNumberValue.

	self deny:
		self comparableNodeSetWithNumberValues >=
			self comparableDisjointNumberValue.
	self deny:
		self comparableNodeSetWithSameNumberValue >=
			self comparableDisjointNumberValue.
	self deny:
		self comparableEmptyNodeSet >=
			self comparableDisjointNumberValue.