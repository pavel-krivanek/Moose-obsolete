clause
foreignKeyClause
	"http://www.sqlite.org/syntaxdiagrams.html#foreign-key-clause"

	^references , complexIdentifier , indexedColumnsInRoundParentheses optional ,
	(foreignKeyClauseOnPart / ( match , identifier )) star , foreignKeyClauseNotPart optional.