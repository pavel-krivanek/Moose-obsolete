parsing
parseOn: aPPContext
	(aPPContext atEnd) ifFalse:
	[
		^ PPFailure message: 'end of input expected' context: aPPContext.
	].
	^ #'end-of-input'