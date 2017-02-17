statements-elements
resultColumn
	"http://www.sqlite.org/syntaxdiagrams.html#result-column"

	^(	$* asPParser trim /
		((identifier , $. asPParser , identifier) trim , (as , identifier ) optional) /
		(identifier , $. asPParser , $* asPParser) trim /
		(expression , (as optional , identifier ) optional)
		 ).