parsing
parseOn: aPPContext
	^ (aPPContext stream atEnd not and: [ literal = aPPContext stream uncheckedPeek ])
		ifFalse: [ PPFailure message: message context: aPPContext ]
		ifTrue: [ aPPContext next ]