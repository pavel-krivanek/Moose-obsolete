actions
remove
	view ifNil: [ self error: 'cannot remove an element that is not part of a view' ].
	to connectedEdges remove: self ifAbsent: [ ].
	from connectedEdges remove: self ifAbsent: [ ].
	view removeEdge: self.
	view := nil