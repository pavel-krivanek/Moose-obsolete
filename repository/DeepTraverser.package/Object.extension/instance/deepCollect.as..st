*DeepTraverser
deepCollect: aBlock as: aCollectionClass
	"traverses all objects starting with the receiver using aTraversalBlock, and
	returns a aCollectionClass containing each traversed object.
	
	For example:
	Number deepCollect: #subclasses as: Set"
	
	^ self 
		deep: aBlock 
		collect: [ :each | each ]
		as: aCollectionClass