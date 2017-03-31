tests
testLessThanNodeSet
	"From the spec:
			'If both objects to be compared are node-sets, then the comparison will
		be true if and only if there is a node in the first node-set and a node in
		the second node-set such that the result of performing the comparison on
		the string-values of the two nodes is true'"

	self assert:
		self comparableNodeSetWithNumberValues <
			self comparableNodeSetWithNumberValues.
	self deny:
		self comparableNodeSetWithNumberValues <
			self comparableNodeSetWithSameNumberValue.
	self assert:
		self comparableNodeSetWithSameNumberValue <
			self comparableNodeSetWithNumberValues.
	self deny:
		self comparableNodeSetWithSameNumberValue <
			self comparableNodeSetWithSameNumberValue.

	"the disjoint values are all greater than"
	self assert:
		self comparableNodeSetWithNumberValues <
			self comparableNodeSetWithDisjointNumberValues.
	self deny:
		self comparableNodeSetWithDisjointNumberValues <
			self comparableNodeSetWithNumberValues.
	self assert:
		self comparableNodeSetWithSameNumberValue <
			self comparableNodeSetWithDisjointNumberValues.
	self deny:
		self comparableNodeSetWithDisjointNumberValues <
			self comparableNodeSetWithSameNumberValue.

	self deny:
		self comparableEmptyNodeSet <
			self comparableEmptyNodeSet.
	self deny:
		self comparableNodeSetWithNumberValues <
			self comparableEmptyNodeSet.
	self deny:
		self comparableEmptyNodeSet <
			self comparableNodeSetWithNumberValues.
	self deny:
		self comparableNodeSetWithSameNumberValue <
			self comparableEmptyNodeSet.
	self deny:
		self comparableEmptyNodeSet <
			self comparableNodeSetWithSameNumberValue.