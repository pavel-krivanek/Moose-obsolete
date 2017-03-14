middle-phase
computeNextLevelNodes: aCollection
	"next level nodes are all the nodes that are the descendants of the nodes in the collection and that have more than one descendants. If a node has a single descendant, it means that it is coverging to the bottom of the module, so we dont consider it."
	
	^ (aCollection select: [:each | (each descendants size > 1)]) flatCollect: [:each | each descendants]