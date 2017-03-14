api
nodes: aCollection
	"Adds base entites (can be root or leaf nodes) to the graph from which we will start building the complete graph.
	This has to be done before calling blockToGetChildren or blockToGetParent."
	
	"Adding given entites as MalHgNode to the nodesDict."
	aCollection do: [ :anEntity | 
		nodes at: anEntity put: (MalHgNode in: self with: anEntity).
	]