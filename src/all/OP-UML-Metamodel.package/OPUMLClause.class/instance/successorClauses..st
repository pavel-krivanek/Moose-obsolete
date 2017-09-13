accessing
successorClauses: aClause
	"A set of Clauses that may not evaluate their tests unless the test for this Clause evaluates to false."
	self successorClauses
		removeAll;
		addAll: aClause