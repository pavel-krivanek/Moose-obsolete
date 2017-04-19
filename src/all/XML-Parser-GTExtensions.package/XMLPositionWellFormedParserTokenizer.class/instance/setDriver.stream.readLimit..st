initialization
setDriver: aDriver stream: aStream readLimit: aReadLimit
	super
		setDriver: aDriver
		stream: aStream
		readLimit: aReadLimit.

	isInAttlistDeclaration := false.
	isInEntityReference := false.