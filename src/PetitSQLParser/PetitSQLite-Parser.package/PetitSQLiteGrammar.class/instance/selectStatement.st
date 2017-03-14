statements
selectStatement
	"http://www.sqlite.org/syntaxdiagrams.html#select-stmt"
	^	(selectCore separatedBy: compoundOperator) ,
		('ORDER BY' asPParser caseInsensitive trim , (orderingTerm separatedBy: $, asPParser trim)) optional ,
		('LIMIT' asPParser caseInsensitive trim , expression , ( ('OFFSET' asPParser caseInsensitive trim / $, asPParser trim) , expression ) optional ) optional