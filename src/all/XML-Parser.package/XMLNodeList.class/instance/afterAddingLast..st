private
afterAddingLast: aNode
	(aNode hasParentWithNodeList: self)
		ifTrue: [
			self
				removeDuplicateOf: aNode
				notAt: self size]
		ifFalse: [
			observer
				ifNotNil: [observer addedNode: aNode]]