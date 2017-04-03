*XPath-GTExtensions
printTreeViewLabelOn: aStream
	super printTreeViewLabelOn: aStream.
	aStream
		nextPut: $(;
		nextPutAll: self namespaceURI;
		nextPut: $).