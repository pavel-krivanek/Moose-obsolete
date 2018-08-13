accessing - backend
author: aString

	self backend forBehavior setClassCommentAuthorFor: self to: aString.
	
	self announcer behaviorCommentModified: self parent.