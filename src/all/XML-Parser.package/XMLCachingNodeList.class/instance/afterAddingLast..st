private
afterAddingLast: aNode
	(aNode hasParentWithNodeList: self)
		ifTrue: [
			self
				removeDuplicateOf: aNode
				notAt: self size.
			aNode isElement
				ifTrue: [self rebuildCachedElements]]
		ifFalse: [
			aNode isElement
				ifTrue: [self cacheElementAddedLast: aNode].
			observer
				ifNotNil: [observer addedNode: aNode]]