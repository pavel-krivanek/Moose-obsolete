*DeepTraverser
withDeep: aTraversalBlock relationDo: anObjectEdgeActionBlock

	(DeepTraverser new 
		onNodeTraverse: aTraversalBlock;
		onEdgeAction: anObjectEdgeActionBlock;
		on: self startWith: self;
		yourself) run