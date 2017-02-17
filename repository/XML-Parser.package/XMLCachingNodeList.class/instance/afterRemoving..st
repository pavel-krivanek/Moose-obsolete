private
afterRemoving: aNode
	aNode isElement
		ifTrue: [self uncacheElement: aNode].
	observer
		ifNotNil: [observer removedNode: aNode].