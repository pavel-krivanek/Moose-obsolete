parsing
parseOn: aPPContext 
	|  memoizedResult retval memento |
	self check: aPPContext.
	
	memoizedResult := self memoizedResult: aPPContext.
	memoizedResult ifNotNil: [ 
		aPPContext islandMemoHit.
		aPPContext restore: memoizedResult contextMemento.
		^ memoizedResult result 
	].
	memento := aPPContext remember.
	
	retval := super parseOn: aPPContext.

	(aPPContext waterPosition == aPPContext position) ifFalse: [ 
		aPPContext islandMemoized.
		self memoizeResult: retval onContext: aPPContext memento: memento.
	].

	^ retval.

