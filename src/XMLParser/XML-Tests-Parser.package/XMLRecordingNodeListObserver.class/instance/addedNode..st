notifying
addedNode: aNode
	self messageRecorder
		recordMessageReceiver: self
		selector: #addedNode:
		arguments: (Array with: aNode)