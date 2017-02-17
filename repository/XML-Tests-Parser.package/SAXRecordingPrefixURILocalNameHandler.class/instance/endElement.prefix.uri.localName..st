handling - content
endElement: aQualifiedName prefix: aPrefix uri: aURI localName: aLocalName
	self messageRecorder
		recordMessageReceiver: self
		selector: #endElement:prefix:uri:localName:
		arguments:
			(OrderedCollection new
				addLast: aQualifiedName;
				addLast: aPrefix;
				addLast: aURI;
				addLast: aLocalName;
				yourself)