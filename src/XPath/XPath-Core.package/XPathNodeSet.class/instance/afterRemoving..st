private
afterRemoving: aNode
	"removing does not change order, so sortOrder is not reset here"
	self set remove: aNode.
	observer
		ifNotNil: [observer removedNode: aNode].