handling - content
endElement: aQualifiedName
	self
		recordMessageReceiver: self
		selector: #endElement:
		arguments:
			(OrderedCollection new
				addLast: aQualifiedName;
				yourself)