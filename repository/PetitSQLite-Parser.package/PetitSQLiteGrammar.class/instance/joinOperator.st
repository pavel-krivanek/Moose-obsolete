statements-elements
joinOperator
	"http://www.sqlite.org/syntaxdiagrams.html#join-op"
	^$, asPParser trim /
		('NATURAL' asPParser caseInsensitive trim optional ,
		(('LEFT' asPParser caseInsensitive trim , 'OUTER' asPParser caseInsensitive trim optional ) /
		'INNER' asPParser caseInsensitive trim /
		'CROSS' asPParser caseInsensitive trim) optional ,
	'JOIN' asPParser caseInsensitive trim).