*DeepTraverser
withDeep: aTraversalBlock relationDo: anObjectEdgeActionBlock

	(DeepTraverser new 
		onNodeTraverse: aTraversalBlock;
		onEdgeAction: anObjectEdgeActionBlock;
		on: self startWithAll: self;
		yourself) run