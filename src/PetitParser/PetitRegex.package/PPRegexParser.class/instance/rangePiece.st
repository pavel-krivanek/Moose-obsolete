grammar-operators
rangePiece
	^ ${ asParser , rangePieceSpec , $} asParser , quantifier 
		map: [ :op :ra :cl :qu | qu setMin: ra first; setMax: ra last ]