handling - declaration
generalEntityDeclaration: aName publicID: aPublicID systemID: aSystemID ndata: aNotationName
	self
		recordMessageReceiver: self
		selector: #generalEntityDeclaration:publicID:systemID:ndata:
		arguments:
			(OrderedCollection new
				addLast: aName;
				addLast: aPublicID;
				addLast: aSystemID;
				addLast: aNotationName;
				yourself)