grammar-operators
oneOrMorePiece
	"+	1 or more times"
	
	^ $+ asParser , quantifier map: [ :op :qu | qu setMin: 1 ]