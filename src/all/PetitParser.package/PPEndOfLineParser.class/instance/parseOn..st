parsing
parseOn: aPPContext
	(aPPContext isEndOfLine) ifTrue: [ 
		^ #endOfLine
	].
	^ PPFailure message: 'End of line expected' context: aPPContext at: aPPContext position