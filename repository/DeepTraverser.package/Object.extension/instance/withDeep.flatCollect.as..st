*DeepTraverser
withDeep: aTraversalBlock flatCollect: aCollectBlock as: aCollectionClass
	"traverses all objects starting with and including the receiver using aTraversalBlock, and
	for each triggers aCollectBlock and adds the objects from the collection
	to the returned instance of aCollectionClass.
	
	For example:
	Number
		deep: #subclasses 
		flatCollect: #selectors
		as: Set"
	
	| result |
	result := aCollectionClass new.
	self 
		withDeep: aTraversalBlock 
		do: [ :each | result addAll: (aCollectBlock value: each) ].
	^ result