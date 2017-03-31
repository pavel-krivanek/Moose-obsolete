handling - content
endElement: aQualifiedName prefix: aPrefix uri: aURI localName: aLocalName
	super
		endElement: aQualifiedName
		prefix: aPrefix
		uri: aURI
		localName: aLocalName.

	self interruptOn = #endElement:prefix:uri:localName:
		ifTrue: [self interruptParsing].