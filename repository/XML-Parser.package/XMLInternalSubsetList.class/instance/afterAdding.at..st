private
afterAdding: aNode at: anIndex
	(aNode hasParentWithNodeList: self)
		ifTrue: [
			self
				removeDuplicateOf: aNode
				notAt: anIndex]
		ifFalse: [
			observer
				ifNotNil: [observer addedNode: aNode]]