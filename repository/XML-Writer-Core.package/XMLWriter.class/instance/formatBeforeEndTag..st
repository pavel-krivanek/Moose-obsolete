formatting
formatBeforeEndTag: aTagWriter
	formatter
		ifNotNil: [formatter formatBeforeEndTag: aTagWriter]