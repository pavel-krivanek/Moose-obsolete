accessing
edges: aLevel
	"Return all edges, incoming and outgoing, on given level as a Set."
	^ (Set newFrom: (self incomingEdges: aLevel)) addAll: (self outgoingEdges: aLevel).
