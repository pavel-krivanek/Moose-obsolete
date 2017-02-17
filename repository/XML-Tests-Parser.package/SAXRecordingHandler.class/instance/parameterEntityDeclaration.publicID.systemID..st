handling - declaration
parameterEntityDeclaration: aName publicID: aPublicID systemID: aSystemID
	self messageRecorder
		recordMessageReceiver: self
		selector: #parameterEntityDeclaration:publicID:systemID:
		arguments:
			(OrderedCollection new
				addLast: aName;
				addLast: aPublicID;
				addLast: aSystemID;
				yourself)