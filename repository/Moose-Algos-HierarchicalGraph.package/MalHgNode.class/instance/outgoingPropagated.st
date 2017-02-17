enumerating
outgoingPropagated
	"Returns all outgoing relationships that were propagated."
	^ outgoing select: [ :rel | rel class = MalHgPropagatedEdge ].
