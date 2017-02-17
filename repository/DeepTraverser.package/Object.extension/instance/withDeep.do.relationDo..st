*DeepTraverser
withDeep: aTraversalBlock do: anObjectActionBlock relationDo: aRelationBlock
	"traverses all objects starting with and including the receiver using aTraversalBlock, and
	for each triggers anObjectActionBlock, and
	for each relation between two traversed objects triggers aRelationBlock.
	
	For example:
	Number 
		withDeep: #subclasses 
		do: [:each | Transcript show: each; cr ]
		relationDo: [ :from :to | Transcript show: from; show: ' <-- '; show: to; cr ]"

	(DeepTraverser new 
		onNodeTraverse: aTraversalBlock;
		onNodeAction: anObjectActionBlock;
		onEdgeAction: aRelationBlock;
		on: self startWith: self;
		yourself) run