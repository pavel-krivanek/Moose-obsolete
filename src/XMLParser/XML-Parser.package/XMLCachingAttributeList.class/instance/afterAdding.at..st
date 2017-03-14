private
afterAdding: aNode at: anIndex
	self attributeNodesByName
		at: aNode name ifPresent: [:duplicate |
			self
				removeDuplicateOf: aNode
				notAt: anIndex.
			duplicate = aNode
				ifTrue: [^ self]];
		at: aNode name put: aNode.
	observer
		ifNotNil: [observer addedAttribute: aNode].