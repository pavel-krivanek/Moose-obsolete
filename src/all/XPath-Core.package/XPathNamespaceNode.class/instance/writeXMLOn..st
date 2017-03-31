printing
writeXMLOn: aWriter
	aWriter
		writeName:
			(self name isEmpty
				ifTrue: ['xmlns']
				ifFalse: ['xmlns:', self name])
		escapedContentValue: self uri