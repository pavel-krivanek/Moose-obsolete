private
afterAddingLast: aNode
	(self
		removeDuplicateOf: aNode
		notAt: self size)
		ifNotNil: [:duplicate |
			duplicate = aNode
				ifTrue: [^ self]].
	observer
		ifNotNil: [observer addedAttribute: aNode].