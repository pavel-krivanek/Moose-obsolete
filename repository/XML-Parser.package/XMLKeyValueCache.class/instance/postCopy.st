copying
postCopy
	super postCopy.

	mutex := XMLReentrantMutex new.
	self setCollection: self collection copy.