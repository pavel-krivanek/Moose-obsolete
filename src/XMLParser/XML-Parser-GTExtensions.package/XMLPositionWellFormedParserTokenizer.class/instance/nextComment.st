tokenizing
nextComment
	driver handleStartCommentPosition: self currentPosition - 1.
	super nextComment.
	driver handleEndCommentPosition: self currentPosition.