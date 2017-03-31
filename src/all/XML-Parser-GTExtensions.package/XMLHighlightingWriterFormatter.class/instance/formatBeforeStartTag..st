formatting
formatBeforeStartTag: aTagWriter
	super formatBeforeStartTag: aTagWriter.

	highlighter startTagHighlightPosition: self startPosition.