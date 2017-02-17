formatting
formatBeforeCData: aCDataWriter
	super formatBeforeCData: aCDataWriter.

	highlighter startCDataHighlightPosition: self startPosition.