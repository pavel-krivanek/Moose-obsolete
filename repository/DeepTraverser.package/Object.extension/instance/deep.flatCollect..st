*DeepTraverser
deep: aTraversalBlock flatCollect: aCollectBlock
	"traverses all objects starting with the receiver using aTraversalBlock, and
	for each triggers aCollectBlock and adds the objects from the collection
	to the returned OrderedCollection.
	
	For example:
	Number
		deep: #subclasses 
		flatCollect: #selectors"
		
	^ self 
		deep: aTraversalBlock 
		flatCollect: aCollectBlock 
		as: OrderedCollection