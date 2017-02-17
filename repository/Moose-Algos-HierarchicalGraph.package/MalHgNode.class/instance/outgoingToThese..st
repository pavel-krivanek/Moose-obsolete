enumerating
outgoingToThese: aNodeCollection
	"Returns all relationships that are outgoing to given one or more of given node collection, empty collection if no such relationship was found."
	 | resultSet |
	resultSet := Set new.
	aNodeCollection do: [ :node |
		resultSet addAll: (self outgoingTo: node).
	].
	^ resultSet.
	