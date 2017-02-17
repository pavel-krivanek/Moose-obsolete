tests
testGreaterThanNodeSet
	self deny:
		self comparableNumberStringValue >
			self comparableNodeSetWithNumberValues.
	self assert:
		self comparableDisjointNumberStringValue >
			self comparableNodeSetWithNumberValues.

	self deny:
		self comparableNumberStringValue >
			self comparableNodeSetWithSameNumberValue.
	self assert:
		self comparableDisjointNumberStringValue >
			self comparableNodeSetWithSameNumberValue.

	self deny:
		self comparableNumberStringValue >
			self comparableNodeSetWithDisjointNumberValues.
	self deny:
		self comparableDisjointNumberStringValue >
			self comparableNodeSetWithDisjointNumberValues.