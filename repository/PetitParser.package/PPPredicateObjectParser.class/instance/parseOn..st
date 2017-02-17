parsing
parseOn: aPPContext
	^ (aPPContext atEnd not and: [ predicate value: aPPContext uncheckedPeek ])
		ifFalse: [ PPFailure message: predicateMessage context: aPPContext ]
		ifTrue: [ aPPContext next ]