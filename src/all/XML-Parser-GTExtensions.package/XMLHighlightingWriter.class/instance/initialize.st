initialization
initialize
	super initialize.

	highlighter := XMLDocumentHighlighter new.
	self formatter: XMLHighlightingWriterFormatter new.