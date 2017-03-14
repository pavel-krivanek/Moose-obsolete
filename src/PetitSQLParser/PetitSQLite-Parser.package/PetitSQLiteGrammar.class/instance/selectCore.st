statements-elements
selectCore
	"http://www.sqlite.org/syntaxdiagrams.html#select-core"
	^ select , 
		(distinct / all) optional ,
	(resultColumn separatedBy: $, asPParser trim) ,
	(from , joinSource) optional ,
	(where , expression ) optional ,
	(groupBy , (orderingTerm separatedBy: $, asPParser trim), ('HAVING' asPParser caseInsensitive trim , expression) optional ) optional 