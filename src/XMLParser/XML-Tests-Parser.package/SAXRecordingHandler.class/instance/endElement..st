handling - content
endElement: aQualifiedName
	self messageRecorder
		recordMessageReceiver: self
		selector: #endElement:
		arguments:
			(OrderedCollection new
				addLast: aQualifiedName;
				yourself)