handling - content
startElement: aQualifiedName prefix: aPrefix uri: aURI attributes: aDictionary
	super
		startElement: aQualifiedName
		prefix: aPrefix
		uri: aURI
		attributes: aDictionary.

	self interruptOn = #startElement:prefix:uri:attributes:
		ifTrue: [self interruptParsing].