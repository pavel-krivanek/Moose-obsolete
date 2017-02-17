instance creation
on: aStream
	^ (super on: aStream) formatter: XMLHighlightingPrettyPrintingWriterFormatter new