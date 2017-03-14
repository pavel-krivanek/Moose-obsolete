private
afterAddingToCopyLast: aNode
	observer
		ifNotNil: [observer addedAttribute: aNode]