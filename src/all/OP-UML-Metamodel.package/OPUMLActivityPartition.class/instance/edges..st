accessing
edges: anActivityEdge
	"ActivityEdges immediately contained in the ActivityPartition."
	self edges
		removeAll;
		addAll: anActivityEdge