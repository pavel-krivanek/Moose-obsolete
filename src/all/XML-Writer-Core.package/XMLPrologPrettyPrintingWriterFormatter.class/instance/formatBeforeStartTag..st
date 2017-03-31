formatting
formatBeforeStartTag: aTagWriter
	aTagWriter isEmbeddedInTagWriter
		ifFalse: [self writeLineBreak]