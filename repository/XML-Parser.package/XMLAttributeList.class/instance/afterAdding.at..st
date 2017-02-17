private
afterAdding: aNode at: anIndex
	(self
		removeDuplicateOf: aNode
		notAt: anIndex)
		ifNotNil: [:duplicate |
			duplicate = aNode
				ifTrue: [^ self]].
	observer
		ifNotNil: [observer addedAttribute: aNode].