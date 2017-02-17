initialization
addConnectedEdge: anEdge
	[ anEdge class == RTEdge ] assert.
	(self connectedEdges includes: anEdge) 
		ifFalse: [ self connectedEdges add: anEdge ]