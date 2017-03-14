formatting
formatBeforePI: aPIWriter
	aPIWriter isEmbeddedWithStringMarkup
		ifFalse: [self writeLineBreak]