parsing
matchesLimitOn: aPPContext
	| element position |
	position := aPPContext remember.
	element := limit parseOn: aPPContext.
	aPPContext restore: position.
	^ element isPetitFailure not