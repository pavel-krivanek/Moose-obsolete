handling - declaration
notationDeclaration: aName publicID: aPublicID systemID: aSystemID
	self messageRecorder
		recordMessageReceiver: self
		selector: #notationDeclaration:publicID:systemID:
		arguments:
			(OrderedCollection new
				addLast: aName;
				addLast: aPublicID;
				addLast: aSystemID;
				yourself)