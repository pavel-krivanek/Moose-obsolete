accessing
successorClauses
	"A set of Clauses that may not evaluate their tests unless the test for this Clause evaluates to false."
	^ successorClauses ifNil: [ successorClauses := OPUMLManyToManyLinks on: self identity opposite: #predecessorClauses ]