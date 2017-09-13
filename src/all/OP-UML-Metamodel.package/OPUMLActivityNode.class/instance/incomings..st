accessing
incomings: anActivityEdge
	"ActivityEdges that have the ActivityNode as their target."
	self incomings
		removeAll;
		addAll: anActivityEdge