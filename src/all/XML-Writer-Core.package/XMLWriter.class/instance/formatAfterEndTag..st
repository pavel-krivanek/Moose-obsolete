formatting
formatAfterEndTag: aTagWriter
	formatter
		ifNotNil: [formatter formatAfterEndTag: aTagWriter]