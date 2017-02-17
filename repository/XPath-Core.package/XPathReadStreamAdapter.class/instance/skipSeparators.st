positioning
skipSeparators
	"provides consistent cross-platform separator skipping with the XML set of
	separators"
	[stream atEnd not
		and: [stream peek isXMLSeparator]]
		whileTrue: [stream next]