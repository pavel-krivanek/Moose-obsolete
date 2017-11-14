initialization
setDriver: aDriver stream: aStream readLimit: anInteger
	super
		setDriver: aDriver
		stream: aStream
		readLimit: anInteger.

	isInAttlistDeclaration := false.
	isInEntityReference := false.