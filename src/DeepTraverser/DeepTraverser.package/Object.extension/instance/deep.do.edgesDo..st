*DeepTraverser
deep: aTraversalBlock do: anObjectActionBlock edgesDo: aRelationBlock
	self deep: aTraversalBlock do: anObjectActionBlock relationDo: aRelationBlock