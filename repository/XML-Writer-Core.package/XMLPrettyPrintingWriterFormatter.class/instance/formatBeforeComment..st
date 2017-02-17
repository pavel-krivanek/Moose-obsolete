formatting
formatBeforeComment: aCommentWriter
	aCommentWriter isEmbeddedWithStringMarkup
		ifFalse: [self writeLineBreak]