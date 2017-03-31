asserting
assertNodeSet: aNodeSet hasNode: aNode
	self
		assertNodeSet: aNodeSet
		hasNodes: (self nodeSetClass with: aNode)