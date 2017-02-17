actions
remove
	"Remove the element from the view. Edges that may be connected are also removed"
	view ifNil: [ self error: 'cannot remove an element that is not part of a view' ].
	view removeElement: self.
	self removeConnectedEdges.
	view := nil 