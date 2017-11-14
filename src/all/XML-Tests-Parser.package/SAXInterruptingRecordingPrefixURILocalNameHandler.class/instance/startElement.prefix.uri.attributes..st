handling - content
startElement: aQualifiedName prefix: aPrefix uri: aURI attributes: anAttributeDictionary
	super
		startElement: aQualifiedName
		prefix: aPrefix
		uri: aURI
		attributes: anAttributeDictionary.

	self interruptOn = #startElement:prefix:uri:attributes:
		ifTrue: [self interruptParsing].