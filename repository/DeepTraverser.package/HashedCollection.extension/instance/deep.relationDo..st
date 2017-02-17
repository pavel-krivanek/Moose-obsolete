*DeepTraverser
deep: aTraversalBlock relationDo: anObjectEdgeActionBlock
	" wie cannot traverse this graph without all items of self - so we include them "
	(DeepTraverser new 
		onNodeTraverse: aTraversalBlock;
		onEdgeAction: anObjectEdgeActionBlock;
		on: self startWithout: self keys anyOne;
		yourself) run