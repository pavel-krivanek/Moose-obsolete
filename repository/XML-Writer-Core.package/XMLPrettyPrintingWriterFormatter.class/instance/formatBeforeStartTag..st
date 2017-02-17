formatting
formatBeforeStartTag: aTagWriter
	aTagWriter isEmbeddedWithStringMarkup
		ifFalse: [self writeLineBreak]