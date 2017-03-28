formatting
formatBeforeEndTag: aTagWriter
	super formatBeforeEndTag: aTagWriter.

	highlighter startTagHighlightPosition: self startPosition.