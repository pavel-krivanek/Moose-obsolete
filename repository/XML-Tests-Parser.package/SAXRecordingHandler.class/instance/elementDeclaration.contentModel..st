handling - declaration
elementDeclaration: anElementName contentModel: aContentModel
	self messageRecorder
		recordMessageReceiver: self
		selector: #elementDeclaration:contentModel:
		arguments:
			(OrderedCollection new
				addLast: anElementName;
				addLast: aContentModel;
				yourself)