private
afterAddingToCopyLast: aNode
	self set add: aNode.
	observer
		ifNotNil: [observer addedNode: aNode].