formatting
formatBeforeComment: aCommentWriter
	formatter
		ifNotNil: [formatter formatBeforeComment: aCommentWriter]