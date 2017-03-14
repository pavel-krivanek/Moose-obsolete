printing
printOn: aStream
	super printOn: aStream.
	aStream
		nextPut: $(;
		nextPutAll: (self localName expandWithXMLNamespaceURI: self namespaceURI);
		nextPut: $).