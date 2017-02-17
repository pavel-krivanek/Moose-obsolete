tests
testEqualToString
	"From the spec: 
			'If one object to be compared is a node-set and the other is a string,
		then the comparison will be true if and only if there is a node in the
		node-set such that the result of performing the comparison on the
		string-value of the node and the other string is true.'"
	self assert:
		self comparableNodeSetWithStringValues =
			self comparableStringValue.
	self assert:
		self comparableNodeSetWithSameStringValue =
			self comparableStringValue.
	self deny:
		self comparableNodeSetWithDisjointStringValues =
			self comparableStringValue.
	self deny:
		self comparableEmptyNodeSet =
			self comparableStringValue.
	self deny:
		self comparableEmptyNodeSet =
			self comparableEmptyStringValue.