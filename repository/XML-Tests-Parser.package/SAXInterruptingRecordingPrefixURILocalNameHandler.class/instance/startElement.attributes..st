handling - content
startElement: aQualifiedName attributes: aDictionary
	super
		startElement: aQualifiedName
		attributes: aDictionary.

	self interruptOn = #startElement:attributes:
		ifTrue: [self interruptParsing].