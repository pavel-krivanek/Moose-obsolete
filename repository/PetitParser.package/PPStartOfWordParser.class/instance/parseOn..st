as yet unclassified
parseOn: aPPContext
	aPPContext atEnd ifTrue: [  
		^ PPFailure message: 'Start of word expected' context: aPPContext at: aPPContext position 
	].

	(aPPContext position == 0) ifTrue: [ 
		(aPPContext peek isAlphaNumeric) ifTrue: [ 
			^ #startOfWord
		] ifFalse: [ 
			^ PPFailure message: 'Start of word expected' context: aPPContext at: aPPContext position 
	 	]
	].

	aPPContext back.
	aPPContext peek isAlphaNumeric ifTrue: [
		^ PPFailure message: 'Start of word expected' context: aPPContext at: aPPContext position 
	].
	aPPContext next.
	
	^ aPPContext peek isAlphaNumeric ifTrue: [ #startOfWord ] ifFalse: [ 
		PPFailure message: 'Start of word expected' context: aPPContext at: aPPContext position 
	]
	
