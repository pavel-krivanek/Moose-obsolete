notifying
addedAttribute: anAttribute
	self messageRecorder
		recordMessageReceiver: self
		selector: #addedAttribute:
		arguments: (Array with: anAttribute)