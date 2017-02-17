private
traverse: anObject
	" this node has already been traversed, but the edge still needs to be handled in the following action-phase "
	(self isTraversed: anObject) ifTrue: [ 
		(edgesToAction at: current ifAbsentPut: [ OrderedCollection new ]) add: (current -> anObject).
		^ self ].
	
	" this node is already scheduled/postponed for traversal, we store the edge for later (traversal-phase + action-phase are still coming) "
	(self isToTraverse: anObject) ifTrue: [ 
		(edgesToAction at: anObject ifAbsentPut: [ OrderedCollection new ]) add: (current -> anObject).
		^ self ].
	
	" add this new node for the next traversal. adding must be at the end of the collection otherwise onPickNextAction/isActionAppliedOnCurrent will be corrupt "
	objectsToTraverse add: anObject.
	
	" schedule/postpone this new node for the following action-phase "
	(edgesToAction at: anObject ifAbsentPut: [ OrderedCollection new ]) add: (current -> anObject).
		