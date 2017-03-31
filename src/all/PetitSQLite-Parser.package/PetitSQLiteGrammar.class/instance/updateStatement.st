statements
updateStatement
	"http://www.sqlite.org/syntaxdiagrams.html#update-stmt"
	^(update , 
		('or' asPParser caseInsensitive trim , (rollback / abort / replace / fail / ignore)) optional ,
	qualifiedTableName ,
	set , ((identifier , '=' asPParser caseInsensitive trim , expression) separatedBy: $, asPParser trim) ,
		(where , expression) optional)