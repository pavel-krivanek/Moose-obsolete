private
traverse: anObject
	" this node has already been traversed "
	(self isTraversed: anObject) ifTrue: [ ^ self ].
	
	" this node is already scheduled/postponed for traversal "
	(self isToTraverse: anObject) ifTrue: [ ^ self ].

	" add this new node for the next traversal "
	objectsToTraverse add: anObject.