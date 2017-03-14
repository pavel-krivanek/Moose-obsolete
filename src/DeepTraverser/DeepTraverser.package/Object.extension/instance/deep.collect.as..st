*DeepTraverser
deep: aTraversalBlock collect: aCollectBlock as: aCollectionClass
	"traverses all objects starting with the receiver using aTraversalBlock, and
	for each triggers aCollectBlock and adds it to the returned collection
	that is of type aCollectionClass.
	
	For example:
	Number
		deep: #subclasses 
		collect: #name
		as: Set"

	| result |
	result := aCollectionClass new.
	self 
		deep: aTraversalBlock 
		do: [ :each | result add: (aCollectBlock value: each) ].
	^ result