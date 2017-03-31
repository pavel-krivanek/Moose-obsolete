*DeepTraverser
deep: aTraversalBlock do: anObjectActionBlock relationDo: aRelationBlock
	"traverses all objects starting with the receiver using aTraversalBlock, and
	for each triggers anObjectActionBlock, and
	for each relation between two traversed objects triggers aRelationBlock.
	
	For example:
	Number 
		deep: #subclasses 
		do: [:each | Transcript show: each; cr]
		relationDo: [ :from :to | Transcript show: from; show: ' <-- '; show: to; cr ]"

	(DeepTraverser new 
		onNodeTraverse: aTraversalBlock;
		onNodeAction: anObjectActionBlock;
		onEdgeAction: aRelationBlock;
		on: self startWithout: self;
		yourself) run