enumerating
edgesPropagated
	"Returns a Collection of all edges that were propagated in this hiGraph."
	^ edges select: [ :rel | rel class = MalHgPropagatedEdge ].