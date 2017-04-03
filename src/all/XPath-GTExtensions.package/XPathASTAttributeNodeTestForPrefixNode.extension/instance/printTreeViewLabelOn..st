*XPath-GTExtensions
printTreeViewLabelOn: aStream
	super printTreeViewLabelOn: aStream.
	aStream
		nextPut: $(;
		nextPutAll: self prefix;
		nextPut: $).