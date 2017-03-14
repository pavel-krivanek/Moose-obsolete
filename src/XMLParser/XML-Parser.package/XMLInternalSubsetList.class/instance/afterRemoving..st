private
afterRemoving: aNode
	observer ifNotNil: [observer removedNode: aNode]