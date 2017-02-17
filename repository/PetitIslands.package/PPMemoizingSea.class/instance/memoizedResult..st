memoization
memoizedResult: aPPContext
"	(memoizedPositions at: aPPContext position + 1) isNil ifTrue: [ ^ nil ]."
	^ dictionary at: (aPPContext remember) ifAbsent: nil .
	