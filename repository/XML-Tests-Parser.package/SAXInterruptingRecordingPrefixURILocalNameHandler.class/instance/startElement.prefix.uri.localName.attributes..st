handling - content
startElement: aQualifiedName prefix: aPrefix uri: aURI localName: aLocalName attributes: aDictionary
	super
		startElement: aQualifiedName
		prefix: aPrefix
		uri: aURI
		localName: aLocalName
		attributes: aDictionary.

	self interruptOn = #startElement:prefix:uri:localName:attributes:
		ifTrue: [self interruptParsing].