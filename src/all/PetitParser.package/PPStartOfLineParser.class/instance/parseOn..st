parsing
parseOn: aPPContext
	(aPPContext isStartOfLine) ifTrue: [ 
		^ #startOfLine
	].
	^ PPFailure message: 'Start of line expected' context: aPPContext at: aPPContext position