initialization
setMaxSize: anInteger
	maxSize := anInteger.
	mutex := XMLReentrantMutex new.
	self setCollection: self collectionClass new.