*DeepTraverser
deep: aTraversalBlock collect: aCollectBlock
	"traverses all objects starting with the receiver using aTraversalBlock, and
	for each triggers aCollectBlock and adds it to the returned OrderedCollection.
	
	For example:
	Number
		deep: #subclasses 
		collect: #name"

	^ self 
		deep: aTraversalBlock 
		collect: aCollectBlock 
		as: OrderedCollection