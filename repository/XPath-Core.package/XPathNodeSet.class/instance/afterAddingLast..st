private
afterAddingLast: aNode
	| oldSize |

	sortOrder := nil.
	oldSize := self set size.
	(self set
		add: aNode;
		size) = oldSize
		ifTrue: [
			self
				removeDuplicateOf: aNode
				notAt: oldSize]
		ifFalse: [
			observer
				ifNotNil: [observer addedNode: aNode]]