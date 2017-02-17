tests
testGreaterThanOrEqualToNodeSet
	self assert:
		self comparableNumberStringValue >=
			self comparableNodeSetWithNumberValues.
	self assert:
		self comparableDisjointNumberStringValue >=
			self comparableNodeSetWithNumberValues.

	self assert:
		self comparableNumberStringValue >=
			self comparableNodeSetWithSameNumberValue.
	self assert:
		self comparableDisjointNumberStringValue >=
			self comparableNodeSetWithSameNumberValue.

	self deny:
		self comparableNumberStringValue >=
			self comparableNodeSetWithDisjointNumberValues.
	self assert:
		self comparableDisjointNumberStringValue >=
			self comparableNodeSetWithDisjointNumberValues.