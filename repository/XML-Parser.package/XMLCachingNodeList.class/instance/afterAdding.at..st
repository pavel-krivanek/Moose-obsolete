private
afterAdding: aNode at: anIndex
	(aNode hasParentWithNodeList: self)
		ifTrue: [
			self
				removeDuplicateOf: aNode
				notAt: anIndex.
			aNode isElement
				ifTrue: [self rebuildCachedElements]]
		ifFalse: [
			aNode isElement
				ifTrue: [
					self
						cacheElement: aNode
						addedAt: anIndex].
			observer
				ifNotNil: [observer addedNode: aNode]]