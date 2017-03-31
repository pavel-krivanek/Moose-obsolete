positioning
skipSeparators
	"isXMLWhitespace matches the Squeak/Pharo isSeparator range, so
	it is used here instead of isXMLSeparator to give expected behavior
	when reading non-XML files"
	[self atEnd not
		and: [self peek isXMLWhitespace]]
		whileTrue: [self next]