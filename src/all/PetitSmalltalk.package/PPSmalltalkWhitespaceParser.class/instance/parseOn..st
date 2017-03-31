parsing
parseOn: aPPContext
	[ [aPPContext atEnd not and: [ aPPContext uncheckedPeek isSeparator ] ]
		whileTrue: [ aPPContext next ].
		
	 aPPContext atEnd not and: [ aPPContext uncheckedPeek = $" ] ] whileTrue: [
		aPPContext next.
		aPPContext upTo: $".
	].