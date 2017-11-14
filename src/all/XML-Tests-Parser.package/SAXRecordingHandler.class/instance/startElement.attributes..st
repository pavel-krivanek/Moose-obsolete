handling - content
startElement: aQualifiedName attributes: anAttributeDictionary
	self
		recordMessageReceiver: self
		selector: #startElement:attributes:
		arguments:
			(OrderedCollection new
				addLast: aQualifiedName;
				addLast: anAttributeDictionary;
				yourself)