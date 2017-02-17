as yet unclassified
parseOn: aPPContext
	aPPContext peek isAlphaNumeric ifFalse: [ 
		^ PPFailure message: 'Start of logical line expected' context: aPPContext 
	].

	aPPContext isStartOfLine ifTrue: [ ^ #startOfLogicalLine ].
	
	
	[ aPPContext position ~= 0 ] whileTrue: [  
		aPPContext back.
		(self isBlank: aPPContext peek) ifFalse: [ 
			^ PPFailure message: 'Start of logical line expected' context: aPPContext
		].
		aPPContext isStartOfLine ifTrue: [ ^ #startOfLogicalLine ].
	]
