streaming
next
	previous := current.
	self doPickNextNode.
	objectsTraversed add: current.
	self doNodeTraverse.
	self doNodeAction.
	^ current