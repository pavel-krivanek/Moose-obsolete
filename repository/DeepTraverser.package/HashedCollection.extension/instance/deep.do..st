*DeepTraverser
deep: aTraversalBlock do: anObjectActionBlock
	(DeepTraverserWithoutEdges new 
		onNodeTraverse: aTraversalBlock;
		onNodeAction: anObjectActionBlock;
		on: self startWithout: self keys anyOne;
		yourself) run