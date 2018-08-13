accessing - backend
time: aDateAndTime

	self backend forBehavior setClassCommentTimeFor: self to: aDateAndTime.
	
	self announcer behaviorCommentModified: self parent.