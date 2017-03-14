*DeepTraverser
withDeep: aTraversalBlock do: anObjectActionBlock
	" wie cannot traverse this graph without all items of self - so we include them "
	(DeepTraverserWithoutEdges new 
		onNodeTraverse: aTraversalBlock;
		onNodeAction: anObjectActionBlock;
		on: self startWithAll: self;
		yourself) run