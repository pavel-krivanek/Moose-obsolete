tests
testNotEqualToNodeSet
	"From the spec:
			'If both objects to be compared are node-sets, then the comparison will
		be true if and only if there is a node in the first node-set and a node in
		the second node-set such that the result of performing the comparison on
		the string-values of the two nodes is true'"

	"as long as two node sets have more than one string value, even if they have
	the same string values, they are not equal"
	self assert:
		self comparableNodeSetWithStringValues ~=
			self comparableNodeSetWithStringValues.
	self assert:
		self comparableNodeSetWithStringValues ~=
			self comparableNodeSetWithSameStringValue.
	self assert:
		self comparableNodeSetWithSameStringValue ~=
			self comparableNodeSetWithStringValues.
	self deny:
		self comparableNodeSetWithSameStringValue ~=
			self comparableNodeSetWithSameStringValue.

	"if they are non empty and have no string values in common, they are
	not equal"
	self assert:
		self comparableNodeSetWithStringValues ~=
			self comparableNodeSetWithDisjointStringValues.
	self assert:
		self comparableNodeSetWithDisjointStringValues ~=
			self comparableNodeSetWithStringValues.
	self assert:
		self comparableNodeSetWithSameStringValue ~=
			self comparableNodeSetWithDisjointStringValues.
	self assert:
		self comparableNodeSetWithDisjointStringValues ~=
			self comparableNodeSetWithSameStringValue.

	"no node is not equal to the empty node set, even itself"
	self deny:
		self comparableEmptyNodeSet ~=
			self comparableEmptyNodeSet.
	self deny:
		self comparableNodeSetWithStringValues ~=
			self comparableEmptyNodeSet.
	self deny:
		self comparableEmptyNodeSet ~=
			self comparableNodeSetWithStringValues.
	self deny:
		self comparableNodeSetWithSameStringValue ~=
			self comparableEmptyNodeSet.
	self deny:
		self comparableEmptyNodeSet ~=
			self comparableNodeSetWithSameStringValue.