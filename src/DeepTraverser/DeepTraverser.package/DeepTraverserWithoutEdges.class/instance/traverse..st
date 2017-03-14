private
traverse: anObject
	" this node has already been traversed "
	(self isTraversed: anObject) ifTrue: [ ^ self ].
	
	" this node is already scheduled/postponed for traversal "
	(self isToTraverse: anObject) ifTrue: [ ^ self ].
	
	" add this new node for the next traversal. adding must be at the end of the collection otherwise onPickNextAction/isActionAppliedOnCurrent will be corrupt "
	objectsToTraverse add: anObject.
	