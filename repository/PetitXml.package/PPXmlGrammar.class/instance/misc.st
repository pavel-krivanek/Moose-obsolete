grammar-character
misc
	"[27]   	Misc	   ::=   	 Comment | PI | S"

	^ (whitespace / comment / processing) star