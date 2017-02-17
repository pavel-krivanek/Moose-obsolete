*DeepTraverser
withDeep: aTraversalBlock do: anObjectActionBlock
	"traverses all objects starting with and including the receiver using aTraversalBlock, and
	for each triggers anObjectActionBlock.
	
	For example:
	Number
		withDeep: #subclasses 
		do: [:each | Transcript show: each; cr ]"

	(DeepTraverserWithoutEdges new 
		onNodeTraverse: aTraversalBlock;
		onNodeAction: anObjectActionBlock;
		on: self startWith: self;
		yourself) run