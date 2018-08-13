testing
comment: anRGComment

	self backend forBehavior setTraitCommentFor: self owner to: anRGComment.
	
	self owner announcer behaviorCommentModified: self owner.