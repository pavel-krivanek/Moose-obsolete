printing
writeXMLOn: aWriter
	aWriter
		writeName: self name
		escapedContentValue: self value