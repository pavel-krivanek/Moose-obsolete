enumerating
edgesNotPropagated
	"Returns a Collection of all edges that were not propagated in this hiGraph."
	^ edges reject: [ :rel | rel class = MalHgPropagatedEdge ].