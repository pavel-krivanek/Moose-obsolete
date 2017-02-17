formatting
formatAfterComment: aCommentWriter
	self writer hadActiveTagWriter
		ifFalse: [self writeLineBreak]