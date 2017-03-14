parsing
parseComments: anArray on: aPPContext
	| start comments |
	comments := anArray.
	[ [ aPPContext atEnd not and: [ SeparatorPredicate value: aPPContext uncheckedPeek ] ]
		whileTrue: [ aPPContext next ].
	 aPPContext atEnd not and: [ aPPContext uncheckedPeek = $" ] ] whileTrue: [
		aPPContext next.
		start := aPPContext position.
		aPPContext upTo: $".
		comments := comments copyWith: (start to: aPPContext position) ].
	^ comments