private - backend access
comment: anRGComment

	self backend forBehavior setCommentFor: self owner to: anRGComment.
	
	self owner announcer behaviorCommentModified: self.