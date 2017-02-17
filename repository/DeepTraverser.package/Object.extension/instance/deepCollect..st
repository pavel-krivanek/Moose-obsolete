*DeepTraverser
deepCollect: aTraversalBlock
	"traverses all objects starting with the receiver using aTraversalBlock, and
	returns an OrderedCollection containing each traversed object.
	
	For example:
	Number deepCollect: #subclasses"
	
	^ self 
		deep: aTraversalBlock 
		collect: [ :each | each ]