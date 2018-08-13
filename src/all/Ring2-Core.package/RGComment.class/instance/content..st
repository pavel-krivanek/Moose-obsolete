accessing - backend
content: aString

	self backend forBehavior setClassCommentContentFor: self to: aString.
	
	self announcer behaviorCommentModified: self parent.