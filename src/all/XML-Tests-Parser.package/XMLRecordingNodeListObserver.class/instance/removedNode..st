notifying
removedNode: aNode
	self messageRecorder
		recordMessageReceiver: self
		selector: #removedNode:
		arguments: (Array with: aNode)