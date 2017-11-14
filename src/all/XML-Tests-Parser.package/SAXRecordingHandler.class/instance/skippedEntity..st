handling - content
skippedEntity: anEntityName
	self
		recordMessageReceiver: self
		selector: #skippedEntity:
		arguments:
			(OrderedCollection new
				addLast: anEntityName;
				yourself)