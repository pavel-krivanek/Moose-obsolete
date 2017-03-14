grammar-literals-string
stringCharacter
		
	^ ( ( PP2PredicateObjectNode anyOf: '"\') not , inputCharacter ==> #second ) /
	   escapeSequence 