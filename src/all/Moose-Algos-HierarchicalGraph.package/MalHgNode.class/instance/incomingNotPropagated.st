enumerating
incomingNotPropagated
	"Returns all incoming edges that were not propagated."
	^ incoming reject: [ :rel | rel class = MalHgPropagatedEdge ].
