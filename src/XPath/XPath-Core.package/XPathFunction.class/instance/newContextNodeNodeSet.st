instance creation
newContextNodeNodeSet
	^ self contextNode
		ifNil: [self newNodeSet]
		ifNotNil: [self nodeSetClass with: self contextNode]