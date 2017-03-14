tests
testLessThanNodeSet
	self assert:
		self comparableNumberStringValue <
			self comparableNodeSetWithNumberValues.
	self deny:
		self comparableDisjointNumberStringValue <
			self comparableNodeSetWithNumberValues.

	self deny:
		self comparableNumberStringValue <
			self comparableNodeSetWithSameNumberValue.
	self deny:
		self comparableDisjointNumberStringValue <
			self comparableNodeSetWithSameNumberValue.

	self assert:
		self comparableNumberStringValue <
			self comparableNodeSetWithDisjointNumberValues.
	self assert:
		self comparableDisjointNumberStringValue <
			self comparableNodeSetWithDisjointNumberValues.