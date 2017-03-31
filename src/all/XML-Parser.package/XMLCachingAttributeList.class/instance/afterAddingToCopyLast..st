private
afterAddingToCopyLast: aNode
	self attributeNodesByName
		at: aNode name
		put: aNode.
	observer
		ifNotNil: [observer addedAttribute: aNode].