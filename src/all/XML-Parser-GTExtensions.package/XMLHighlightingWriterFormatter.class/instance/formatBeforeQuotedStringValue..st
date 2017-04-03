formatting
formatBeforeQuotedStringValue: aString
	super formatBeforeQuotedStringValue: aString.

	highlighter startQuotedStringHighlightPosition: self startPosition - 1.