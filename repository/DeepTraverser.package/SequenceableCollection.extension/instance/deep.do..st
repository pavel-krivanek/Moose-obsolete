*DeepTraverser
deep: aTraversalBlock do: anObjectActionBlock
	(DeepTraverserWithoutEdges new 
		onNodeTraverse: aTraversalBlock;
		onNodeAction: anObjectActionBlock;
		on: self startWithoutAll: self;
		yourself) run