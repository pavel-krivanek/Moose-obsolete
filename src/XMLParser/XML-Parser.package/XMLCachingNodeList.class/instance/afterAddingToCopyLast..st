private
afterAddingToCopyLast: aNode
	aNode isElement
		ifTrue: [self cacheElementAddedLast: aNode].
	observer
		ifNotNil: [observer addedNode: aNode].