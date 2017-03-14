private
afterRemoving: aNode
	self attributeNodesByName removeKey: aNode name.
	observer
		ifNotNil: [observer removedAttribute: aNode].