private
afterRemoving: aNode
	observer
		ifNotNil: [observer removedAttribute: aNode].