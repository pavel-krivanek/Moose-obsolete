reflective operations
doesNotUnderstand: aMessage
	(XMLWriterFormatter whichCategoryIncludesSelector: aMessage selector) = #formatting
		ifTrue: [messageQueue addLast: aMessage]