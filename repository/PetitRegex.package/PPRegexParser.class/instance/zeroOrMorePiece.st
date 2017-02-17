grammar-operators
zeroOrMorePiece
	"*	0 or more times"
		
	^ $* asParser , quantifier map: [ :op :qu | qu ]