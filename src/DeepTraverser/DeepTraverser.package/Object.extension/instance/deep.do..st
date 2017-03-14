*DeepTraverser
deep: aTraversalBlock do: anObjectActionBlock
	"traverses all objects starting with the receiver using aTraversalBlock, and
	for each triggers anObjectActionBlock.
	
	For example:
	Number
		deep: #subclasses 
		do: [:each | Transcript show: each; cr]"
	
	(DeepTraverserWithoutEdges new 
		onNodeTraverse: aTraversalBlock;
		onNodeAction: anObjectActionBlock;
		on: self startWithout: self;
		yourself) run