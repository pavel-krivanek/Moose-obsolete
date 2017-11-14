initialization
setDriver: aDriver stream: aStream readLimit: anInteger
	super
		setDriver: aDriver
		stream: aStream
		readLimit: anInteger.

	isInLiteralValue := false.
	isIgnoringLiteralValueTerminator := false.