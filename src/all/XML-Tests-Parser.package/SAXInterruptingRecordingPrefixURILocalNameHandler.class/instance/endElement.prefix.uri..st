handling - content
endElement: aQualifiedName prefix: aPrefix uri: aURI
	super
		endElement: aQualifiedName
		prefix: aPrefix
		uri: aURI.

	self interruptOn = #endElement:prefix:uri:
		ifTrue: [self interruptParsing].