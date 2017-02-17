printing
writeXMLOn: aWriter
	aWriter
		writeName:
			(self name
				ifEmpty: ['xmlns']
				ifNotEmpty: ['xmlns:', self name])
		escapedContentValue: self uri