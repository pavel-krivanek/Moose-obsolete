*DeepTraverser
withDeep: aTraversalBlock do: anObjectActionBlock edgesDo: aRelationBlock
	self withDeep: aTraversalBlock do: anObjectActionBlock relationDo: aRelationBlock
