accessing
interruptingEdges: anActivityEdge
	"The ActivityEdges leaving the InterruptibleActivityRegion on which a traversing token will result in the termination of other tokens flowing in the InterruptibleActivityRegion."
	self interruptingEdges
		removeAll;
		addAll: anActivityEdge