handling - content
startElement: aQualifiedName attributes: aDictionary
	self messageRecorder
		recordMessageReceiver: self
		selector: #startElement:attributes:
		arguments:
			(OrderedCollection new
				addLast: aQualifiedName;
				addLast: aDictionary;
				yourself)