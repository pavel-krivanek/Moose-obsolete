private
afterAddingToCopyLast: aNode
	observer
		ifNotNil: [observer addedNode: aNode]