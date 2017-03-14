visiting
visitStringNode: aStringNode
	self validator validatePCData: aStringNode string.
	^ aStringNode.