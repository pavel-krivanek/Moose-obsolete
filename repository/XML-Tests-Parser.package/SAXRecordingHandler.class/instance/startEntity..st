handling - lexical
startEntity: anEntityName
	self messageRecorder
		recordMessageReceiver: self
		selector: #startEntity:
		arguments:
			(OrderedCollection new
				addLast: anEntityName;
				yourself)