initialization
on: aStream
	super on: aStream.

	highlighter := XMLDocumentHighlighter new.
	self formatter: XMLHighlightingWriterFormatter new.