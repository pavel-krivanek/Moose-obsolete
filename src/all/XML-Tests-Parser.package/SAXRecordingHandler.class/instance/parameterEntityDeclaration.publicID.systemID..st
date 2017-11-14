handling - declaration
parameterEntityDeclaration: aName publicID: aPublicID systemID: aSystemID
	self
		recordMessageReceiver: self
		selector: #parameterEntityDeclaration:publicID:systemID:
		arguments:
			(OrderedCollection new
				addLast: aName;
				addLast: aPublicID;
				addLast: aSystemID;
				yourself)