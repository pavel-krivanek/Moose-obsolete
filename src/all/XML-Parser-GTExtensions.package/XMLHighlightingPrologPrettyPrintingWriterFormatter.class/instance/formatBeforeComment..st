formatting
formatBeforeComment: aCommentWriter
	super formatBeforeComment: aCommentWriter.

	highlighter startCommentHighlightPosition: self startPosition.