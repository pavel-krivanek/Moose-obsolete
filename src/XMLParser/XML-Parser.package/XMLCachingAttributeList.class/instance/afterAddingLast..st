private
afterAddingLast: aNode
	self attributeNodesByName
		at: aNode name ifPresent: [:duplicate |
			self
				removeDuplicateOf: aNode
				notAt: self size.
			duplicate = aNode
				ifTrue: [^ self]];
		at: aNode name put: aNode.
	observer
		ifNotNil: [observer addedAttribute: aNode].