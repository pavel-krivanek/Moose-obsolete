*XPath-GTExtensions
printTreeViewLabelOn: aStream
	super printTreeViewLabelOn: aStream.
	aStream
		nextPut: $(;
		nextPutAll: (self localName expandWithXMLNamespaceURI: self namespaceURI);
		nextPut: $).