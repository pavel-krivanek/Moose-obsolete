accessing
edges: anActivityEdge
	"The ActivityEdges immediately contained in the StructuredActivityNode."
	self edges
		removeAll;
		addAll: anActivityEdge