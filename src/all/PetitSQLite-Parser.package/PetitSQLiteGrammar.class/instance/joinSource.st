statements-elements
joinSource
	"http://www.sqlite.org/syntaxdiagrams.html#join-source"
	^singleSource ,
	(joinOperator , singleSource , joinConstraint) star 