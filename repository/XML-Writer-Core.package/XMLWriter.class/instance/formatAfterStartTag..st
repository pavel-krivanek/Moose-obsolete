formatting
formatAfterStartTag: aTagWriter
	formatter
		ifNotNil: [formatter formatAfterStartTag: aTagWriter]