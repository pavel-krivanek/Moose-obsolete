grammar-comments
notStarNotSlash  

	^ lineTerminator / ((PP2PredicateObjectNode anyOf: '*/') not , inputCharacter )