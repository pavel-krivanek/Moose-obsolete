formatting
formatBeforeComment: aCommentWriter
	aCommentWriter isEmbeddedInTagWriter
		ifFalse: [self writeLineBreak]