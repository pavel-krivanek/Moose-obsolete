tokens
compoundOperator 
	"http://www.sqlite.org/syntaxdiagrams.html#compound-operator"

	^(	('UNION' asPParser caseInsensitive trim , all optional ) /
		'INTERSECTION' asPParser caseInsensitive trim /
		'EXCEPT' asPParser caseInsensitive trim )