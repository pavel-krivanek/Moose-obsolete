statements
deleteStatement
	"http://www.sqlite.org/syntaxdiagrams.html#delete-stmt"
	^delete , from , (qualifiedTableName ==> #second) , (where , expression) optional 