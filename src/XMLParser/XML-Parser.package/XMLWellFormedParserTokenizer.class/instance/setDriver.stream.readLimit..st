initialization
setDriver: aDriver stream: aStream readLimit: aReadLimit
	super
		setDriver: aDriver
		stream: aStream
		readLimit: aReadLimit.

	isInLiteralValue := false.
	isIgnoringLiteralValueTerminator := false.