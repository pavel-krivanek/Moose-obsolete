handling - content
skippedEntity: anEntityName
	self messageRecorder
		recordMessageReceiver: self
		selector: #skippedEntity:
		arguments:
			(OrderedCollection new
				addLast: anEntityName;
				yourself)