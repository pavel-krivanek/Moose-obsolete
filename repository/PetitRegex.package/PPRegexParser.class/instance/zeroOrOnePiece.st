grammar-operators
zeroOrOnePiece
	"?	0 or 1 times"

	^ $? asParser , quantifier map: [ :op :qu | qu setMax: 1 ]