formatting
formatBeforeCharacterEscape: aCharacterEscape
	super formatBeforeCharacterEscape: aCharacterEscape.

	highlighter startEntityReferenceHighlightPosition: self startPosition.