initialization
initializeParser: aParser
	super initializeParser: aParser.

	self nodeStack size > 0
		ifTrue: [self initializeInnerXMLParser: aParser].