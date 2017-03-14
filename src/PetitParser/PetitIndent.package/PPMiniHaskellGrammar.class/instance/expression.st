grammar
expression
	^ (identifier, $= asParser trimBlanks, number trimBlanks) ==> [ :tokens | #expr ]