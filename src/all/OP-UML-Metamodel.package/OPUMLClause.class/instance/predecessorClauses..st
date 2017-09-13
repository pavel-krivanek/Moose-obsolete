accessing
predecessorClauses: aClause
	"A set of Clauses whose tests must all evaluate to false before this Clause can evaluate its test."
	self predecessorClauses
		removeAll;
		addAll: aClause