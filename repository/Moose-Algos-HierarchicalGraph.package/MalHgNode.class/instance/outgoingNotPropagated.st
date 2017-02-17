enumerating
outgoingNotPropagated
	"Returns all outgoing relationships that were not propagated."
	^ outgoing reject: [ :rel | rel class = MalHgPropagatedEdge ].
