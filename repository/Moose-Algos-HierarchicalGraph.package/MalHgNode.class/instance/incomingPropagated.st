enumerating
incomingPropagated
	"Returns all incoming edges that were propagated."
	^ incoming select: [ :rel | rel class = MalHgPropagatedEdge ].
