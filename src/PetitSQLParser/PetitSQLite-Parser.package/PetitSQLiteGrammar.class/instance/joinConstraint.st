statements-elements
joinConstraint 
	"http://www.sqlite.org/syntaxdiagrams.html#join-constraint"
	^(	(on , expression) /
		('USING' asPParser caseInsensitive trim , identifiersInRoundParentheses)) optional