handling - lexical
endEntity: anEntityName
	self messageRecorder
		recordMessageReceiver: self
		selector: #endEntity:
		arguments:
			(OrderedCollection new
				addLast: anEntityName;
				yourself)