handling - lexical
startEntity: anEntityName
	self
		recordMessageReceiver: self
		selector: #startEntity:
		arguments:
			(OrderedCollection new
				addLast: anEntityName;
				yourself)