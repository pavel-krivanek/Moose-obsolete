formatting
formatBeforePI: aPIWriter
	aPIWriter isEmbeddedInTagWriter
		ifFalse: [self writeLineBreak]