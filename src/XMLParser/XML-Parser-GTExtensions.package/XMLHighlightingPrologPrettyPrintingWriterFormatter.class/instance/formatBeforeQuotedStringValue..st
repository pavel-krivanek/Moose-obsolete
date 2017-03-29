formatting
formatBeforeQuotedStringValue: aString
	super formatBeforeQuotedStringValue: aString.

	highlighter startQuotedStringValueHighlightPosition: self startPosition - 1.