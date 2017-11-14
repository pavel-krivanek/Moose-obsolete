handling - content
startElement: aQualifiedName attributes: anAttributeDictionary
	super
		startElement: aQualifiedName
		attributes: anAttributeDictionary.

	self interruptOn = #startElement:attributes:
		ifTrue: [self interruptParsing].