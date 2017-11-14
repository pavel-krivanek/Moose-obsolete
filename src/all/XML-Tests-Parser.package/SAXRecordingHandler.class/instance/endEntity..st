handling - lexical
endEntity: anEntityName
	self
		recordMessageReceiver: self
		selector: #endEntity:
		arguments:
			(OrderedCollection new
				addLast: anEntityName;
				yourself)