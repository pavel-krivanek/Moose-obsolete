grammar
processing
	"[16]   	PI	   ::=   	'<?' PITarget (S (Char* - (Char* '?>' Char*)))? '?>'
	[17]   	PITarget	   ::=   	 Name - (('X' | 'x') ('M' | 'm') ('L' | 'l'))"

	^ '<?' asParser , nameToken , (whitespace , '?>' asParser negate star) optional flatten, '?>' asParser
		==> [ :nodes | Array with: nodes second with: nodes third ]