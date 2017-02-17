statements
insertStatement
	"http://www.sqlite.org/syntaxdiagrams.html#insert-stmt"

	^
	(replace / 
	(insert , 
		(or , (rollback / abort / replace / fail / ignore)) optional)) , 
	into , 
	(identifier , $. asPParser trim) optional , identifier , "databaseName . tableName "
	(
	(default , values) /
		(identifiersInRoundParentheses optional ,
	((values , $( asPParser trim , (expression separatedBy: $, asPParser trim) , $) asPParser trim) /
	selectStatement))
	)