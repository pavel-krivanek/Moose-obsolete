asserting
assertNodeSet: aNodeSet hasNode: aNode
	self
		assert: aNodeSet size = 1;
		assert: (aNodeSet includes: aNode)