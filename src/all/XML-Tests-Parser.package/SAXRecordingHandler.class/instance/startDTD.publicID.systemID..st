handling - lexical
startDTD: aRootElementName publicID: aPublicID systemID: aSystemID
	self
		recordMessageReceiver: self
		selector: #startDTD:publicID:systemID:
		arguments:
			(OrderedCollection new
				addLast: aRootElementName;
				addLast: aPublicID;
				addLast: aSystemID;
				yourself)