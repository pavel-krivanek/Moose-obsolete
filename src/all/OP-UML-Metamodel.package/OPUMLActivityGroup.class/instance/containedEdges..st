accessing
containedEdges: anActivityEdge
	"ActivityEdges immediately contained in the ActivityGroup."
	self containedEdges
		removeAll;
		addAll: anActivityEdge