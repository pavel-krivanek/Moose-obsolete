accessing
predecessorClauses
	"A set of Clauses whose tests must all evaluate to false before this Clause can evaluate its test."
	^ predecessorClauses ifNil: [ predecessorClauses := OPUMLManyToManyLinks on: self identity opposite: #successorClauses ]