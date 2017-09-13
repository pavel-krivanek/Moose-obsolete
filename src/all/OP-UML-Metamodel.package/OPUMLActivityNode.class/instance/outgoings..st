accessing
outgoings: anActivityEdge
	"ActivityEdges that have the ActivityNode as their source."
	self outgoings
		removeAll;
		addAll: anActivityEdge