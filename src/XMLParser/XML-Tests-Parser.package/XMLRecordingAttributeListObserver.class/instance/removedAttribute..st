notifying
removedAttribute: anAttribute
	self messageRecorder
		recordMessageReceiver: self
		selector: #removedAttribute:
		arguments: (Array with: anAttribute)