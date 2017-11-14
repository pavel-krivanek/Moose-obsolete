handling - declaration
notationDeclaration: aName publicID: aPublicID systemID: aSystemID
	self
		recordMessageReceiver: self
		selector: #notationDeclaration:publicID:systemID:
		arguments:
			(OrderedCollection new
				addLast: aName;
				addLast: aPublicID;
				addLast: aSystemID;
				yourself)