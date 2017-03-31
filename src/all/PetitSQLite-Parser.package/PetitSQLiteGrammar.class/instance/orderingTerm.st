tokens
orderingTerm 
	"http://www.sqlite.org/syntaxdiagrams.html#ordering-term"
	^
	expression ,
	(collate , identifier) optional ,
	(asc / desc) optional 