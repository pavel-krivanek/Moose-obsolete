statements-elements
columnDef
	"http://www.sqlite.org/syntaxdiagrams.html#column-def"
	"constraint negate has been putted to mismatch the starting of a tableConstraint definition"
	"petit hint: negate consume one character instead not doesn't consume the input e.g tableConstraint negate -> $c 'onfig_key' instead with tableConstraint not -> nil 'config_key' "
	^tableConstraint not , identifier , typeName optional , columnConstraint star.