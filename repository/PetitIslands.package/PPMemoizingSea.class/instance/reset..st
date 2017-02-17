initialization
reset: aPPContext
	super reset: aPPContext.
	dictionary := Dictionary new.
	"memoizedPositions := Array new: aPPContext size + 1."