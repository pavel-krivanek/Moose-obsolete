*DeepTraverser
deep: aTraversalBlock relationDo: anObjectEdgeActionBlock

	(DeepTraverser new 
		onNodeTraverse: aTraversalBlock;
		onEdgeAction: anObjectEdgeActionBlock;
		on: self startWithout: self;
		yourself) run