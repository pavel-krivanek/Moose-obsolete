handling - lexical
startDTD: aRootElementName publicID: aPublicID systemID: aSystemID
	self messageRecorder
		recordMessageReceiver: self
		selector: #startDTD:publicID:systemID:
		arguments:
			(OrderedCollection new
				addLast: aRootElementName;
				addLast: aPublicID;
				addLast: aSystemID;
				yourself)