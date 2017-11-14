handling - content
startElement: aQualifiedName prefix: aPrefix uri: aURI localName: aLocalName attributes: anAttributeDictionary
	super
		startElement: aQualifiedName
		prefix: aPrefix
		uri: aURI
		localName: aLocalName
		attributes: anAttributeDictionary.

	self interruptOn = #startElement:prefix:uri:localName:attributes:
		ifTrue: [self interruptParsing].