accessing
edges: anActivityEdge
	"ActivityEdges expressing flow between the nodes of the Activity."
	self edges
		removeAll;
		addAll: anActivityEdge