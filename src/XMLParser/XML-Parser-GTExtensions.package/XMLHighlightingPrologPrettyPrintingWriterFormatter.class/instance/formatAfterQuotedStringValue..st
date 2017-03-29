formatting
formatAfterQuotedStringValue: aString
	highlighter endQuotedStringValueHighlightPosition: self endPosition + 1.

	super formatAfterQuotedStringValue: aString.