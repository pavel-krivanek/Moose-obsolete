memoization
memoizeResult: result onContext: aPPContext memento: ctxMemento
	| memento |
	memento := PPMemento new.
	memento contextMemento: aPPContext remember.
	memento result: result.
	
	dictionary at: ctxMemento put: memento.
	
"	memoizedPositions at: (ctxMemento position + 1) put: true."