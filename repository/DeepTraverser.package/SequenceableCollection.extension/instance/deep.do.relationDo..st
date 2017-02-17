*DeepTraverser
deep: aTraversalBlock do: anObjectActionBlock relationDo: aRelationBlock
	" wie cannot traverse this graph without all items of self - so we include them "
	(DeepTraverser new 
		onNodeTraverse: aTraversalBlock;
		onNodeAction: anObjectActionBlock;
		onEdgeAction: aRelationBlock;
		on: self startWithoutAll: self;
		yourself) run