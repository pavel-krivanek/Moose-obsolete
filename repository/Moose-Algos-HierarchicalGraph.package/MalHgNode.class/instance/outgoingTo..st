enumerating
outgoingTo: aNode
	"Returns all relationships that are outgoing to given node, empty collection if no such relationship was found."
	| resultSet |
	resultSet := Set new.
	self outgoing do: [:rel | 
		(rel to == aNode) ifTrue: [
			resultSet add: rel.
		].
	].
	^ resultSet.