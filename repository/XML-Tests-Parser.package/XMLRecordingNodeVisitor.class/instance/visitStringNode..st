visiting
visitStringNode: aStringNode
	self messageRecorder
		recordMessageReceiver: self
		selector: #visitStringNode:
		argument: aStringNode.

	^ super visitStringNode: aStringNode.