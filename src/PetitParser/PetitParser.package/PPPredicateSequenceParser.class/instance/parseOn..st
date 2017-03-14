parsing
parseOn: aPPContext
	| memento result |
	memento := aPPContext remember.
	result := aPPContext stream next: size.
	(result size = size and: [ predicate value: result ])
		ifTrue: [ ^ result ].
	aPPContext restore: memento.
	^ PPFailure message: predicateMessage context: aPPContext