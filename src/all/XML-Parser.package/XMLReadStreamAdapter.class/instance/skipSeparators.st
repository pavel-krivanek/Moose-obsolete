positioning
skipSeparators
	"we use #isXMLWhitespace instead of the narrower, XML-specific
	#isXMLSeparator, because this class can be used for non-XML
	streams too"
	[self atEnd not
		and: [self peek isXMLWhitespace]]
		whileTrue: [self next]