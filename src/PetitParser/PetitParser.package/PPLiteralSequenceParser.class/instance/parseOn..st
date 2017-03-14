parsing
parseOn: aPPContext
	| memento result |
	memento := aPPContext remember.
	result := aPPContext next: size.
	literal = result ifTrue: [ ^ result ].
	aPPContext restore: memento.
	^ PPFailure message: message context: aPPContext