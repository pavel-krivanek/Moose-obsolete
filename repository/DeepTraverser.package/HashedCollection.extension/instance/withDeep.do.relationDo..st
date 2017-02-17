*DeepTraverser
withDeep: aTraversalBlock do: anObjectActionBlock relationDo: aRelationBlock
	(DeepTraverser new 
		onNodeTraverse: aTraversalBlock;
		onNodeAction: anObjectActionBlock;
		onEdgeAction: aRelationBlock;
		on: self startWith: self keys anyOne;
		yourself) run