formatting
formatAfterQuotedStringValue: aString
	highlighter endQuotedStringHighlightPosition: self endPosition + 1.

	super formatAfterQuotedStringValue: aString.