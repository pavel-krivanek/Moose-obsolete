formatting
formatBeforeStartTag: aTagWriter
	formatter
		ifNotNil: [formatter formatBeforeStartTag: aTagWriter]