tests
testEqualToNodeSet
	"From the spec:
			'If both objects to be compared are node-sets, then the comparison will
		be true if and only if there is a node in the first node-set and a node in
		the second node-set such that the result of performing the comparison on
		the string-values of the two nodes is true'"

	"as long as two node sets have one string value in common, they are equal"
	self assert:
		self comparableNodeSetWithStringValues =
			self comparableNodeSetWithStringValues.
	self assert:
		self comparableNodeSetWithStringValues =
			self comparableNodeSetWithSameStringValue.
	self assert:
		self comparableNodeSetWithSameStringValue =
			self comparableNodeSetWithStringValues.
	self assert:
		self comparableNodeSetWithSameStringValue =
			self comparableNodeSetWithSameStringValue.

	"if they don't have at least one string value in common, they aren't equal"
	self deny:
		self comparableNodeSetWithStringValues =
			self comparableNodeSetWithDisjointStringValues.
	self deny:
		self comparableNodeSetWithDisjointStringValues =
			self comparableNodeSetWithStringValues.
	self deny:
		self comparableNodeSetWithSameStringValue =
			self comparableNodeSetWithDisjointStringValues.
	self deny:
		self comparableNodeSetWithDisjointStringValues =
			self comparableNodeSetWithSameStringValue.

	"no node set equals the empty node set, even itself"
	self deny:
		self comparableEmptyNodeSet =
			self comparableEmptyNodeSet.
	self deny:
		self comparableNodeSetWithStringValues =
			self comparableEmptyNodeSet.
	self deny:
		self comparableEmptyNodeSet =
			self comparableNodeSetWithStringValues.
	self deny:
		self comparableNodeSetWithSameStringValue =
			self comparableEmptyNodeSet.
	self deny:
		self comparableEmptyNodeSet =
			self comparableNodeSetWithSameStringValue.