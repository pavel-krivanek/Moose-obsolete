statements
createIndex
	"http://www.sqlite.org/syntaxdiagrams.html#create-index-stmt"
	^create , 
		unique optional ,  
	index ,  
		ifNotExists optional ,
	complexIdentifier,
	on ,
	complexIdentifier,
	indexedColumnsInRoundParentheses